class monitor;
  transaction trans;
  mailbox montosb;
  virtual inter interf;
  
  function new(mailbox montosb,virtual inter interf);
    this.trans=trans;
    this.montosb=montosb;
    this.interf=interf;
  endfunction
  
  task run();
    trans = new(); 
    repeat(5)begin
      #2;
      trans.a=interf.a;
      trans.b=interf.b;
      trans.sum=interf.sum;
      trans.carry=interf.carry;
      montosb.put(trans);
      trans.display("MONITOR");
      #1;
    end
  endtask
endclass
