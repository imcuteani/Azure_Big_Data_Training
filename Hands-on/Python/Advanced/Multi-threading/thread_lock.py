# thread lock to overcome mutual exclusion/race condition in python multithreading
import threading

#global variable 
x = 0 

def increment_val():
    global x
    x += 1

def thread_task(lock):
    for _ in range(100000):      # calls thread_task upto 1M times
        lock.acquire()
        increment_val()
        lock.release()
        

def main_task(): 
    global x
    x = 0 
# Creating a lock on the thread to overcome the mutual exclusive scenario
    lock = threading.Lock()

    # Creating threads 
    t1 = threading.Thread(target=thread_task, args=(lock,))
    t2 = threading.Thread(target=thread_task, args=(lock,))

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