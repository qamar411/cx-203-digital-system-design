module fpga_top (
    input  logic [8:0] SW,  // Switches for inputs A and B and Mode(add or sub)
    output logic [4:0] LED  // LEDs to display the outputs S and Cout
);

    // Internal signals to connect to the adder subtractor odule
    logic [3:0] A, B, S;
    logic M, Cout;
    

    assign A = SW[7:4];
    assign B = SW[3:0];
    assign M = SW[8];

    // Instantiate the adder subtractor module
    addsub addsub_inst (
        .*
    );

    // Connect the outputs S and Cout to the LEDs
    assign LED[3:0] = S;  // Sum or difference output
    assign LED[4] = Cout;  // Carry output

endmodule

// Note that we need to ignore carry incase of subtraction for
// many cases, let say we have a = 12, b = 7, M = 1, 
// S will be 5 which is correct, but cout will also be one
