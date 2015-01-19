@import 'lib/centreline-skeleton-to-symmetric-outline.cps';
@import 'lib/point-child-base.cps';
@import 'lib/single-inheritance.cps';
@import 'lib/weight.cps';
@import 'lib/scale.cps';


/* set up this masters parameters (local parameters) */

@dictionary {
    point > * {
        baseMaster: S"master#base";
    }
    
    point > left, point > right {
        weightFactor: 1;
        weightProportion: 0.85;
    }
    
    point > center {
        widthFactor: 1.35;
        skeleton: base;
    }
}

@dictionary {
    center {
        f: 1.1;
        factor: f*0.98; 
        factorLL: f*0.765;
        L: 722;
        LL: 1044;
        Lx: 533;
        Lb: 800;
        Descender: 300;
        Lg: Lx + Descender;
        halfstroke: 10;
        stroke: halfstroke + halfstroke;
        Ls: L - stroke;
        Lxs: Lx - stroke;
        Lxg: Lg - stroke;
        LsB: L - halfstroke;
        LLs: LL - stroke;
        LLb: Lb - halfstroke;
        shiftfactor: factor - 1; 
        shiftfactorLL: factorLL - 1; 
        shift: L / Ls * shiftfactor * halfstroke;
        shiftb: Lb / LLb * shiftfactor * halfstroke;
        shiftR: 0;
        shiftL: L / LsB * shiftfactor * halfstroke;
        shiftg: 14;
        /*  3 -> 4,m 5 -> 9, 7 -> 14   */
        shifts: Lx / Lxs * shiftfactor * halfstroke;
        shiftLL: LL / Ls * shiftfactorLL * halfstroke;
        shiftserif: shiftfactor * 10;
        poststroke: factor * stroke /2;
        nailstroke: f * stroke /2;
        nailstrokecomp: factor * halfstroke * 0.8;
        overshoot: 5;

    }
    point > left, point > right {  
        factor: 1.1; 
        extraTension: 1.9;
        stem: 22;
        weightProportion: 0.98;
        halfstroke: 10 * factor;
        stroke: halfstroke + halfstroke;
        slab: 0.0 * stroke * weightProportion;
        wedge: (Scaling factor factor * weightProportion) * Polar onLength onDir + parent:center:on;
        overshoot: 5;
        penrotation: deg 0;
        penwidth: 1;
        weight: ((factor * stem) - stem) / 2;
        diagonal_on: (Rotation penrotation) * (Scaling 1 * penwidth 1 * penwidth * weightProportion) * Polar (onLength + weight) onDir + parent:center:on;
        branch: (Scaling factor factor * weightProportion) * Polar onLength onDir + parent:center:on;
        branchcompensation: 1 * weight;
        devacomp: (Rotation penrotation) * (Scaling factor * penwidth factor * penwidth * weightProportion) * Polar (onLength + weight) onDir + parent:center:on;
        verticalserifweight: 1;
        serifvertical: (Scaling factor * penwidth * weightProportion * verticalserifweight factor * penwidth * weightProportion) * Polar onLength onDir + parent:center:on;

    }    
}


