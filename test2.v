module TB_SD;
    reg Clk,Reset,Input1;
    wire [12000:0] Z;


    Ethernet uut(.Clk(Clk),.Input1(Input1),.Z(Z));

    initial Clk=1;
    always #10 Clk = ~Clk;

    initial begin
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;     ////16
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;     ////32
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;    
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=1; #20;     ////64
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;     ////80
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;     ////96
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;    
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=1; #20;     ////128
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;     ////144
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;     ////160
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=1; #20;    ////176  //////// Ether Tpye=4 ---> Payload 4 bits
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20;
        Input1=0; #20; 
        Input1=1; #20;
        Input1=1; #20;
        Input1=1; #20;
        Input1=0; #20;    ///// 180 end of payload
        Input1=0; #20;    ////  FCS1
        Input1=0; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;    ////  FCS5
        Input1=1; #20;
        Input1=1; #20;
        Input1=1; #20;
        Input1=1; #20;
        Input1=0; #20;    ////  FCS10
        Input1=0; #20;
        Input1=0; #20;     ////192
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;    ////  FCS15
        Input1=0; #20;
        Input1=1; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;    ////  FCS20
        Input1=0; #20;
        Input1=1; #20;
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;    ////  FCS25
        Input1=1; #20;
        Input1=0; #20;
        Input1=1; #20;     ////208
        Input1=0; #20;
        Input1=1; #20;    ////  FCS30
        Input1=1; #20;
        Input1=0; #20;     //// 212 final of a frame  cheer

        
    end
endmodule