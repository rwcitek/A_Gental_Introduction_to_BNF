
---

### Implementation of NFAs

This is similar to the Unix 'fork' system call. Recall that two values will be 
returned from 'fork'. 0 in the case of the child process, and the process id in the parent.

NFAs return one of the alternate states from the delta function in each spawned
thread. 

Computationally complex, especially in the case of a single threaded system.
It would require backtracking and thus no longer linear time complexity.
