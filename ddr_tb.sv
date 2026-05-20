`timescale 1ns/1ps

module ddr_tb;

    reg clk;
    reg rst_n;
    reg d_rise;
    reg d_fall;
    wire q;

    ddr_simple uut (
        .clk(clk),
        .rst_n(rst_n),
        .d_rise(d_rise),
        .d_fall(d_fall),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle every 5ns
    end

    initial begin
        rst_n = 0;
        d_rise = 0;
        d_fall = 0;
        #12 rst_n = 1;   // Release reset

        // Apply test patterns
        #10 d_rise = 1; d_fall = 0;
        #10 d_rise = 0; d_fall = 1;
        #10 d_rise = 1; d_fall = 1;
        #10 d_rise = 0; d_fall = 0;

        #50 $finish;
    end

    initial begin
        $monitor("Time=%0t |reset=%b| clk=%b | d_rise=%b | d_fall=%b | q=%b",
                  $time, rst_n, clk, d_rise, d_fall, q);
    end
    
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, ddr_tb);
end

endmodule
