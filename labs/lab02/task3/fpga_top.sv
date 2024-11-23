module fpga_top (
    input  logic [2:0] SW,  
    output logic [1:0] LED  
);
    logic A, B, Cin;
    logic S, Cout;

    assign A = SW[0];
    assign B = SW[1];
    assign Cin = SW[2];

    full_adder full_adder_inst0 (
        .*
    );

    assign LED[0] = S; 
    assign LED[1] = Cout;  

endmodule
