class dff_tx extends uvm_sequence_item;

    rand bit d;

    `uvm_object_utils(dff_tx)

    function new(string name="dff_tx");
        super.new(name);
    endfunction

    constraint c1 { d inside {0,1}; }

endclass
