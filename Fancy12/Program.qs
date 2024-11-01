namespace QsharpTravellingSalesmanCalculator12 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;
    
    @EntryPoint()
    function QTSC12() : Unit {
        //This tells me when the program has started running
        Message("start time");
        let xvals = [10, 13, 12, 4, -17, 14, 14, -7, -14, 4, 6, 4];
        let yvals = [-5, 19, 5, 15, 9, 12, 0, 3, -6, -12, -19, 4];
        //This prints out the x and y values
        Message($"X values: {xvals}");
        Message($"Y values: {yvals}");
        mutable ptnum1 = 0;
        mutable ptnum2 = 1;
        mutable x1 = 0;
        mutable x2 = 1;
        mutable y1 = 0;
        mutable y2 = 1;
        //This sets up an array to store the distances between points
        mutable dist = [0.0, size = 144];
        let points = 12; 

        //These calculate the distances between points and store them at a reachable place in the array of distances
        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }
        
        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 2;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }
        
        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 3;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }
        
        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 4;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }
        
        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 5;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 6;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 7;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 8;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 9;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 10;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        set ptnum1 = ptnum1 + 1;
        set ptnum2 = 11;

        while(ptnum2 < points){
            set x1 = xvals[ptnum1];
            set x2 = xvals[ptnum2];
            set y1 = yvals[ptnum1];
            set y2 = yvals[ptnum2];
            set dist w/= (ptnum1 * 12 + ptnum2) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set dist w/= (ptnum2 * 12 + ptnum1) - 1 <- Sqrt(IntAsDouble((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)));
            set ptnum2 = ptnum2 + 1;
        }

        //This is a system to count through all the potential iterations for the order of the points
        mutable a = 1;
        mutable b = 2;
        mutable c = 3;
        mutable d = 4;
        mutable e = 5;
        mutable f = 6;
        mutable g = 7;
        mutable h = 8;
        mutable j = 9;
        mutable k = 10;
        mutable l = 11;

        mutable smallresult = 10000000.0;
        mutable smallloop = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
        
        while(a < points) {
            if(l == points){
                set l = 1;
                set k = k + 1;
            }
            if(k == points){
                set k = 1;
                set j = j + 1;
            }
            if(j == points){
                set j = 1;
                set h = h + 1;
            }
            if(h == points){
                set h = 1;
                set g = g + 1;
            }
            if(g == points){
                set g = 1;
                set f = f + 1;
            }
            if(f == points){
                set f = 1;
                set e = e + 1;
            }
            if(e == points){
                set e = 1;
                set d = d + 1;
            }
            if(d == points){
                set d = 1;
                set c = c + 1;
            }
            if(c == points){
                set c = 1;
                set b = b + 1;
            }
            if(b == points){
                set b = 1;
                set a = a + 1;
            }
            //This checks if there are any repeats in the points or if it has gone through all the iterations and 
            //any that have the same number twice or the very last round through the counting system don't get calculated
            if(a == b or a == c or a == d or a == e or a == f or a == g or a == h or a == j or a == k or a == l 
            or b == c or b == d or b == e or b == f or b == g or b == h or b == j or b == k or b == l 
            or c == d or c == e or c == f or c == g or c == h or c == j or c == k or c == l 
            or d == e or d == f or d == g or d == h or d == j or d == k or d == l 
            or e == f or e == g or e == h or e == j or e == k or e == l 
            or f == g or f == h or f == j or f == k or f == l 
            or g == h or g == j or g == k or g == l 
            or h == j or h == k or h == l 
            or j == k or j == l 
            or k == l 
            or a == points){
                set l = l + 1;
            }
            //If all the numbers are different, it stores the pattern in an array, calculates the length of the loop, and compares it to the current smallest loop
            //if the current test is smaller, it takes the current test and makes it the smallest test and stores the current loop as the new smallest loop
            else{
                mutable currentloop = [0, a, b, c, d, e, f, g, h, j, k, l, 0];
                mutable dist1 = dist[(currentloop[0] * 12 + currentloop[1]) - 1];
                mutable dist2 = dist[(currentloop[1] * 12 + currentloop[2]) - 1];
                mutable dist3 = dist[(currentloop[2] * 12 + currentloop[3]) - 1];
                mutable dist4 = dist[(currentloop[3] * 12 + currentloop[4]) - 1];
                mutable dist5 = dist[(currentloop[4] * 12 + currentloop[5]) - 1];
                mutable dist6 = dist[(currentloop[5] * 12 + currentloop[6]) - 1];
                mutable dist7 = dist[(currentloop[6] * 12 + currentloop[7]) - 1];
                mutable dist8 = dist[(currentloop[7] * 12 + currentloop[8]) - 1];
                mutable dist9 = dist[(currentloop[8] * 12 + currentloop[9]) - 1];
                mutable dist10 = dist[(currentloop[9] * 12 + currentloop[10]) - 1];
                mutable dist11 = dist[(currentloop[10] * 12 + currentloop[11]) - 1];
                mutable dist12 = dist[(currentloop[11] * 12 + currentloop[12]) - 1];
                mutable currenttest = dist1 + dist2 + dist3 + dist4 + dist5 + dist6 + dist7 + dist8 + dist9 + dist10 + dist11 + dist12;
                if(currenttest < smallresult){
                    set smallresult = currenttest;
                    set smallloop = currentloop;
                }
                set l = l + 1;
            }
        }
        //this prints out the answers and says when the program has stopped running
        Message($"Shortest path: {smallloop}");
        Message($"Shortest path length: {smallresult}");
        Message("");
        Message("stop time");
    }
}