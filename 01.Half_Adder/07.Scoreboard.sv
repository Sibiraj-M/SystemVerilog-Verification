class scoreboard;
  mailbox montosb;
  transaction trans;
  
  function new(mailbox montosb);
    this.montosb=montosb;
  endfunction
  
  task run();
    repeat(5) begin
      montosb.get(trans);
      trans.display("SCOREBOARD");
      if(((trans.a^trans.b)==trans.sum)&&((trans.a&trans.b)==trans.carry))
        $display("--------------P--A--S--S--------------");
      else
        $display("--------------F--A--I--L--------------");
    end
  endtask
endclass
