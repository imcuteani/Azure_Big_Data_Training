# In PowerShell, a transaction is a set of one or more commands that are managed as a logical unit. 
#A transaction can be completed ("committed"), which changes data affected by the transaction. Or, a 
#transaction can be completely undone ("rolled back") 
#so that the affected data is not changed by the transaction.

# Get list of transactions 

get-command *transaction

# Get detailed info about the transactions 

get-help use-transaction -detailed

#transaction enabled elements 

get-psprovider | where {$_.Capabilities -like "*transactions*"}

# use-transaction parameter

get-help * -parameter UseTransaction

# start-transaction 

start-transaction

# roll back transaction 

undo-transaction