@dictionary {
    point > center {


        scale_b_on: (Scaling widthFactor 1 * (1* (1-(stroke / Lb * factor)) / (1- stroke / Lb))) * parent:skeleton:on + Vector 0 shiftb;
        scale_b_in: (Scaling widthFactor 1 * (1* (1-(stroke / Lb * factor)) / (1- stroke / Lb))) *  parent:skeleton:in + Vector 0 shiftb;
        scale_b_out: (Scaling widthFactor 1 * (1* (1-(stroke / Lb * factor)) / (1- stroke / Lb))) * parent:skeleton:out + Vector 0 shiftb;

        scale_g_on: (Scaling widthFactor 1 * (1* (1-(stroke / Lg * factor)) / (1- stroke / Lg))) * parent:skeleton:on + Vector 0 shiftg;
        scale_g_in: (Scaling widthFactor 1 * (1* (1-(stroke / Lg * factor)) / (1- stroke / Lg))) *  parent:skeleton:in + Vector 0 shiftg;
        scale_g_out: (Scaling widthFactor 1 * (1* (1-(stroke / Lg * factor)) / (1- stroke / Lg))) * parent:skeleton:out + Vector 0 shiftg;


        scale_f_on: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lb * factor)) / (1- halfstroke / Lb))) * parent:skeleton:on + Vector 0 0;
        scale_f_in: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lb * factor)) / (1- halfstroke / Lb))) *  parent:skeleton:in + Vector 0 0;
        scale_f_out: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lb * factor)) / (1- halfstroke / Lb))) * parent:skeleton:out + Vector 0 0;


        scale_n_on: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:on + Vector 0 shiftR;
        scale_n_in: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) *  parent:skeleton:in + Vector 0 shiftR;
        scale_n_out: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:out + Vector 0 shiftR;

        scale_u_on: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:on + Vector 0 shifts;
        scale_u_in: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) *  parent:skeleton:in + Vector 0 shifts;
        scale_u_out: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:out + Vector 0 shifts;

        scale_o_on: (Scaling widthFactor 1 * (1* (1-( stroke / Lx * factor)) / (1-  stroke / Lx))) * parent:skeleton:on + Vector 0 shifts;
        scale_o_in: (Scaling widthFactor 1 * (1* (1-( stroke / Lx * factor)) / (1-  stroke / Lx))) *  parent:skeleton:in + Vector 0 shifts;
        scale_o_out: (Scaling widthFactor 1 * (1* (1-( stroke / Lx * factor)) / (1-  stroke / Lx))) * parent:skeleton:out + Vector 0 shifts;

        scale_U_on: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) * parent:skeleton:on + Vector 0 shift;
        scale_U_in: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) *  parent:skeleton:in + Vector 0 shift;
        scale_U_out: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) * parent:skeleton:out + Vector 0 shift;


        scale_B_on: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:on + Vector 0 shift;
        scale_B_in: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) *  parent:skeleton:in + Vector 0 shift;
        scale_B_out: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:out + Vector 0 shift;


        scale_Bg_on: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:on + Vector 0 shift;
        scale_Bg_in: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) *  parent:skeleton:in + Vector 0 shift;
        scale_Bg_out: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:out + Vector 0 shift;


        scaleBon: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:on + Vector 0 shift;
        scaleBin: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) *  parent:skeleton:in + Vector 0 shift;
        scaleBout: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:out + Vector 0 shift;



        scale_serif_on: (Scaling widthFactor 1 ) * parent:skeleton:on + Vector 0 shiftserif;
        scale_serif_in: (Scaling widthFactor 1 ) * parent:skeleton:in + Vector 0 shiftserif;
        scale_serif_out: (Scaling widthFactor 1 ) * parent:skeleton:out + Vector 0 shiftserif;


        scale_seriftop_on: (Scaling widthFactor 1 ) * parent:skeleton:on - Vector 0 shiftserif;
        scale_seriftop_in: (Scaling widthFactor 1 ) * parent:skeleton:in - Vector 0 shiftserif;
        scale_seriftop_out: (Scaling widthFactor 1 ) * parent:skeleton:out - Vector 0 shiftserif;

        scale_stem_on: (Scaling widthFactor 1 ) * parent:skeleton:on - Vector 0 0;
        scale_stem_in: (Scaling widthFactor 1 ) * parent:skeleton:in - Vector 0 0;
        scale_stem_out: (Scaling widthFactor 1 ) * parent:skeleton:out - Vector 0 0;

        seriflength: 60;
        diagonalserif: seriflength + (nailstroke/2);
        seriflengthvertical: 2 * seriflength;

    }
}


point > left,
point > right {
    on: (Rotation penrotation) * (Scaling factor * penwidth factor * penwidth * weightProportion) * Polar onLength onDir + parent:center:on;
}




@namespace(glyph#A) {


    @namespace(penstroke#bll, penstroke#blr, penstroke#brl, penstroke#brr) { point:i(0) > center {
        on: scale_serif_on;
        in: scale_serif_in;
        out: scale_serif_out;

}
}

@import 'serif.cps';

@namespace(penstroke#blr) { point:i(1) > center {
    on: scale_serif_on + Vector diagonalserif 0;
    in: scale_serif_in + Vector diagonalserif 0;
    out: scale_serif_out + Vector diagonalserif 0;

}
}
@namespace(penstroke#brl) { point:i(1) > center {
    on: scale_serif_on - Vector diagonalserif 0;
    in: scale_serif_in - Vector diagonalserif 0;
    out: scale_serif_out - Vector diagonalserif 0;

}
}
}



