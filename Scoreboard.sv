class dff_scoreboard extends uvm_component;

    `uvm_component_utils(dff_scoreboard)

    bit exp_q;

    uvm_analysis_imp #(bit, dff_scoreboard) imp;

    function new(string name, uvm_component parent);
        super.new(name,parent);
        imp = new("imp",this);
    endfunction

    function void write(bit q);
        if(q !== exp_q)
            `uvm_error("SB","Mismatch detected in DFF");
        exp_q = q;
    endfunction

endclass
