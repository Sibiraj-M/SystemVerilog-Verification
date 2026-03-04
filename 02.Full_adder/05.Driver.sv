class driver;
  transaction trans;
  virtual inter in;
  mailbox gen_to_driv;
  
  function new(virtual inter in,mailbox gen_to_driv);
    this.in=in;
    this.gen_to_driv=gen_to_driv;
  endfunction
  
  task driv();
    trans=new();
    repeat(4) begin
      #1;
      gen_to_driv.get(trans);
      in.a=trans.a;
      in.b=trans.b;
      in.c=trans.c;
      trans.display("DRIVER");
      #2;
      end
  endtask
endclass
