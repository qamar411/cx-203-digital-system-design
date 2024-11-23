module addsub_tb;
  // Declare testbench signals
  logic M;              // Mode: 0 for Addition, 1 for Subtraction
  logic [3:0] A, B;     // 4-bit inputs
  logic [3:0] S;        // 4-bit result (Sum/Difference)
  logic Cout;           // Carry-out

  // Instantiate the addsub module
  addsub DUT (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t M\t A\t B\t S\t Cout");
    $display("-------------------------------------------");

    // Generate random test cases
    for (int i = 0; i < 100; i++) begin
      M = $urandom_range(0, 1);        // Randomly choose addition (0) or subtraction (1)
      A = $urandom_range(0, 15);      // Random 4-bit value for A
      B = $urandom_range(0, 15);      // Random 4-bit value for B
      #10;                            // Wait for 10 time units
      $display("%0t\t %b\t %0d\t %0d\t %0d\t %0d", $time, M, A, B, S, Cout);
    end

    // End simulation
    $finish;
  end
endmodule
