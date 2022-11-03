# multi-processing is implementing using the multiprocessing module. 
# This multi-processing module can be used to spawn over multiple os processes. 
# it is the mechanism to spawning over new processes using an API similar to threading 
# the multi-processing module offers both local and remote concurrency effectively side-stepping the global-interpreter locks by using subprocesses instead of threads

# due to this, the multi-processing module allows the developers to fully leverage multiple processors of a given system. 
# it runs on both linux and windows

# multi-processing units share the main memory and peripherals to process the programs. 
# multiprocessing app breaks into smaller parts and runs independently. 
# Each process is allocated to the processor by the OS 
# 

from multiprocessing import Process
def disp():
    print('Hello! This is multiprocessing app in py')
    if __name__=="__main__":
        p = Process(target=disp)
        p.start()                       # start the process
        p.join()                        # completed the process 