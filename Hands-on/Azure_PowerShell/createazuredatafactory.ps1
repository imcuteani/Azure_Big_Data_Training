$resourceGroupName = "cgazadfdemo";
$ResGrp = New-AzResourceGroup $resourceGroupName -location 'Central India'

#Create Data Factory Name
$dataFactoryName = "ADFDemoStartFactory";

#Create ADF 
$DataFactory = Set-AzDataFactoryV2 -ResourceGroupName $ResGrp.ResourceGroupName `
    -Location $ResGrp.Location -Name $dataFactoryName


    # Create ADF Activity 
Set-Location '<your_adf_linkedservice_json_folder>'

# Create Linked Service 
Set-AzDataFactoryV2LinkedService -DataFactoryName $DataFactory.DataFactoryName `
    -ResourceGroupName $resourceGroupName -Name "AzureStorageLinkedService" `
    -DefinitionFile ".\AzureStorageLinkedService.json"

 # Create ADF dataset 
 Set-AzDataFactoryV2Dataset -DataFactoryName $DataFactory.DataFactoryName `
    -ResourceGroupName $resourceGroupName -Name "InputDataset" `
    -DefinitionFile ".\inputDataset.json"

    Set-AzDataFactoryV2Dataset -DataFactoryName $DataFactory.DataFactoryName `
    -ResourceGroupName $resourceGroupName -Name "OutputDataset" `
    -DefinitionFile ".\outputdataset.json"

# Create Azure Pipeline 

$DFPipeLine = Set-AzDataFactoryV2Pipeline `
    -DataFactoryName $DataFactory.DataFactoryName `
    -ResourceGroupName $ResGrp.ResourceGroupName `
    -Name "Adfv2QuickStartPipeline" `
    -DefinitionFile ".\pipeline.json"

    # Create the pipeline Run 

    $RunId = Invoke-AzDataFactoryV2Pipeline `
  -DataFactoryName $DataFactory.DataFactoryName `
  -ResourceGroupName $ResGrp.ResourceGroupName `
  -PipelineName $DFPipeLine.Name

  # Monitor the pipeline Run 

  while ($True) {
    $Run = Get-AzDataFactoryV2PipelineRun `
        -ResourceGroupName $ResGrp.ResourceGroupName `
        -DataFactoryName $DataFactory.DataFactoryName `
        -PipelineRunId $RunId

    if ($Run) {
        if ( ($Run.Status -ne "InProgress") -and ($Run.Status -ne "Queued") ) {
            Write-Output ("Pipeline run finished. The status is: " +  $Run.Status)
            $Run
            break
        }
        Write-Output ("Pipeline is running...status: " + $Run.Status)
    }

    Start-Sleep -Seconds 10
}

# Check the output

Write-Output "Activity run details:"
$Result = Get-AzDataFactoryV2ActivityRun -DataFactoryName $DataFactory.DataFactoryName -ResourceGroupName $ResGrp.ResourceGroupName -PipelineRunId $RunId -RunStartedAfter (Get-Date).AddMinutes(-30) -RunStartedBefore (Get-Date).AddMinutes(30)
$Result

Write-Output "Activity 'Output' section:"
$Result.Output -join "`r`n"

Write-Output "Activity 'Error' section:"
$Result.Error -join "`r`n"