@namespace(glyph#B) {

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




@namespace(glyph#C) {

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#C penstroke#bow point:i(0) right":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

@import 'serif.cps';

/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > right {
    on: wedge - Vector 0 overshoot;
}

}





@namespace(glyph#D) {

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





@namespace(glyph#E) {

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#E penstroke#armt point:i(1) center":on;
        nailtobrt: S"master#thinwide glyph#E penstroke#armb point:i(1) center":on;
        nailtocrt: S"master#thinwide glyph#E penstroke#armc point:i(1) center":on;
        nailtocrb: S"master#thinwide glyph#E penstroke#armc point:i(1) center":on;

        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

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





@namespace(glyph#F) {

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#F penstroke#armt point:i(1) center":on;
        nailtocrt: S"master#thinwide glyph#F penstroke#armc point:i(1) center":on;
        nailtocrb: S"master#thinwide glyph#F penstroke#armc point:i(1) center":on;        
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

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





@namespace(glyph#G) {

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

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#G penstroke#bow point:i(0) right":on;
        nailtobow: S"master#thinwide glyph#G penstroke#bow point:i(4) right":on;
        nailtobary: S"master#thinwide glyph#G penstroke#bar point:i(0) right":on:y;
        nailtobarx: S"master#thinwide glyph#G penstroke#stem point:i(0) center":on:x;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}


penstroke#stem point:i(0) > center {
    on: nailtobow - Vector nailstroke 0;
    out: pointAfter:parent:center:on;

}

penstroke#stem point:i(1) > center {
    on: Vector nailtobarx nailtobary;
    in: pointBefore:parent:center:on;
}



@import 'serif.cps';

/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > right {
    on: wedge - Vector 0 overshoot;
}

}






@namespace(glyph#H) {

@namespace(penstroke#stem) { 
    point > left, point > right {
        on: diagonal_on;
        }            
}

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

penstroke#stemr point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;

}

@import 'serif.cps';

}





@namespace(glyph#I) {


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





@namespace(glyph#J) {


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

penstroke#stem point > center {
    on: scale_U_on;
    in: scale_U_in;
    out: scale_U_out;

}


@import 'serif.cps';



}



@namespace(glyph#K) {

/*
@namespace(penstroke#stem2,penstroke#stem3) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}
*/

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}

@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}

@import 'serif.cps';
}




