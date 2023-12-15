

/*
 (C) PRASHANTH KUMAR
 ROOK LABS 2018. ALL RIGHTS RESERVED.
 */
        $(function ()
        {
            $("body").on('click keypress', function ()
            {
                ResetThisSession();
            });
        });
        var timeInSecondsAfterSessionOut = 30;
        var secondTick = 0;
        function ResetThisSession() {
            secondTick = 0;
        }
        function StartThisSessionTimer()
        {
            secondTick++;
            var timeLeft = ((timeInSecondsAfterSessionOut - secondTick) / 60).toFixed(0); 
            timeLeft = timeInSecondsAfterSessionOut - secondTick; 

            $("#spanTimeLeft").html(timeLeft);

            if (secondTick > timeInSecondsAfterSessionOut)
            {
                clearTimeout(tick);
                window.location = "../../../Login";
                return;
            }
            tick = setTimeout("StartThisSessionTimer()", 1000);
        }
        StartThisSessionTimer();