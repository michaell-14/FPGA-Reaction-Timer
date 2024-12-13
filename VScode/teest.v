module some_module(
    input wire a,
    output wire b
);

reg rand_reg;

always@* begin
    out = ~a
end 

endmodule
