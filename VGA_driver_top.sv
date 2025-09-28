module VGA_driver_top (
	input logic clock, //25MHz
	input logic reset, //Active HIGH
	input [7:0] color_input, // Pixel Color Data( RRR,GGG,BB ), De1-SoC has M10K memory
	output [9:0] nextPixel_x, //x coordinate of NEXT pixel to be drawn on the monitor, Range: [0,639]
	output [9:0] nextPixel_y, //y coordinate of NEXT pixel to be drawn on the monitor, Range: [0,479]
	output logic hsync, //HSYNC to vga
	output logic vsync, //VSYNC to vga
	output logic [7:0] red,
	output logic [7:0] green,
	output logic [7:0] blue,
	output sync, //SYNC to vga connecter
	output clk, //CLK signal to VGA connector
	output blank // BLANK to the connector
);

////////////////////////////////////////////////////////
/////////////////////PARAMETERS/////////////////////////
////////////////////////////////////////////////////////

//Need to do calculations for this
//Horiztonal
parameter [9:0] H_ACTIVE = 10'd639;
parameter [9:0] H_FRONTPORCH = 10'd15;
parameter [9:0] H_PULSE = 10'd95;
parameter [9:0] H_BACKPORCH = 10'd47;

//Vertical 
parameter [9:0] V_ACTIVE =
parameter [9:0] V_FRONTPORCH =
parameter [9:0] V_PULSE =
parameter [9:0] V_BACKPORCH =


//QOL parameters
parameter LOW = 1'b0;
parameter HIGH = 1'b1;

//States
parameter [7:0]H_ACTIVE_STATE = 8'd0;
parameter [7:0]H_FRONT_STATE = 8'd1;
parameter [7:0]H_PULSE_STATE = 8'd2;
parameter [7:0]H_BACK_STATE = 8'd3;

parameter [7:0]V_ACTIVE_STATE = 8'd0;
parameter [7:0]V_FRONT_STATE = 8'd1;
parameter [7:0]V_PULSE_STATE = 8'd2;
parameter [7:0]V_BACK_STATE = 8'd3;


//Clocked registers
logic hsync_reg;
logic vsync_reg;
logic [7:0] red_reg;
logic [7:0] green_reg;
logic [7:0] blue_reg;
logic

//Control Registers
logic [9:0] h_counter;
logic [9:0] v_counter;
logic [7:0] h_state;
logic [7:0] v_state;


//State Machine
always_ff @ (posedge clk) begin
	if(reset) begin
		h_counter <= 10'd0;
		v_counter <= 10'd0;
		
		h_state <= ;
		v_state <= ;
	end 
	else begin
	//need to 
////////////////////////////////////////////////////////
/////////////////////HORIZONTAL/////////////////////////
////////////////////////////////////////////////////////
		if(h_state == H_ACTIVE_STATE) begin
			if(h_counter == H_ACTIVE) h_counter <= 10'd0 else h_counter<= h_counter +10'd1;
		end
		if(h_state == H_FRONT_STATE) begin
		end
		if(h_state == H_PULSE_STATE) begin
		end
		if(h_state == H_BACK_STATE) begin
		end

	////////////////////////////////////////////////////////
	/////////////////////VERTICAL///////////////////////////
	////////////////////////////////////////////////////////
		if(v_state == V_ACTIVE_STATE) begin
		end
		if(v_state == V_FRONT_STATE) begin
		end
		if(v_state == V_PULSE_STATE) begin
		end
		if(v_state == V_BACK_STATE) begin
		end

	////////////////////////////////////////////////////////
	/////////////////////COLOR OUTPUT///////////////////////
	////////////////////////////////////////////////////////
		red_reg <=
		green_reg <=
		blue_reg <=
		
		end
	end


	////////////////////////////////////////////////////////
	/////////////OUTPUT ASSIGNMENTS/////////////////////////
	////////////////////////////////////////////////////////
	assign hsync = hsync_reg;
	assign vsync = vsync_reg;
	assign red = red_reg'
	assign green = green_reg;
	assign blue = blue_reg;
	assign clk = clock;
	assign sync = 1'b0;
	assign blank = hsync_reg & vsync_reg;

	assign nextPixel_x =
	assign nextPixel_y =

endmodule
