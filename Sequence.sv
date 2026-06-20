class dff_seq extends uvm_sequence #(dff_tx);

    `uvm_object_utils(dff_seq)

    task body();
        repeat (50) begin
            dff_tx tr = dff_tx::type_id::create("tr");
            start_item(tr);
            assert(tr.randomize());
            finish_item(tr);
        end
    endtask

endclass
