module adder(
    input logic Cin,
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] S,
    output logic Cout
);
    logic C[2:0];


    full_adder fa_inst0(Cin,  A[0], B[0], S[0], C[0]);
    full_adder fa_inst1(C[0], A[1], B[1], S[1], C[1]);
    full_adder fa_inst2(C[1], A[2], B[2], S[2], C[2]);
    full_adder fa_inst4(C[2], A[3], B[3], S[3], Cout);


endmodule : adder
