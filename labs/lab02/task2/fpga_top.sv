module fpga_top (
    input  logic [1:0] SW,  // Switches for inputs A and B
    output logic [1:0] LED  // LEDs to display the outputs S and C
);

    // Internal signals to connect to the half_adder module
    logic A, B;
    logic S, C;

    assign A = SW[0];
    assign B = SW[1];

    // Instantiate the half_adder module
    half_adder half_adder_inst0 (
        .*
    );

    // Connect the outputs S and C to the LEDs
    assign LED[0] = S;  // Sum output
    assign LED[1] = C;  // Carry output

endmodule
