`include"transaction.sv"
`include "Generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"

class environment;
  transaction trans;
  generator gen;
  driver driv;
  monitor mon;
  scoreboard score;
  
  mailbox gentodriv;
  mailbox montosb;
  virtual inter interf;
  
   function new(virtual inter interf );
    gentodriv=new();
    montosb=new();
    this.interf=interf;
    
    gen=new(gentodriv);
    driv=new(interf,gentodriv);
     mon = new(montosb, interf);
     score=new(montosb);
  endfunction
    
    task test();
      fork
        gen.run();
        driv.run();
        mon.run();
        score.run();
      join
    endtask 
endclass
