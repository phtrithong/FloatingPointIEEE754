module Special_Add_tb();

reg         [31: 0] a, b;
reg         symbol;

wire        [31:0]  out;
wire                check_special;


Special_Add SP_ADD_tb(.a(a), .b(b), .symbol(symbol), .out(out), .check_special(check_special));

initial
begin
    //-----------------------   A + B   -------------------------------------------------
    #0;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 0;
    #10;
    a = 32'b01000000011011001100110011001101; // 0
    b = 32'b01000000011011001100110011001101; // 0
    symbol = 0;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b01000000011011001100110011001101; // 3.7
    symbol = 0;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b11000000011011001100110011001101; // -3.7
    symbol = 0;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7;
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 0;
    #10;
    a = 32'b11000000011011001100110011001101; // -3.7;
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 0;
    #10;
    a = 32'b01111111100000000000000000000000; // +Inf
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 0;
    #10;
    a = 32'b11111111100000000000000000000000; // -Inf
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 0;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 0;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 0;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 0;
    #10;
    a = 32'b11000000011011001100110011001101; // -3.7
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 0;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7
    b = 32'b11111111100000000000000000000000; // +Inf
    symbol = 0;
    #10;
    a = 32'b11000000011011001100110011001101; // -3.7
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 0;
    #10;
    a = 32'b01111111100000000000000000000000; // +Inf
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 0;
    #10;
    a = 32'b01111111100000000000000000000000; // +Inf
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 0;
    #10;
    a = 32'b11111111100000000000000000000000; // -Inf
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 0;
    #10;
    a = 32'b11111111100000000000000000000000; // -Inf
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 0;
    #10;
    a = 32'b11111111100000000000000000000001; // NaN
    b = 32'b01000000011011001100110011001101; // 3.7
    symbol = 0;
    #10;
    a = 32'b11111111100000000000000000000001; // NaN
    b = 32'b11000000011011001100110011001101; // -3.7
    symbol = 0;
    #10;
    a = 32'b11111111100000000000000000000001; // NaN
    b = 32'b01111111100000000000000000000001; // NaN
    symbol = 0;
    #10;
    
    //-----------------------   A - B   -------------------------------------------------
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 1;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7
    b = 32'b01000000011011001100110011001101; // 3.7
    symbol = 1;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b01000000011011001100110011001101; // 3.7
    symbol = 1;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b11000000011011001100110011001101; // -3.7
    symbol = 1;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7;
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 1;
    #10;
    a = 32'b11000000011011001100110011001101; // -3.7;
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 1;
    #10;
    a = 32'b01111111100000000000000000000000; // +Inf
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 1;
    #10;
    a = 32'b11111111100000000000000000000000; // -Inf
    b = 32'b00000000000000000000000000000000; // 0
    symbol = 1;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 1;
    #10;
    a = 32'b00000000000000000000000000000000; // 0
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 1;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 1;
    #10;
    a = 32'b11000000011011001100110011001101; // -3.7
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 1;
    #10;
    a = 32'b01000000011011001100110011001101; // 3.7
    b = 32'b11111111100000000000000000000000; // +Inf
    symbol = 1;
    #10;
    a = 32'b11000000011011001100110011001101; // -3.7
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 1;
    #10;
    a = 32'b01111111100000000000000000000000; // +Inf
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 1;
    #10;
    a = 32'b01111111100000000000000000000000; // +Inf
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 1;
    #10;
    a = 32'b11111111100000000000000000000000; // -Inf
    b = 32'b01111111100000000000000000000000; // +Inf
    symbol = 1;
    #10;
    a = 32'b11111111100000000000000000000000; // -Inf
    b = 32'b11111111100000000000000000000000; // -Inf
    symbol = 1;
    #10;
    a = 32'b11111111100000000000000000000001; // NaN
    b = 32'b01000000011011001100110011001101; // 3.7
    symbol = 1;
    #10;
    a = 32'b11111111100000000000000000000001; // NaN
    b = 32'b11000000011011001100110011001101; // -3.7
    symbol = 1;
    #10;
    a = 32'b11111111100000000000000000000001; // NaN
    b = 32'b01111111100000000000000000000001; // NaN
    symbol = 1;
    #10;
end

endmodule