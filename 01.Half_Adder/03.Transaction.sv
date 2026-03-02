class transaction;
  rand bit a;
  rand bit b;
  bit sum;
  bit carry;
  
  function void display(string d);
    $display("%s",d);
    $display(" A=%0d | B=%0d | Sum=%0d | Carry=%0d ",a,b,sum,carry);
  endfunction
endclass
