`timescale 1ns/1ns
`include "updown_counter_rtl.v" // Includes the RTL code

module testbench;

        reg Clock;
        reg Reset;
        reg Enable;
        reg UPDN;
        wire [15:0] COUNT;

        // Instantiate the counter module
        updown_counter dut (.Clock(Clock),.Reset(Reset),.Enable(Enable),.UPDN(UPDN),.COUNT(COUNT));

        // Clock generation: 10ns period
        always #5 Clock = ~Clock;

        initial begin
                $fsdbDumpvars();

                // Initialize inputs
                Clock = 0;
                Reset = 1;
                Enable = 0;
                UPDN = 0;

                #10 Reset = 0; // Apply reset
                Enable = 1; // Enable counting

                UPDN = 1;
                #80;

                // Change direction to count down
                UPDN = 0;
                #80;


                // Disable counting
                Enable = 0;
                #20;


                $finish;
        end

        // Output monitoring
        initial begin
                $display("Time\tReset\tEnable\tUPDN\tCOUNT");
                $monitor("%0t\t%b\t%b\t%b\t%0d", $time, Reset, Enable, UPDN, COUNT);
        end

endmodule

