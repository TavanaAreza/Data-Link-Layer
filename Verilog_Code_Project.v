module Ethernet (Clk,Input1,Z);
    input Clk,Input1;
    output reg [12000:0] Z;
    wire [32:0] Gen=33'b100000100110000010001110110110111;
    reg [15:0] EtherType=0;
    integer Counter;
    reg flag;
    reg [63:0] Preamble_SFD;
    reg [15:0] Counter2;
    reg [12000:0] Payload;
    reg [12031:0] PayloadCheck;
    reg [12031:0] Quotient;
    reg [12031:0] Temp;
    reg Done;
    integer n,d,m;
    initial begin
        Preamble_SFD=0;
        flag=0;
        Payload=0;
        PayloadCheck=0;
        Quotient=0;
        Counter=0;
        Counter2=0;
        Z=0;
        Done=0;
        Temp=0;
    end
    always @(posedge Clk) begin
        if (Counter==0) begin
            Done=0;
            Z=0;
        end
        Counter=Counter+1;
        if (Counter<=64) begin
            Preamble_SFD[64-Counter]=Input1;
        end
        if (Preamble_SFD=='hAAAAAAAAAAAAAAAB) begin       //////  checking that Preamble were ok
            if (Counter>160) begin
                flag=1;
                if (Counter>176) begin
                    Counter2=Counter2+1;  
                    if (Counter2<=EtherType*8) begin
                        Payload[EtherType*8-Counter2]=Input1;    ////  Storing Payload
                    end 
                    PayloadCheck[32+EtherType*8-Counter2]=Input1;     ///// Storing Payload for checking it
                    if (Counter2==EtherType*8+32) begin                 //// Let's go checking the data
                        Temp=PayloadCheck;
                        for ( n=EtherType*8+32 ;n>=32 ;n=n-1 ) begin
                            Quotient[n-32]=Temp[n];
                            for ( d=32 ;d>=0 ;d=d-1 ) begin
                                Temp[n - ( 32 - d )] = (Gen[d]& Quotient[n - 32]) ^ Temp[n - ( 32 - d )];
                            end
                        end
                        if (Temp==0) begin    /////Yes we are Done
                            Done=1;
                            Z=Payload;
                            PayloadCheck=0;
                            Payload=0;
                            Counter2=0;
                            Counter=0;
                            Quotient=0;
                            flag=0;
                        end else begin        /// No Correction
                            for (m =EtherType*8-1 ;m>=0 ;m=m-1 ) begin        /// Correcting by checking bit by bit
                                Quotient=0;
                                Temp=PayloadCheck;
                                Temp[m+32]=~Temp[m+32];
                                for ( n=EtherType*8+32 ;n>=32 ;n=n-1 ) begin
                                    Quotient[n-32]=Temp[n];
                                    for ( d=32 ;d>=0 ;d=d-1 ) begin
                                        Temp[n - ( 32 - d )] = (Gen[d]& Quotient[n - 32]) ^ Temp[n - ( 32 - d )];
                                    end
                                end
                                if (Temp==0) begin
                                    Done=1;
                                    Z=Payload;
                                    Z[m]=~Payload[m];
                                    PayloadCheck=0;
                                    Payload=0;
                                    Counter2=0;
                                    Counter=0;
                                    Quotient=0;
                                    flag=0;
                                end
                            end
                        end
                    end
                end else begin
                    EtherType[176-Counter]=Input1;        /////// Storing EtherType
                end
            end
        end
    end
endmodule
