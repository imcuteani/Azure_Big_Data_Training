# multi-threading in python 

# process - its heavyweight instance of a computer program which is being executed. Any process has three basic components. 
# a) An executable program
# b) an associated data required by the program (variables, buffers etc)
# c) the execution context of the program (State of process)

# Thread is the entity within the process which can be scheduled for execution. Also, it's smallest unit of processing which can be performed on any OS. 
# Thread is a sequence of such instructions within a program which can be executed independetly of the code. 
# A thread contains all of this info within a thread control block 


import threading

def print_cube(num): 
    print("Cube block: {}" .format(num * num * num))


def print_square(num):
    print("Square of numbers: {}" .format(num * num))

if __name__ =="__main__":
    #creating thread
    t1 = threading.Thread(target=print_square, args=(10,))
    t2 = threading.Thread(target=print_cube, args=(10,))

    #starting thread 1
    t1.start()
    #starting thread 2
    t2.start() 

    # wait until thread 1 is finished execution 

    t1.join()

    # wait until thread 2 is finished execution 
    
    t2.join()

    # both the threads are finished with execution 

    print("done")
     
     




