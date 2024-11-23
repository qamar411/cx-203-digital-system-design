module full_adder_tb;
  // Declare testbench signals
  logic Cin, A, B;
  logic S, Cout;

  // Instantiate the full_adder module using .*
  full_adder dut (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t Cin\t A\t B\t S\t Cout");
    $display("----------------------------------");

    // Generate all possible combinations of inputs using a for loop
    for (int i = 0; i < 8; i++) begin
      {Cin, A, B} = i; // Assign the binary value of i to inputs Cin, A, and B
      #10; // Wait for 10 time units
      $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, Cin, A, B, S, Cout);
    end

    // End simulation
    $finish;
  end
endmodule
