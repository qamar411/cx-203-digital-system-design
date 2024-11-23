module fpga_top (
    input  logic [8:0] SW,  // Switches for inputs A, B and Cin
    output logic [4:0] LED  // LEDs to display the outputs S and Cout
);

    logic [3:0] A, B, S;
    logic Cin, Cout;
    

    assign A = SW[7:4];
    assign B = SW[3:0];
    assign Cin = SW[8];

    adder adder4bit_inst0 (
        .*
    );

    assign LED[3:0] = S;  // Sum output
    assign LED[4] = Cout;  // Carry output

endmodule
