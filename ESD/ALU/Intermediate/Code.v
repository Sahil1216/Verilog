module ALU(A,B,Imm,shift,Y,Y1,Ctrl);
   
    input [4:0]  A;
    input [4:0]  B;
    input [5:0]  Ctrl;
    input [15:0] Imm;
    input [4:0]  shift;
    output [5:0] Y;
    output [5:0] Y1;
    reg [5:0] Y,Y1;
    
    always@*
        begin
            case(Ctrl)
                6'b000000: Y <= A&B;       //AND Operation.
                6'b000001: Y <= A|B;       //OR Operation.
                6'b000010: Y <= ~A;        //NOT Operation.
                6'b000011: Y <= A * B;     //Multiplication.
                6'b000100: Y <= A / B;     //Division.
                6'b000101: Y <= A>>shift;  //Right Shift Operation.
                6'b000110: Y <= A<<shift;  //Left Shift Operation
                6'b001010: Y1 <= A + Imm;   //Addition with R-type and I-type ISA.
                6'b001011: Y1 <= A - Imm;   //Subtraction with R-type and I-type ISA.             
            endcase
        end
    
endmodule
