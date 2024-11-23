module andgate (
    input logic a, 
    input logic b, 
    output logic f
);
    and u_and(f, a, b); // using and gate primitive 

    /* Note :  
    When we are creating instance of primitives then, 
    its not mandatory to specify the instance name, 
    This means we can also instantiate the and gate like following code  
    
        and (f, a, b);
    */
endmodule 