@namespace(glyph#L) {

@dictionary {
    center {
        nailtobrt: S"master#thinwide glyph#L penstroke#arm point:i(1) center":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

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



@namespace(glyph#M) {

@namespace(penstroke#stem, penstroke#stem1, penstroke#stem2, penstroke#stem3) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}


@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3, penstroke#stem4) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}

@import 'serif.cps';
}





@namespace(glyph#N) {


@namespace(penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}


@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}

@import 'serif.cps';
}



@namespace(glyph#O) {

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}
@import 'serif.cps';


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > left {
    on: wedge - Vector 0 overshoot;
}

}





@namespace(glyph#P) {

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




@namespace(glyph#Q) {

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}
@import 'serif.cps';


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > left {
    on: wedge - Vector 0 overshoot;
}

}





@namespace(glyph#R) {


@namespace(penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}



point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@namespace(penstroke#stem, penstroke#stem2) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}

@import 'serif.cps';
}




@namespace(glyph#S) {

@dictionary {
    center {
        nailtoblt: S"master#thinwide glyph#S penstroke#bow point:i(0) right":on;   
        nailtotrb: S"master#thinwide glyph#S penstroke#bow point:i(6) left":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}

/*
penstroke#bow point:i(2) > left{
    inTension: 0.7 * extraTension * base:inTension;
    outTension: 0.7 * extraTension * base:outTension;
}

penstroke#bow point:i(4) > right{
    inTension: 0.7 * extraTension * base:inTension;
    outTension: 0.7 * extraTension * base:outTension;
}
*/

@import 'serif.cps';


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(5) > left {
    on: wedge - Vector 0 overshoot;
}
}




@namespace(glyph#dollar) {

@dictionary {
    center {
        nailtoblt: S"master#thinwide glyph#dollar penstroke#bow point:i(0) right":on;   
        nailtotrb: S"master#thinwide glyph#dollar penstroke#bow point:i(6) left":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}

/*
penstroke#bow point:i(2) > left{
    inTension: 0.8 * extraTension * base:inTension;
    outTension: 0.9 * extraTension * base:outTension;
}

penstroke#bow point:i(4) > right{
    inTension: 0.9 * extraTension * base:inTension;
    outTension: 0.8 * extraTension * base:outTension;
}
*/

@import 'serif.cps';

}







@namespace(glyph#T) {

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#T penstroke#arm point:i(1) center":on;
        nailtotlb: S"master#thinwide glyph#T penstroke#arm point:i(0) center":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

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




@namespace(glyph#U) {


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}


penstroke#bow point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;

}


@import 'serif.cps';

}



@namespace(glyph#V) {


@namespace(penstroke#stem,penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}
@import 'serif.cps';


/* diagonal serif compensation */

@namespace(penstroke#tlr) { point:i(1) > center {
    on: scale_seriftop_on + Vector diagonalserif 0;
    in: scale_seriftop_in + Vector diagonalserif 0;
    out: scale_seriftop_out + Vector diagonalserif 0;

}
}
@namespace(penstroke#trl) { point:i(1) > center {
    on: scale_seriftop_on - Vector diagonalserif 0;
    in: scale_seriftop_in - Vector diagonalserif 0;
    out: scale_seriftop_out - Vector diagonalserif 0;

}
}

}




@namespace(glyph#W) {


/*
@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3, penstroke#stem4) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}
*/


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3, penstroke#stem4) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}

@import 'serif.cps';

}





@namespace(glyph#X) {

/*
@namespace(penstroke#stem, penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}
*/

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}
@import 'serif.cps';

}



@namespace(glyph#Y) {



@namespace(penstroke#stem2, penstroke#stem3) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}
@import 'serif.cps';

}




@namespace(glyph#Z) {

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}


@dictionary {
    center {
        nailtobrt: S"master#thinwide glyph#Z penstroke#stem point:i(-1) center":on;
        nailtotlb: S"master#thinwide glyph#Z penstroke#stem point:i(0) center":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

@dictionary {
    left {
        A: pointBefore:on:y;
        B: pointAfter:on:x;
        C: S"master#thinwide glyph#Z penstroke#stem point:i(1) right":on:y;
        D: pointBefore:on:x;
    }
    right {
        A: pointAfter:on:y;
        B: pointBefore:on:x;
        C: S"master#thinwide glyph#Z penstroke#stem point:i(-1) left":on:y;
        D: pointAfter:on:x;
    }

}

/* knot 1 */

penstroke#stem point:i(2) > left {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(4) > left {
    on: Vector D C;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#stem point:i(3) > left {
    in: pointBefore:on;
    out: pointAfter:on;

    }    

/* knot 2 */

penstroke#stem point:i(7) > right {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(5) > right {
    on: Vector D C;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(6) > right {
    out: pointAfter:on;
    in: pointBefore:on;    
    }
penstroke#stem point:i(8) > right {
    in: pointBefore:on;
    out: pointAfter:on;

    }    


@import 'serif.cps';

}







/* Mean a*/

@namespace(glyph#a) {

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#bow point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}
/*
penstroke#bowlow point:i(2) > right{
    inTension: 0.6 * extraTension * base:inTension;
    outTension: 0.7 * extraTension * base:outTension;
}
*/
penstroke#bow point:i(3) > center{
    inDir: (on - in) :angle  +deg 3;
}

 @dictionary { 
    penstroke#bow point:i(3) > left, penstroke:i(0) point:i(3) > right {
        penrotation: deg -20;
        penwidth: 0.9;
    }
}

/* Serifs a*/
@dictionary {
    center {
        nailtotlb: S"master#thinwide glyph#a penstroke#bow point:i(3) right":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

penstroke#tlb point:i(0) > center{
    on: nailtotlb + Vector nailstroke 0;
}

penstroke#tlb point:i(1) > center{
    on: (Vector serifx serify) - Vector 0 seriflength;
}

penstroke#brr point:i(1) > center{
    on: (Vector serifx serify) + Vector seriflength 0;
}
penstroke#brr point:i(1) > left{
    on: wedge - Vector 0 slab;
}

@import 'serif.cps';


/* overshoot */
penstroke#bow point:i(2) > right {
    on: wedge + Vector 0 overshoot;
}
penstroke#bowlow point:i(1) > left {
    on: wedge - Vector 0 overshoot;
}


