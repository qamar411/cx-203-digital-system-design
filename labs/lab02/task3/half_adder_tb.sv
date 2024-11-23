module half_adder_tb;
  // Declare testbench signals
  logic A, B;
  logic S, C;

  // Instantiate the half_adder module using .*
  half_adder dut (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t A\t B\t S\t C");
    $display("------------------------");

    // Generate all possible combinations of inputs using a for loop
    for (int i = 0; i < 4; i++) begin
      {A, B} = i; // Assign the binary value of i to inputs A and B
      #10; // Wait for 10 time units
      $display("%0t\t %b\t %b\t %b\t %b", $time, A, B, S, C);
    end

    // End simulation
    $finish;
  end
endmodule
