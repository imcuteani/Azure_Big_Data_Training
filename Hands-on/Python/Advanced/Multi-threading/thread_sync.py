# thread synchronization in python 

import threading

#global variable 
x = 0 

def increment_val():
    global x
    x += 1

def thread_task():
    for _ in range(100000):      # calls thread_task upto 1M times
        increment_val()

def main_task(): 
    global x
    x = 0 

    # Creating threads 
    t1 = threading.Thread(target=thread_task)
    t2 = threading.Thread(target=thread_task)

    # start the threads
    t1.start()
    t2.start()

    # wait for the threads to finish execution 
    t1.join()
    t2.join()

if __name__ == "__main__": 
    for i in range(10):
        main_task()
        print("Iteration for {0}: x = {1}" .format(i,x))   