/* branch compensation */
penstroke#bowlow point:i(0) > left {
    on: branch - Vector branchcompensation 0;
}
penstroke#bowlow point:i(1) > left {
    on: branch - Vector branchcompensation 0;
}

}










/* Mean b*/

@namespace(glyph#b) {

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}

penstroke#bow point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > left {
    on: wedge - Vector 0 overshoot;
}

/* branch compensation */
penstroke#bow point:i(0) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(1) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(4) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(3) > left {
    on: branch + Vector branchcompensation 0;
}

@import 'serif.cps';

}





@namespace(glyph#c) {

point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;

}

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#c penstroke#bow point:i(0) right":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

@import 'serif.cps';

/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > right {
    on: wedge - Vector 0 overshoot;
}

}




/* Mean d*/

@namespace(glyph#d) {

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}

penstroke#bow point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > right {
    on: wedge - Vector 0 overshoot;
}


penstroke#bow point:i(0) > right {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(1) > right {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(4) > right {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(3) > right {
    on: branch - Vector branchcompensation 0;
}

@import 'serif.cps';

}






@namespace(glyph#e) {

@dictionary {
    right {
        A: pointBefore:on:y;
        B: pointAfter:on:x;
    }
}

penstroke:i(0) point:i(2) > right {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke:i(0) point:i(1) > right {
    out: pointAfter:on;
    }
penstroke:i(0) point:i(3) > right {
    in: pointBefore:on;
    }    

point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}
}




/* Mean f*/

@namespace(glyph#f) {

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}

penstroke#bow point > center {
    on: scale_f_on;
    in: scale_f_in;
    out: scale_f_out;
}

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#f penstroke#bow point:i(3) left":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

/* overshoot */
penstroke#bow point:i(2) > right {
    on: wedge + Vector 0 overshoot;
}

@import 'serif.cps';

}





@namespace(glyph#g) {
point > center {
    on: scale_g_on;
    in: scale_g_in;
    out: scale_g_out;
}

penstroke#bow2 point:i(1) > left{
    outTension: 0.5 * extraTension * base:outTension;
}
/*
penstroke#bow2 point:i(3) > right{
    inTension: 0.6 * extraTension * base:inTension;
    outTension: 0.6 * extraTension * base:outTension;
}
*/
}










@namespace(glyph#h) {

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}

penstroke#bow point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}



penstroke#bow point:i(0) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(1) > left {
    on: branch + Vector branchcompensation 0;
}



@import 'serif.cps';

}





@namespace(glyph#i) {

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}



penstroke#dot point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

@import 'serif.cps';

}





@namespace(glyph#j) {


penstroke point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}


penstroke#dot point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

penstroke#bow point > center {
    on: scale_u_on;
    in: scale_u_in;
    out: scale_u_out;
}
/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
@import 'serif.cps';

}





@namespace(glyph#k) {


/*
@namespace(penstroke#arm, penstroke#arm2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}
*/

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}


penstroke#arm point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

penstroke#arm2 point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

penstroke#trl point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}


penstroke#trr point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}


@import 'serif.cps';

}






@namespace(glyph#l) {

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

@import 'serif.cps';

}





@namespace(glyph#m) {

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}


@namespace(penstroke#bow,penstroke#bow2) { point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}
}

/* overshoot */
@namespace(penstroke#bow,penstroke#bow2) {point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
}


/* branch compensation */
penstroke#bow point:i(0) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(1) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow2 point:i(0) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow2 point:i(1) > left {
    on: branch + Vector branchcompensation 0;
}

@import 'serif.cps';

}







@namespace(glyph#n) {

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

penstroke#bow point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}

/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}


/* branch compensation */
penstroke#bow point:i(0) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(1) > left {
    on: branch + Vector branchcompensation 0;
}


@import 'serif.cps';

}






@namespace(glyph#o) {

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > left {
    on: wedge - Vector 0 overshoot;
}

@import 'serif.cps';

}




@namespace(glyph#p) {

penstroke point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > left {
    on: wedge + Vector 0 overshoot;
}



/* branch compensation */
penstroke#bow point:i(0) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(1) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(4) > left {
    on: branch + Vector branchcompensation 0;
}
penstroke#bow point:i(3) > left {
    on: branch + Vector branchcompensation 0;
}


