class dff_driver extends uvm_driver #(dff_tx);

    virtual dff_if vif;

    `uvm_component_utils(dff_driver)

    function void build_phase(uvm_phase phase);
        if(!uvm_config_db#(virtual dff_if)::get(this,"","vif",vif))
            `uvm_fatal("DRV","No vif")
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            dff_tx tr;
            seq_item_port.get_next_item(tr);

            vif.d <= tr.d;

            @(posedge vif.clk);
            seq_item_port.item_done();
        end
    endtask

endclass
