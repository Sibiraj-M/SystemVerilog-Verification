class generator;
  transaction trans;
  mailbox gentodriv;
  
  function new(mailbox gentodriv);
    this.gentodriv=gentodriv;
  endfunction
  
  task run();
    trans=new();
    repeat(5) begin
      trans.randomize();
      gentodriv.put(trans);
      trans.display("GENERATOR");
      #3;
    end
  endtask
endclass