@import 'serif.cps';

}




@namespace(glyph#q) {

penstroke point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

/* overshoot */
penstroke#bow point:i(1) > right {
    on: wedge + Vector 0 overshoot;
}
penstroke#bow point:i(3) > right {
    on: wedge + Vector 0 overshoot;
}


/* branch compensation */
penstroke#bow point:i(0) > right {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(1) > right {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(4) > right {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(3) > right {
    on: branch - Vector branchcompensation 0;
}


@import 'serif.cps';

}





@namespace(glyph#r) {

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

@dictionary {
    center {
        nailtotrb: S"master#thinwide glyph#r penstroke#bow point:i(1) center":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}


@dictionary {
penstroke#bow point:i(0) > left{
    penwidth: 0.4;
    }
  
}



@import 'serif.cps';

}





@namespace(glyph#s) {

@dictionary {
    center {
        nailtoblt: S"master#thinwide glyph#s penstroke#bow point:i(0) right":on;   
        nailtotrb: S"master#thinwide glyph#s penstroke#bow point:i(6) left":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
}

/*
penstroke#bow point:i(2) > left{
    inTension: 1 * extraTension * base:inTension;
    outTension: 0.9 * extraTension * base:outTension;
}

penstroke#bow point:i(4) > right{
    inTension: 0.9 * extraTension * base:inTension;
    outTension: 1 * extraTension * base:outTension;
}
*/

@import 'serif.cps';
}









@namespace(glyph#t) {

penstroke point > center {
    on: scale_b_on;
    in: scale_b_in;
    out: scale_b_out;
}


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge - Vector 0 overshoot;
}

@import 'serif.cps';

}





@namespace(glyph#u) {

penstroke point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
}

penstroke#stem point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}


penstroke#bow point > center {
    on: scale_u_on;
    in: scale_u_in;
    out: scale_u_out;
}


/* overshoot */
penstroke#bow point:i(1) > left {
    on: wedge - Vector 0 overshoot;
}


/* branch compensation */
penstroke#bow point:i(0) > left {
    on: branch - Vector branchcompensation 0;
}
penstroke#bow point:i(1) > left {
    on: branch - Vector branchcompensation 0;
}

@import 'serif.cps';

}




@namespace(glyph#v) {




@namespace(penstroke#stem, penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}


penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
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
penstroke#bow point:i(1) > left {
    on: wedge + Vector 0 overshoot;
}

@import 'serif.cps';

}


@namespace(glyph#w) {


@namespace(penstroke#stem, penstroke#stem2, penstroke#stem3, penstroke#stem4) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}

penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
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

penstroke#stem3 point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}

penstroke#stem4 point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}


@import 'serif.cps';

}




@namespace(glyph#x) {




@namespace(penstroke#stem, penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}


penstroke point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;
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


@import 'serif.cps';

}




@namespace(glyph#y) {



/*
@namespace(penstroke#stem, penstroke#stem2) { 
    point > left, point > right {
        on: diagonal_on;
        }   
}
*/

point > center {
    on: scale_n_on;
    in: scale_n_in;
    out: scale_n_out;
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


@import 'serif.cps';

}






@namespace(glyph#z) {

point > center {
    on: scale_o_on;
    in: scale_o_in;
    out: scale_o_out;

}


@dictionary {
    center {
        nailtobrt: S"master#thinwide glyph#z penstroke#stem point:i(-1) center":on;
        nailtotlb: S"master#thinwide glyph#z penstroke#stem point:i(0) center":on;
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

@dictionary {
    left {
        A: pointBefore:on:y;
        B: pointAfter:on:x;
        C: S"master#thinwide glyph#z penstroke#stem point:i(1) right":on:y;
        D: pointBefore:on:x;
    }
    right {
        A: pointAfter:on:y;
        B: pointBefore:on:x;
        C: S"master#thinwide glyph#z penstroke#stem point:i(-1) left":on:y;
        D: pointAfter:on:x;
    }

}

/* knot 1 */

penstroke#stem point:i(2) > left {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(4) > left {
    on: Vector D C;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#stem point:i(3) > left {
    in: pointBefore:on;
    out: pointAfter:on;

    }    

/* knot 2 */

penstroke#stem point:i(7) > right {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(5) > right {
    on: Vector D C;
    in: pointBefore:on;
    out: pointAfter:on;
    }

penstroke#stem point:i(6) > right {
    out: pointAfter:on;
    in: pointBefore:on;    
    }
penstroke#stem point:i(8) > right {
    in: pointBefore:on;
    out: pointAfter:on;

    }    


@import 'serif.cps';

}




/* deva */



@namespace(glyph#uni0904) {

@dictionary {
    center {
        nailtoblt: S"master#thinwide glyph#uni0904 penstroke#bow point:i(0) right":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

/*
penstroke#armtop point:i(2) > right{
    inTension: 0.8 * extraTension * base:inTension;
}
*/

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




@namespace(glyph#khadeva) {

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


@dictionary {
penstroke#bow point:i(0) > right{
    penwidth: 0.4;
    }
penstroke#bow point:i(4) > right{
    penwidth: 0.4;
    }    
penstroke#bow point:i(2) > right{
    penwidth: 0.9;
    }   
penstroke#bow2 point:i(0) > right, penstroke#bow2 point:i(1) > left{
    penwidth: 0.9;
    }   
penstroke#bow2 point:i(1) > right, penstroke#bow2 point:i(1) > left{
    penwidth: 0.8;
    }       
}


