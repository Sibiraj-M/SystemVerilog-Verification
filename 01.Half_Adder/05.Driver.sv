class driver;
  transaction trans;
  virtual inter interf;
  mailbox gentodriv;
  
  function new(virtual inter interf,mailbox gentodriv);
    this.interf=interf;
    this.gentodriv=gentodriv;
  endfunction
  
  task run();
    trans=new();
    repeat(5) begin
      #1;
      gentodriv.get(trans);
      trans.display("DRIVER");
      interf.a=trans.a;
      interf.b=trans.b;
      #2;
      end
  endtask
endclass
