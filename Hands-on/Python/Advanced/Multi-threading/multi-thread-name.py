# Multi-threading in py
# check the process id and print the process details that the threads are part of 

import threading
import os 

def first_task(): 
    print("Task 1 is assigned to thread: {}" .format(threading.current_thread().name))
    print("ID of process running task 1: {}" .format(os.getpid()))

def second_task(): 
    print("Task 2 assigned to the thread: {}" .format(threading.current_thread().name))
    print("ID of process running task 2: {}" .format(os.getpid()))


if __name__=="__main__":
    # print the ID of current process
    print("ID of the process running main program: {}" .format(os.getpid()))

    # print the main thread
    print("Main thread name: {}" .format(threading.current_thread().name))

    # Creating threads
    t1 = threading.Thread(target=first_task, name='t1')
    t2 = threading.Thread(target=second_task, name='t2') 

    # starting the threads
    t1.start()
    t2.start()

    # wait until both of the threads are finished execution
    # 
    t1.join()
    t2.join()        