@import 'serif.cps';
}






@namespace(glyph#ideva) {

/* knot */
@dictionary {
    left {
        A: pointBefore:on:x;
        B: pointAfter:on:y;
    }
}
penstroke#bow point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#bow point:i(3) > left {
    in: pointBefore:on;
    }    

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

penstroke#bow2 point:i(2) > right{
    outTension: 0.9 * extraTension * base:outTension;
}

@import 'serif.cps';
}





@namespace(glyph#edeva) {

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




@namespace(glyph#ddhadeva) {


/* knot */
@dictionary {
    left {
        A: pointBefore:on:x;
        B: pointAfter:on:y;
    }
}
penstroke#bow point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#bow point:i(3) > left {
    in: pointBefore:on;
    }    


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





@namespace(glyph#ddhadeva_viramadeva_ddhadeva) {


/* knot */
@dictionary {
    left {
        A: pointBefore:on:x;
        B: pointAfter:on:y;
    }
}
penstroke#bow point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#bow point:i(3) > left {
    in: pointBefore:on;
    }    

penstroke#bow2 point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow2 point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#bow2 point:i(3) > left {
    in: pointBefore:on;
    }    


/*
penstroke#bow point:i(5) > left{
    inTension: 0.6 * extraTension * base:inTension;
    outTension: 0.6 * extraTension * base:outTension;
}

penstroke#bow2 point:i(5) > left{
    inTension: 0.6 * extraTension * base:inTension;
    outTension: 0.6 * extraTension * base:outTension;
}
*/

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




@namespace(glyph#tadeva) {


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



@namespace(glyph#thadeva) {


/* knot */
@dictionary {
    right {
        A: pointAfter:on:x;
        B: pointBefore:on:y;
    }
}
penstroke#bow point:i(5) > right {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow point:i(4) > right {
    out: pointAfter:on;
    }
penstroke#bow point:i(6) > right {
    in: pointBefore:on;
    }    



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


@dictionary {
penstroke#bow point:i(-1) > right{
    penwidth: 0.8;
    }  
}



@import 'serif.cps';
}




