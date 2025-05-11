module ring_counter (
    input logic clk,
    input logic reset,
    output logic [3:0] q
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            q <= 4'b0001; // Initialize the ring counter
        end else begin
            q <= {q[2:0], q[3]}; // Shift left and wrap around
        end
    end
endmodule