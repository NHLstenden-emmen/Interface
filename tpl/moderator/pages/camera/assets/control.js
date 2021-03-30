var ptz_type = 0, PTZ_STOP = 1, TILT_UP = 0, TILT_UP_STOP = 1, TILT_DOWN = 2, TILT_DOWN_STOP = 3, PAN_LEFT = 6, PAN_LEFT_STOP = 5, PAN_RIGHT = 4,
    PAN_RIGHT_STOP = 7, PTZ_LEFT_UP = 91, PTZ_RIGHT_UP = 90, PTZ_LEFT_DOWN = 93, PTZ_RIGHT_DOWN = 92;	

const  decoder_control = (command) => action_zone.location='http://foscam.serverict.nl/decoder_control.cgi?command=' +command + " ?user=user&pwd=user_12";

const up_onmousedown = () => decoder_control(TILT_UP);
const down_onmousedown = () => decoder_control(TILT_DOWN);
const left_onmousedown = () => decoder_control(PAN_LEFT);
const right_onmousedown = () => decoder_control(PAN_RIGHT);

const up_onmouseup = () => {
	if (!ptz_type) decoder_control(PTZ_STOP);
	else decoder_control(TILT_UP_STOP);
}

const down_onmouseup = () => {
	if (!ptz_type) decoder_control(PTZ_STOP);
	else decoder_control(TILT_DOWN_STOP);	
}

const left_onmouseup = () => {
	if (!ptz_type) 	decoder_control(PTZ_STOP);
	else decoder_control(PAN_LEFT_STOP);	
}

const right_onmouseup = () => {
	if (!ptz_type) decoder_control(PTZ_STOP);
	else decoder_control(PAN_RIGHT_STOP);
}

const leftup_onmousedown = () => {
	if (ptz_type) return;
	else decoder_control(PTZ_LEFT_UP);
}

const rightup_onmousedown = () => {
	if (ptz_type) return;
	else decoder_control(PTZ_RIGHT_UP);
}

const leftdown_onmousedown = () => {
	if (ptz_type) return;
	else decoder_control(PTZ_LEFT_DOWN);
}

const rightdown_onmousedown = () => {
	if (ptz_type) return;
	else decoder_control(PTZ_RIGHT_DOWN);
}

const leftup_onmouseup = () => { if (!ptz_type) decoder_control(PTZ_STOP) };
const rightup_onmouseup = () => { if (!ptz_type) decoder_control(PTZ_STOP);}
const leftdown_onmouseup = () => { if (!ptz_type) decoder_control(PTZ_STOP); }
const rightdown_onmouseup = () =>{ if (!ptz_type) decoder_control(PTZ_STOP); }
