#### Vishnu Chaitanya Mandalapu
#### 04/08/2016
#### M20225540

####1. Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation.
Answer: Threads1 does not use a sharedCounter, which means that, the 2 threads are created and executed independently. It is more like parallel programming where 2 different processes(Threads in our case) get their own space to work with the processor. Where as in Threads2 the concept of sharedCounter is implemented to asyncronusly run both the threads. This will link the threads, but causes race conditions which requires the implementation of locks to avoid it. sharedCounter += 1.

####2. After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?

Answer: Yes, it does fix the problems that occured in Threads2.py. By using lock.acquire() and lock.release() methods, the sharedCounter is being blocked and resticted to each thread (threadA and threadB). Lock.acquire() blocks until the lock is unlocked and then set it to locked. Lock.release() unlocks the lock when locked and does the other way when unlocked. The down-side is the runtime of the program, it needs sync the sharedCounter and in order to sync the values there is some communication. This communcation increases the runtime of the program.

####3. Comment out the join statements at the bottom of the program and describe what happens.

Answer: When the join statements are not commented as in Threads3.py, the main program waits untill both the threads are executed and joined (waiting untill the thread termination). Where as; when join statements are commented out, it is like the threads are set to execution and has nothing to wait for; which causes to the main program to run all the available next statements, while the started threads are still executing.

####4. What happens if you try to Ctrl-C out of the program before it terminates?

Answer: Throws a KeyBoardInterrupt after the thread is executed and only terminates the main program. The threads remain uninterrupted as long as the range does not end.

####5. Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation.

Answer: 
```python
sharedNumber = 1
            if sharedNumber != 1:
                print ('A: that was weird')
```
In this case the sharedNumber would never be one as the program executes, hence it always prints "A: that was weird" and the same happens with the thread B.

####6. Does uncommenting the lock operations clear up the problem in question 5?

Answer: Yes, it does clear up the problem by locking the resources to each thread and checks if sharedNumber is equal to 1 in threadA and 2 in threadB without interacting with eachother. Hence it does not create any race condition to access the sharedNumber.
