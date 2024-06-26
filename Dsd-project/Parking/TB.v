module TB;

    reg clk, car_entered, is_uni_car_entered, car_exited, is_uni_car_exited;

    wire [31:0] uni_parked_car, parked_car, uni_vacated_space, vacated_space;
    wire uni_is_vacated_space, is_vacated_space;

    CU cu (
        .clk(clk),
        .car_entered(car_entered),
        .is_uni_car_entered(is_uni_car_entered),
        .car_exited(car_exited),
        .is_uni_car_exited(is_uni_car_exited),
        .uni_parked_car(uni_parked_car),
        .parked_car(parked_car),
        .uni_vacated_space(uni_vacated_space),
        .vacated_space(vacated_space),
        .hour(hour);
        .uni_is_vacated_space(uni_is_vacated_space),
        .is_vacated_space(is_vacated_space)
    );

    initial begin

        clk = 0;
        car_entered = 0;
        is_uni_car_entered = 0;
        car_exited = 0;
        is_uni_car_exited = 0;
        @(posedge clk);

        $display("1)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 student arrives
        #20
        car_entered = 1;
        is_uni_car_entered = 1;
        #0 car_entered = 0;
        #0

        $display("2)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 regular person arrives
        #20
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;
        #0

        $display("3)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person leaves and another arrives
        #20
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 0;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("4)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);


        //1 student leaves and another arrives
        #20
        car_entered = 1;
        is_uni_car_entered = 1;
        car_exited = 1;
        is_uni_car_exited = 1;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("10) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waiting till 9
        @(hour);
        

        $display("5)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 student arrives and a person leaves
        #20
        car_entered = 1;
        is_uni_car_entered = 1;
        car_exited = 1;
        is_uni_car_exited = 0;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("6)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arrives and a student leaves
        #20
        car_entered = 1;
        is_uni_car_entered = 0;
        car_exited = 1;
        is_uni_car_exited = 1;
        #0 car_entered = 0;
        car_exited = 0;
        #0

        $display("7)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //299 students arrive and now the uni_parking_car is 300
        #20
        repeat (299) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #0 car_entered = 0;
            #0;
        end

        @(posedge clk);
        $display("8)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //199 people arrive and now the capacity is full for them !
        #20
        repeat (199) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            #0 car_entered = 0;
            #0;
        end

        @(posedge clk);
        $display("9)  hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arrives. But the parking is full!
        #20
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;
        #0;
        @(posedge clk);

        $display("10) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waiting till 13
        while (hour < 13) begin
            @(hour);
        end
        @(posedge clk);

        $display("11) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arrives and now there is a free space for that
        #20
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;
        #0

        $display("12) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Waiting till 16
        while (hour < 16) begin
            @(hour);
        end
        @(posedge clk);

        $display("13) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);        

        //199 people arrive. People's count will become equal to 400
        #20;
        repeat(199) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            #0 car_entered = 0;
            #0;
        end

        @(posedge clk);
        $display("14) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 person arrive but the parking is full !
        #20
        car_entered = 1;
        is_uni_car_entered = 0;
        #0 car_entered = 0;

        @(posedge clk);
        $display("15) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        // 300 person leaves and now people's count will become equal to 100 !
        #20
        repeat(300) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #0 car_exited = 0;
            #0;
        end

        @(posedge clk);
        $display("16) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        
        // 200 student arrive and now the uni_space is full
        #20
        repeat(200) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #0 car_entered = 0;
            #0;
        end

        @(posedge clk);
        $display("17) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //1 student arrives. But the uni_space is full!
        #20
        car_entered = 1;
        is_uni_car_entered = 1;
        #0 car_entered = 0;

        @(posedge clk);
        $display("18) hour: %d | uni_parked_car -> %d | parked_car -> %d | uni_vacated_space -> %d | vacated_space -> %d | uni_is_vacated_space -> %d | is_vacated_space -> %d",
                hour, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);


        $stop;
    end
	 
	 always #1 clk = ~clk;

endmodule