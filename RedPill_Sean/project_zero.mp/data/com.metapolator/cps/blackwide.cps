/* set up this masters parameters */
@dictionary {
    point > * {
        baseMaster: S"master#base";
    }
    
    point > left, point > right {
        weightFactor: 1;
        weightProportion: 0.85;

    }
    
    point > center {
        widthFactor: 1.4;
        skeleton: base;
    }
}


/* Glyphs */

@dictionary {
    center {
        factor: 7*0.85; 
        L: 722;
        Lx: 533;
        halfstroke: 10;
        stroke: halfstroke + halfstroke;
        Ls: L - stroke;
        Lxs: Lx - stroke;
        LsB: L - halfstroke;
        shiftfactor: factor - 1; 
        shift: L / Ls * shiftfactor * halfstroke;
        shiftR: 0;
        shiftL: L / LsB * shiftfactor * halfstroke;
        shifts: Lx / Lxs * shiftfactor * halfstroke;
        poststroke: factor * stroke /2;


    }
    point > left, point > right {
        factor: 7; 
        extraTension: 1.9;
        weightProportion: 0.85;

    }    
}

point > left,
point > right {
    on: (Scaling factor factor * weightProportion) * Polar onLength onDir + parent:center:on;
    }


/* Capitals Double*/

@namespace(glyph#B, glyph#ddhadeva, glyph#ddhadeva_viramadeva_ddhadeva, glyph#aadeva, glyph#adeva, glyph#aideva, glyph#audeva, glyph#uni0926094D092D0941, glyph#uni0922094D0922094D092F, glyph#avagrahadeva) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:on + Vector 0 shift;
    in: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) *  parent:skeleton:in + Vector 0 shift;
    out: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:out + Vector 0 shift;
}
}


@namespace(glyph#B, glyph#B) {

penstroke:i(0) point > center {
    on: (Scaling widthFactor 1) * parent:skeleton:on;
    in: (Scaling widthFactor 1) * parent:skeleton:in;
    out: (Scaling widthFactor 1) * parent:skeleton:out;
}
}

@namespace(glyph#uni0921094D092F) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:on + Vector 0 shift;
    in: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) *  parent:skeleton:in + Vector 0 shift;
    out: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:out + Vector 0 shift;
}

penstroke:i(0) point > center {
    on: (Scaling widthFactor 1) * parent:skeleton:on;
    in: (Scaling widthFactor 1) * parent:skeleton:in;
    out: (Scaling widthFactor 1) * parent:skeleton:out;
}



/* Tension compensation */

    penstroke:i(6) point:i(2) > right {
        inTension: 1.1 * extraTension * base:inTension;
        outTension: 1.1 * extraTension * base:outTension;
    }
    penstroke:i(4) point:i(2) > left {
        inTension: 0.8 * extraTension * base:inTension;
        outTension: 0.8 * extraTension * base:outTension;
    }




/* Corner Stone */

@dictionary {
    right {
        A: S"glyph#uni0921094D092F penstroke:i(6) point:i(3) right":on:y;
        B: S"glyph#uni0921094D092F penstroke:i(6) point:i(5) right":on:x;
    }
}

penstroke:i(6) point:i(4) > right {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke:i(6) point:i(3) > right {
    out: pointAfter:on;
    }
penstroke:i(6) point:i(5) > right {
    in: pointBefore:on;
    }    

}


@namespace(glyph#uni0922094D0922094D092F) {

@dictionary {
    right {
        A: S"glyph#uni0922094D0922094D092F penstroke:i(4) point:i(3) right":on:y;
        B: S"glyph#uni0922094D0922094D092F penstroke:i(4) point:i(5) right":on:x;
    }
    left {
        A: S"glyph#uni0922094D0922094D092F penstroke:i(5) point:i(1) left":on:x;
        B: S"glyph#uni0922094D0922094D092F penstroke:i(5) point:i(3) left":on:y;
    }
}


penstroke:i(4) point:i(4) > right {
    on: Vector B A;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke:i(4) point:i(3) > right {
    out: pointAfter:on;
    }
penstroke:i(4) point:i(5) > right {
    in: pointBefore:on;
    }  



penstroke:i(5) point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
penstroke:i(5) point:i(1) > left {
    out: pointAfter:on;
    }
penstroke:i(5) point:i(3) > left {
    in: pointBefore:on;
    } 



point > left,
point > right {
    on: (Scaling factor factor * 0.9 * weightProportion) * Polar onLength onDir + parent:center:on;
    }

    penstroke:i(4) point:i(2) > right {
        inTension: 1.1 * extraTension * base:inTension;
        outTension: 1.1 * extraTension * base:outTension;
    }
    penstroke:i(5) point:i(5) > left {
        inTension: 0.7 * extraTension * base:inTension;
        outTension: 0.7 * extraTension * base:outTension;
    }
    penstroke:i(5) point:i(7) > left {
        inTension: 0.7 * extraTension * base:inTension;
        outTension: 0.7 * extraTension * base:outTension;
    }
    penstroke:i(5) point:i(9) > left {
        inTension: 0.7 * extraTension * base:inTension;
        outTension: 0.7 * extraTension * base:outTension;
    }
    penstroke:i(1) point:i(2) > left {
        inTension: 0.7 * extraTension * base:inTension;
        outTension: 0.7 * extraTension * base:outTension;
    }
    penstroke:i(1) point:i(4) > left {
        inTension: 0.7 * extraTension * base:inTension;
        outTension: 0.7 * extraTension * base:outTension;
    }    
    penstroke:i(1) point:i(6) > left {
        inTension: 0.7 * extraTension * base:inTension;
        outTension: 0.7 * extraTension * base:outTension;
    }    


}

















/* Corner Stone */
@namespace(glyph#ddhadeva) {

@dictionary {
    left {
        A: S"glyph#ddhadeva penstroke:i(1) point:i(1) left":on:x;
        B: S"glyph#ddhadeva penstroke:i(1) point:i(3) left":on:y;
    }
}

penstroke:i(1) point:i(2) > left {
    on: Vector A B;
    in: pointBefore:on;
    out: pointAfter:on;
    }
   penstroke:i(1) point:i(1) > left {
    out: pointAfter:on;
    }
penstroke:i(1) point:i(3) > left {
    in: pointBefore:on;
    } 
}






/* Capitals Double 1stroke*/

@namespace(glyph#O) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:on + Vector 0 shift;
    in: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) *  parent:skeleton:in + Vector 0 shift;
    out: (Scaling widthFactor 1 * (1* (1-(stroke / L * factor)) / (1- stroke / L))) * parent:skeleton:out + Vector 0 shift;
}
}


