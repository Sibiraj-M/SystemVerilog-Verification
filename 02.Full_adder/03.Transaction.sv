class transaction;
  rand bit a;
  rand bit b;
  rand bit c;
  bit sum;
  bit carry;

  function new();
  endfunction

  function void display(string name);
    $display("");
    $display("%0s", name);
    $display("Time=%0t  | A=%0d | B=%0d | C=%0d | SUM=%0d | CARRY=%0d",
              $time, a, b, c, sum, carry);
  endfunction
endclass
