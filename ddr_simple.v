module ddr_simple (
    input  wire clk,       
    input  wire rst_n,     
    input  wire d_rise,    
    input  wire d_fall,    
    output reg  q          
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else
            q <= d_rise;  
    end

    always @(negedge clk or negedge rst_n) begin
        if (!rst_n)
            q <= 1'b0;
        else
            q <= d_fall;  
    end

endmodule
