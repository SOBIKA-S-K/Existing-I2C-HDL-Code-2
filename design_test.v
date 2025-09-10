module i2c_test();
reg clk;
reg reset;
reg [7:0] data_in;
reg [15:0] divisor;
reg [6:0] address_slave;
reg order;
reg wr_enable;
reg [7:0] data_in_slave;
wire sda;
wire scl;
wire ready,done,finish;

//instantiate DUT 
i2c_master tesm(
	.clk(clk),
	.reset(reset),
	.data_in(data_in),
	.divisor(divisor),
	.address_slave(address_slave),
	.order(order),
	.wr_enable(wr_enable),
	.sda(sda),
	.scl(scl),
	.ready(ready),
	.done(done),
	.finish(finish)

);
i2c_slave tess
(
.scl(scl),
.sda(sda),
.reset(reset),
.clk(clk),
.divisor(divisor),
.data_in_slave(data_in_slave)
);
initial begin 
clk=0;
forever
#5 clk = ~clk;
end 
initial begin 
reset =1;
repeat(2)@(negedge clk);
reset=0;
divisor =250;
data_in =8'b00000000;
address_slave =7'b1010001;
data_in_slave=8'b11001110;
wr_enable =1;
order =0;
@(posedge ready);
order =2;
@(posedge finish);
order =4;
repeat(10)@(negedge clk);
order=0;
data_in =8'b01001111;
@(posedge ready);
@(negedge clk);
order=1;
end
endmodule


