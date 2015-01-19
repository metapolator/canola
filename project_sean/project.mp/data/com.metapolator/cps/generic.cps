
point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;

}

penstroke#stem2 point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;

}

/* overshoot */

point.left-over_bottom > center {
    on: scale_B_on - Vector 0 overshoot;
    in: scale_B_in - Vector 0 overshoot;
    out: scale_B_out - Vector 0 overshoot;
    }
point.right-over_bottom > center {
    on: scale_B_on - Vector 0 overshoot;
    in: scale_B_in - Vector 0 overshoot;
    out: scale_B_out - Vector 0 overshoot;
}

point.left-over_top > center {
    on: scale_B_on - Vector 0 overshoot;
    in: scale_B_in - Vector 0 overshoot;
    out: scale_B_out - Vector 0 overshoot;
}

point.left-over_top > center {
    on: scale_B_on - Vector 0 overshoot;
    in: scale_B_in - Vector 0 overshoot;
    out: scale_B_out - Vector 0 overshoot;
}



/* 
point.left-over_bottom > left {
    on: wedge - Vector 0 overshoot;
}
/* overshoot
point.right-over_top > right {
    on: wedge + Vector 0 overshoot;
}

/* overshoot 
point.right-over_bottom > left {
    on: wedge - Vector 0 overshoot;
}
/* overshoot 
point.left-over_top > right {
    on: wedge + Vector 0 overshoot;
}
*/


@import 'serif.cps';



