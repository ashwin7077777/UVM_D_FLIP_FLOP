module dff_sva(
    input logic clk,
    input logic rst_n,
    input logic d,
    input logic q
);

property reset_check;
    !rst_n |-> (q == 0);
endproperty

assert property(reset_check);

property data_transfer;
    @(posedge clk) disable iff(!rst_n)
    q == $past(d);
endproperty

assert property(data_transfer);

endmodule
