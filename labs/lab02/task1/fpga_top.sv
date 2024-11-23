module fpga_top (
    input  logic [3:0] SW,  // Switches for inputs a, b, c, d
    output logic LED0       // LED to display the output f
);

    // Internal signal to connect to the output of the and4gate
    logic a, b, c, d;
    logic f;

    assign a = SW[0];
    assign b = SW[1];
    assign c = SW[2];
    assign d = SW[3];



    // Instantiate the and4gate module
    and4gate u_and4gate (.*);

    // Connect the output f to the LED
    assign LED0 = f;

endmodule
