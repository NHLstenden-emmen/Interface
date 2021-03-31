var ptz_type = 0, PTZ_STOP = 1, TILT_UP = 0, TILT_UP_STOP = 1, TILT_DOWN = 2, TILT_DOWN_STOP = 3, PAN_LEFT = 6, PAN_LEFT_STOP = 5, PAN_RIGHT = 4,
        PAN_RIGHT_STOP = 7, PTZ_LEFT_UP = 91, PTZ_RIGHT_UP = 90, PTZ_LEFT_DOWN = 93, PTZ_RIGHT_DOWN = 92;

    let joystick = document.querySelector("#joystick");
    let thumb = document.querySelector("#joystick_thumb");
    console.log(joystick);
    console.log(thumb);

    let down = false;

    let lastCommand = -1;

    function decoder_control(command) {
        if(lastCommand != command) {
            action_zone.location='http://foscam.serverict.nl/decoder_control.cgi?command=' +command + " ?user=user&pwd=user_12";
            lastCommand = command;
        }
    }

    function moveJoystick(e) {
        let radius = (joystick.clientWidth > joystick.clientHeight ? joystick.clientHeight : joystick.clientWidth) / 2;
        let relX = e.offsetX - radius;
        let relY = e.offsetY - radius;
        let actDist = Math.sqrt(Math.pow(relX, 2) + Math.pow(relY, 2));

        if(down && actDist <= radius) {
            let centerDist = actDist / radius * 100;
            centerDist = centerDist > 30 ? 30 : centerDist;
            let transX = relX/actDist * centerDist;
            let transY = relY/actDist * centerDist;
            thumb.setAttribute("transform", "translate(" + transX + " " + transY + ")");
            
            let angle = get360Angle(transX, transY);

            if (centerDist < 10) {
                // stop movement
                decoder_control(PTZ_STOP);
            } else if (angle < 22.5 || angle >= 337.5) {
                // move right
                decoder_control(PAN_RIGHT);
            } else if(angle < 67.5) {
                // move downright
                decoder_control(PTZ_RIGHT_DOWN);
            } else if(angle < 112.5) {
                // move down
                decoder_control(TILT_DOWN);
            } else if(angle < 157.5) {
                // move downleft
                decoder_control(PTZ_LEFT_DOWN);
            } else if(angle < 202.5) {
                // move left
                decoder_control(PAN_LEFT);
            } else if(angle < 247.5) {
                // move upleft
                decoder_control(PTZ_LEFT_UP);
            } else if(angle < 282.5) {
                // move up
                decoder_control(TILT_UP);
            } else {
                // move upright
                decoder_control(PTZ_RIGHT_UP);
            }
        }
    }

    function stopJoyStick(e) {
        down = false;
        thumb.removeAttribute("transform");
        // stop movement
        decoder_control(PTZ_STOP);
    }

    function get360Angle(x, y) {
        var angle = Math.atan(y/x) * 180/Math.PI;

        if(x >= 0 && y >= 0) {
            return angle;
        }

        if(x >= 0 && y < 0) {
            return angle + 360;
        }

        return 180+angle;
    }

    joystick.addEventListener("mousedown", (e) => {
        down = true;
        moveJoystick(e);
    });

    joystick.addEventListener("mousemove", moveJoystick);

    joystick.addEventListener("mouseup", stopJoyStick);

    joystick.addEventListener("mouseleave", stopJoyStick);