/* Capitals Single Upper*/

@namespace(glyph#R) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) * parent:skeleton:on + Vector 0 shiftR;
    in: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) *  parent:skeleton:in + Vector 0 shiftR;
    out: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) * parent:skeleton:out + Vector 0 shiftR;
}

penstroke:i(0) point > center {
    on: (Scaling widthFactor 1) * parent:skeleton:on;
    in: (Scaling widthFactor 1) * parent:skeleton:in;
    out: (Scaling widthFactor 1) * parent:skeleton:out;
}
}


/* Capitals Single Lower*/

@namespace(glyph#L) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) * parent:skeleton:on + Vector 0 shiftL;
    in: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) *  parent:skeleton:in + Vector 0 shiftL;
    out: (Scaling widthFactor 1 * (1* (1-(halfstroke / L * factor)) / (1- halfstroke / L))) * parent:skeleton:out + Vector 0 shiftL;
}

penstroke:i(0) point > center {
    on: (Scaling widthFactor 1) * parent:skeleton:on;
    in: (Scaling widthFactor 1) * parent:skeleton:in;
    out: (Scaling widthFactor 1) * parent:skeleton:out;
}
}


/* Mean Single Upper*/

@namespace(glyph#n) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:on + Vector 0 shiftR;
    in: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) *  parent:skeleton:in + Vector 0 shiftR;
    out: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:out + Vector 0 shiftR;
}

penstroke:i(0) point > center {
    on: (Scaling widthFactor 1) * parent:skeleton:on;
    in: (Scaling widthFactor 1) * parent:skeleton:in;
    out: (Scaling widthFactor 1) * parent:skeleton:out;
}
}


/* Mean Single Double*/

@namespace(glyph#s) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(stroke / Lx * factor)) / (1- stroke / Lx))) * parent:skeleton:on + Vector 0 shifts;
    in: (Scaling widthFactor 1 * (1* (1-(stroke / Lx * factor)) / (1- stroke / Lx))) *  parent:skeleton:in + Vector 0 shifts;
    out: (Scaling widthFactor 1 * (1* (1-(stroke / Lx * factor)) / (1- stroke / Lx))) * parent:skeleton:out + Vector 0 shifts;
}

point:i(2) > left{
    inTension: extraTension * base:inTension;
    outTension: extraTension * base:outTension;
}

point:i(4) > right{
    inTension: extraTension * base:inTension;
    outTension: extraTension * base:outTension;
}
}
 


/* Corner Stone */
@namespace(glyph#e) {

@dictionary {
    right {
        A: S"glyph#e penstroke:i(0) point:i(1) right":on:y;
        B: S"glyph#e penstroke:i(0) point:i(3) right":on:x;
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
}










@namespace(glyph#e) {

point > center {
    on: (Scaling widthFactor 1 * (1* (1-(stroke / Lx * factor)) / (1- stroke / Lx))) * parent:skeleton:on + Vector 0 shifts;
    in: (Scaling widthFactor 1 * (1* (1-(stroke / Lx * factor)) / (1- stroke / Lx))) *  parent:skeleton:in + Vector 0 shifts;
    out: (Scaling widthFactor 1 * (1* (1-(stroke / Lx * factor)) / (1- stroke / Lx))) * parent:skeleton:out + Vector 0 shifts;
}
}



/* Mean a*/

@namespace(glyph#a) {

penstroke:i(1) point > center {
    on: (Scaling widthFactor 1 * (1* (1-( stroke / Lx * factor)) / (1-  stroke / Lx))) * parent:skeleton:on + Vector 0 shifts;
    in: (Scaling widthFactor 1 * (1* (1-( stroke / Lx * factor)) / (1-  stroke / Lx))) *  parent:skeleton:in + Vector 0 shifts;
    out: (Scaling widthFactor 1 * (1* (1-( stroke / Lx * factor)) / (1-  stroke / Lx))) * parent:skeleton:out + Vector 0 shifts;
}

penstroke:i(0) point > center {
    on: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:on + Vector 0 shiftR;
    in: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) *  parent:skeleton:in + Vector 0 shiftR;
    out: (Scaling widthFactor 1 * (1* (1-(halfstroke / Lx * factor)) / (1- halfstroke / Lx))) * parent:skeleton:out + Vector 0 shiftR;
}

penstroke:i(1) point:i(2) > right{
    inTension: 0.7 * extraTension * base:inTension;
    outTension: 0.7 * extraTension * base:outTension;
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




