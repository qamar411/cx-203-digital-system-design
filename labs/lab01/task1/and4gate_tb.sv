module andgate_tb;
  // Declare testbench signals
  logic a, b, c, d;
  logic f;

  // Instantiate the and4gate module
  and4gate dut (
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .f(f)
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t a\t b\t c\t d\t f");
    $display("--------------------------------");

    // Apply test vectors with $display statements
    a = 0; b = 0; c = 0; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 0; c = 0; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 0; c = 1; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 0; c = 1; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 1; c = 0; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 1; c = 0; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 1; c = 1; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 0; b = 1; c = 1; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 0; c = 0; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 0; c = 0; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 0; c = 1; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 0; c = 1; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 1; c = 0; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 1; c = 0; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 1; c = 1; d = 0; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    a = 1; b = 1; c = 1; d = 1; #10;
    $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);

    // End simulation
    $finish;
  end
endmodule


// We can do the same using a simpler testbench which is the following 

/*

module andgate_tb;
  // Declare testbench signals
  logic a, b, c, d;
  logic f;

  // Instantiate the and4gate module using .*
  and4gate dut (
    .*
  );

  // Testbench logic
  initial begin
    // Display header
    $display("Time\t a\t b\t c\t d\t f");
    $display("--------------------------------");

    // Generate all possible combinations of inputs using a for loop
    for (int i = 0; i < 16; i++) begin
      {a, b, c, d} = i; // Assign the binary value of i to inputs
      #10; // Wait for 10 time units
      $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, c, d, f);
    end

    // End simulation
    $finish;
  end
endmodule

*/