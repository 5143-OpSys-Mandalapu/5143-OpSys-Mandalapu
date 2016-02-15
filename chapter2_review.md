# Chapter 2 Review Questions
Name: Vishnu Chaitanya Mandalapu
Course: 5143 Advance Operating Systems
Date: 16 Feb 2016

## 1. What are three objectives of an OS design?

Three objectives of an OS design are:
  1. Convenience
  2. Efficiency
  3. Ability to evolve


## 2. What is the kernel of an OS?

A kernel is the part of the operating system that mediates access to system resources. It's responsible for enabling multiple applications to effectively share the hardware by controlling access to CPU, memory, disk I/O, and networking. 

## 3. What is multiprogramming?

The idea of expanding the memory to hold three or four or more programs and switch among all of them is considered as Multiprogramming, sometime also called multitasking. This is the central theme of modern operating systems.

## 4. What is a process?

A process is an instance of a computer program that is being executed. It is like a tiny part of the program. A program is granularized to create processes. Since processes are smaller, they can switch faster in the memory and at CPU.

## 5. How is the execution context of a process used by the OS?

Execution context of the process is the internal data by which Operating System can control the process. The internal information is saparated from the process, because OS has information not permitted to the process. This context also includes the contents of various processor registers, such as PC \(program counter\) and data registers, also the information like the priority of the process and the state of the process. 

## 6. List and briefly explain five storage management responsibilities of a typical OS.

1. Process Isolation: OS should avoid the interference between the indepent processes to avoid the ambiguous results.
2. Automatic allocation and management: Memory allocation to the programs should be done dynamically across the memory module available. And this should be transparent to programmer, so that programmer knows the memory access limitations.
3. Support of modular programming: Programmers should be able to define program modules, and to create, destroy and alter the size of these modules.
4. Protection and access control: Sharing of memory at any level of the memory. OS should be able to maintain coherence between the data copies that are made at different levels of memory.
5. Long-Term storage: OS must be able to write to the memory which could last long even when the machine is powered down.

## 7. Explain the distinction between a real address and a virtual address.

Your answer to question one here...

## 8. Describe the round-robin scheduling technique.

Your answer to question one here...

## 9. Explain the difference between a monolithic kernel and a microkernel.

Your answer to question one here...

## 10. What is multithreading?

Your answer to question one here...

## 11. List the key design issues for an SMP operating system.

Your answer to question one here...
