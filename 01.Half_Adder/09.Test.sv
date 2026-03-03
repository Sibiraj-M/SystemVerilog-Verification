`include "ENVIRONMENT.sv"

program test(inter interf);
  environment envn;
  
  initial begin
    envn=new(interf);
    envn.test();
  end
endprogram
