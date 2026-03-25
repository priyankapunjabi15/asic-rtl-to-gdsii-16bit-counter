module updown_counter (
        input Clock,
        input Reset,
        input Enable,
        input UPDN,
        output reg [15:0] COUNT);

reg [15:0] count_next;

always @(posedge Clock) begin
        if (Reset)
                COUNT <= 16'b0;
        else if (Enable)
                COUNT <= count_next;
end

always @(*) begin
        if (UPDN)
                count_next = COUNT + 1;
        else
                count_next = COUNT - 1;
end

endmodule

