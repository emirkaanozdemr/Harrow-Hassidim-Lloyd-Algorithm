OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];        
qreg anc[1];       
creg c[3];        

h q[0];           
h q[1];            
x q[2];            


h anc[0];        
cx q[0], anc[0];  


ccx q[0], q[1], q[2];

h q[0];


measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
