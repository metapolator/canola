
@namespace(glyph#exclam) {

@import 'generic.cps';
@import 'serif.cps';

}

@namespace(glyph#quotedbl) {

@import 'generic.cps';
@import 'serif.cps';

}

@namespace(glyph#numbersign) {

@import 'generic.cps';
@import 'serif.cps';

}


@namespace(glyph#percent) {

@import 'generic.cps';
@import 'serif.cps';

}


@namespace(glyph#quotesingle) {

@import 'generic.cps';
@import 'serif.cps';

}


@namespace(glyph#parenleft) {

@import 'generic.cps';
@import 'serif.cps';

}

@namespace(glyph#parenright) {

@import 'generic.cps';
@import 'serif.cps';

}

@namespace(glyph#plus) {

@import 'generic.cps';
@import 'serif.cps';

}


@namespace(glyph#comma) {

@import 'generic.cps';
@import 'serif.cps';

}


@namespace(glyph#hyphen) {
@import 'generic.cps';
@import 'serif.cps';
}

@namespace(glyph#period) {
@import 'generic.cps';
@import 'serif.cps';
}

@namespace(glyph#slash) {
@import 'generic.cps';
@import 'serif.cps';
}

@namespace(glyph#zero) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#one) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#two) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#three) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#four) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#six) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#seven) {
@import 'generic.cps';
@import 'serif.cps';
}
@namespace(glyph#nine) {
@import 'generic.cps';
@import 'serif.cps';
}

@namespace(glyph#at) {
@import 'generic.cps';
@import 'serif.cps';
}


@namespace(glyph#S) {
@import 'generic.cps';
@import 'serif.cps';
}

@namespace(glyph#U) {
@import 'generic.cps';
@import 'serif.cps';
}
















@namespace(glyph#nyadeva_viramadeva_jadeva) {

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

@import 'serif.cps';
}




@namespace(glyph#ttadeva) {

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

@import 'serif.cps';
}



@namespace(glyph#five) {

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

/* overshoot */
penstroke#bow point:i(3) > left {
    on: wedge - Vector 0 overshoot;
}

}




@namespace(glyph#eight) {

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

/* overshoot */
point.left-over_bottom > left {
    on: wedge - Vector 0 overshoot;
}
/* overshoot */
point.right-over_top > right {
    on: wedge + Vector 0 overshoot;
}
}







@namespace(glyph#edieresis) {

point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
/* overshoot */
penstroke#bow point:i(3) > right {
    on: wedge - Vector 0 overshoot;
}

penstroke#dot point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

penstroke#dot2 point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

}




