class dff_agent extends uvm_agent;

    `uvm_component_utils(dff_agent)

    uvm_sequencer #(dff_tx) seqr;
    dff_driver drv;
    dff_monitor mon;

    function void build_phase(uvm_phase phase);
        seqr = uvm_sequencer#(dff_tx)::type_id::create("seqr",this);
        drv  = dff_driver::type_id::create("drv",this);
        mon  = dff_monitor::type_id::create("mon",this);
    endfunction

    function void connect_phase(uvm_phase phase);
        drv.seq_item_port.connect(seqr.seq_item_export);
    endfunction

endclass
