class dff_monitor extends uvm_component;

    virtual dff_if vif;

    uvm_analysis_port #(bit) ap;

    `uvm_component_utils(dff_monitor)

    function new(string name, uvm_component parent);
        super.new(name,parent);
        ap = new("ap",this);
    endfunction

    task run_phase(uvm_phase phase);
        forever begin
            @(posedge vif.clk);
            ap.write(vif.q);
        end
    endtask

endclass