@namespace(glyph#dhadeva) {

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


@namespace(glyph#bhadeva) {

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


@namespace(glyph#ssadeva) {

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


@namespace(glyph#aadeva) {


@dictionary {
    center {
        nailtoblt: S"master#thinwide glyph#aadeva penstroke#bow point:i(0) right":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}

@namespace(penstroke#stem, penstroke#stem2) { point > center {
    on: scale_stem_on;
    in: scale_stem_in;
    out: scale_stem_out;
}
}

@import 'serif.cps';
}






@namespace(glyph#uni0921094D092F) {

/* knot */
@dictionary {
    right {
        A: pointAfter:on:x;
        B: pointBefore:on:y;
    }
}
penstroke#bow point:i(4) > right {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow point:i(3) > right {
    out: pointAfter:on;
    }
penstroke#bow point:i(5) > right {
    in: pointBefore:on;
    }    


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

/*
penstroke#bow point:i(2) > right{
    inTension: 0.9 * extraTension * base:inTension;
    outTension: 1 * extraTension * base:outTension;
}

penstroke#bow2 point:i(2) > left{
    inTension: 0.8 * extraTension * base:inTension;
}
*/

@import 'serif.cps';
}






@namespace(glyph#adeva) {


@dictionary {
    center {
        nailtoblt: S"master#thinwide glyph#adeva penstroke#bow point:i(0) right":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}


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



@namespace(glyph#uni0922094D0922094D092F) {


/* knot */
@dictionary {
    right {
        A: pointAfter:on:x;
        B: pointBefore:on:y;
    }
    left {
        A: pointBefore:on:x;
        B: pointAfter:on:y;
    }    
}
penstroke#bow point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#bow point:i(3) > left {
    in: pointBefore:on;
    }    


penstroke#bow2 point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow2 point:i(1) > left {
    out: pointAfter:on;
    }
penstroke#bow2 point:i(3) > left {
    in: pointBefore:on;
    }    


penstroke#bow3 point:i(4) > right {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke#bow3 point:i(3) > right {
    out: pointAfter:on;
    }
penstroke#bow3 point:i(5) > right {
    in: pointBefore:on;
    }    



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

/*
penstroke#bow3 point:i(2) > right{
    inTension: 0.8 * extraTension * base:inTension;
    outTension: 0.8 * extraTension * base:outTension;
}

penstroke#bow point:i(5) > left{
    inTension: 0.7 * extraTension * base:inTension;
    outTension: 0.7 * extraTension * base:outTension;

}

penstroke#bow2 point:i(5) > left{
    inTension: 0.7 * extraTension * base:inTension;
    outTension: 0.7 * extraTension * base:outTension;

}
*/

/*
@dictionary {  
penstroke#bow point:i(-2) > right, penstroke#bow point:i(-2) > left{
    penwidth: 0.7;
    }   
penstroke#bow point:i(-4) > right, penstroke#bow point:i(-4) > left{
    penwidth: 0.7;
    }  
penstroke#bow2 point:i(-2) > right, penstroke#bow2 point:i(-2) > left{
    penwidth: 0.7;
    }   
penstroke#bow2 point:i(-4) > right, penstroke#bow2 point:i(-4) > left{
    penwidth: 0.7;
    }           
}
*/

@import 'serif.cps';

}









@namespace(glyph#bracketleft, glyph#bracketright) {


/* knot */
@dictionary {
    left {
        A: pointAfter:on:x;
        B: pointBefore:on:y;
        C: pointBefore:on:x;
        D: pointAfter:on:y;
    }
}
penstroke point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke point:i(1) > left {
    out: pointAfter:on;
    }
penstroke point:i(3) > left {
    in: pointBefore:on;
    }    
/* knot */

penstroke point:i(5) > left {
    on: Vector C D;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke point:i(4) > left {
    out: pointAfter:on;
    }
penstroke point:i(6) > left {
    in: pointBefore:on;
    }    


point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;

}
}



@namespace(glyph#percent) {

point > center {
    on: scale_B_on;
    in: scale_B_in;
    out: scale_B_out;
}
}





@import 'deva.cps';


@namespace(glyph#dollar) {

@dictionary {
    center {
        nailtoblt: S"master#thinwide .right-blt > right":on;   
        nailtotrb: S"master#thinwide .left-trb > left":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}

@import 'generic.cps';
}


@namespace(glyph#two) {

@dictionary {
    center {
        nailtobrt: S"master#thinwide .left-brt > left":on;   
        serifx: pointBefore:on:x;
        serify: pointBefore:on:y;
    }
}
}


@namespace(glyph#jadeva) {

@import 'generic.cps';
@import 'serif.cps';

}

@namespace(glyph#uni0926094D09300942) {

@import 'generic.cps';
@import 'serif.cps';

}



/* adjusting dots*/

@dictionary {
penstroke#dot point > left, penstroke#dot point > right {
    penwidth: 0.7;
    }
penstroke#dot2 point > left, penstroke#dot2 point > right {
    penwidth: 0.7;
    }
}



/* override opening terminal*/

point:i(0) > left {
    in: parent:right:on;
}

point:i(0) > right {
    in: parent:left:on;
}


/*closing terminal*/

point:i(-1) > right {
    out: parent:left:on;
}

point:i(-1) > left {
    out: parent:right:on 
}




