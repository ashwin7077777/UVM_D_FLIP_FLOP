class dff_env extends uvm_env;

    `uvm_component_utils(dff_env)

    dff_agent agent;
    dff_scoreboard sb;

    function void build_phase(uvm_phase phase);
        agent = dff_agent::type_id::create("agent",this);
        sb    = dff_scoreboard::type_id::create("sb",this);
    endfunction

    function void connect_phase(uvm_phase phase);
        agent.mon.ap.connect(sb.imp); // 🔥 TLM connection
    endfunction

endclass
