module addsub(
    input logic M,
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] S,
    output logic Cout
);
    logic C[2:0];
    logic Xor_o[3:0];
    xor (Xor_o[0], B[0], M);
    xor (Xor_o[1], B[1], M);
    xor (Xor_o[2], B[2], M);
    xor (Xor_o[3], B[3], M);

    full_adder fa_inst0(M,    A[0], Xor_o[0], S[0], C[0]);
    full_adder fa_inst1(C[0], A[1], Xor_o[1], S[1], C[1]);
    full_adder fa_inst2(C[1], A[2], Xor_o[2], S[2], C[2]);
    full_adder fa_inst3(C[2], A[3], Xor_o[3], S[3], Cout);


endmodule : addsub