module adder_tb;
  // Declare testbench signals
  logic Cin;
  logic [3:0] A, B;
  logic [3:0] S;
  logic Cout;

  // Instantiate the adder module using .*
  adder dut (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t Cin\t A\t    B\t    S\t    Cout");
    $display("---------------------------------------------------");

    // Randomly generate values for A, B, and Cin
    for (int i = 0; i < 10; i++) begin
      A = $urandom_range(0, 15); // Random 4-bit value for A
      B = $urandom_range(0, 15); // Random 4-bit value for B
      Cin = $urandom_range(0, 1); // Random value for Cin (0 or 1)
      #10; // Wait for 10 time units
      $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, Cin, A, B, S, Cout);
    end

    // End simulation
    $finish;
  end
endmodule
