module test1(in1,in2,clk,out);

input in1,in2,clk;
output out;

//wire out;

//assign out=in1|in2;

reg out;
always @ (*) begin
    out <=in1|in2;
end


endmodule