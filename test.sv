class dff_test extends uvm_test;

    `uvm_component_utils(dff_test)

    dff_env env;

    function void build_phase(uvm_phase phase);
        env = dff_env::type_id::create("env",this);
    endfunction

    task run_phase(uvm_phase phase);
        dff_seq seq;

        phase.raise_objection(this);

        seq = dff_seq::type_id::create("seq");
        seq.start(env.agent.seqr);

        phase.drop_objection(this);
    endtask

endclass
