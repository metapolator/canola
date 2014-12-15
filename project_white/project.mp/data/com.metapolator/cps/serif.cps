
@namespace(penstroke#bll, penstroke#brl, penstroke#bcl) { point:i(1) > center {
    on: scale_serif_on - Vector seriflength 0;
    in: scale_serif_in - Vector seriflength 0;
    out: scale_serif_out - Vector seriflength 0;

}
}

@namespace(penstroke#blr, penstroke#brr, penstroke#bcr) { point:i(1) > center {
    on: scale_serif_on + Vector seriflength 0;
    in: scale_serif_in + Vector seriflength 0;
    out: scale_serif_out + Vector seriflength 0;

}
}

    @namespace(penstroke#tll, penstroke#trl, penstroke#tcl) { point:i(1) > center {
    on: scale_seriftop_on - Vector seriflength 0;
    in: scale_seriftop_in - Vector seriflength 0;
    out: scale_seriftop_out - Vector seriflength 0;

}
}

    @namespace(penstroke#tlr, penstroke#trr, penstroke#tcr) { point:i(1) > center {
    on: scale_seriftop_on + Vector seriflength 0;
    in: scale_seriftop_in + Vector seriflength 0;
    out: scale_seriftop_out + Vector seriflength 0;

}
}




/* Vertical Serifs */
 
penstroke#trb point:i(0) > center {
    on: nailtotrb - Vector nailstroke 0;

}

penstroke#tlb point:i(0) > center {
    on: nailtotlb + Vector nailstroke 0;

}

penstroke#blt point:i(0) > center {
    on: nailtoblt + Vector nailstroke 0;

}

penstroke#brt point:i(0) > center {
    on: nailtobrt - Vector nailstroke 0;

}

penstroke#crt point:i(0) > center {
    on: nailtocrt - Vector nailstroke 0;

}

penstroke#crb point:i(0) > center {
    on: nailtocrb - Vector nailstroke 0;

}


/* endings vertical */

@namespace(penstroke#trb, penstroke#crb, penstroke#tlb) { point:i(1) > center{
    on: (Vector serifx serify) - Vector 0 seriflengthvertical;
}
}

@namespace(penstroke#brt, penstroke#crt, penstroke#blt) { point:i(1) > center{
    on: (Vector serifx serify) + Vector 0 seriflengthvertical;
}
}

/* in */

@namespace(penstroke#trb, penstroke#tlb, penstroke#brt, penstroke#crt, penstroke#crb, penstroke#tll, penstroke#trl, penstroke#brr,  penstroke#blt, penstroke#bcr, penstroke#bcl, penstroke#blr, penstroke#tcl) { point:i(1) > left {
    in: pointBefore:parent:left:on;
}
}

@namespace(penstroke#trb, penstroke#tlb, enstroke#brt, penstroke#crt, penstroke#crb, penstroke#bll, penstroke#tlr, penstroke#trr, penstroke#blt, penstroke#blr, penstroke#bcl, penstroke#bcr, penstroke#brl, penstroke#tcr, penstroke#brt) { point:i(1) > right {
    in: pointBefore:parent:right:on;
}
}

/* out */

@namespace(penstroke#trb,  penstroke#tlb, penstroke#brt, penstroke#crt, penstroke#crb, penstroke#bll, penstroke#tlr,penstroke#blt, penstroke#bcr, penstroke#trr, penstroke#bcl, penstroke#brl, penstroke#tcr) { point:i(0) > right {
    out: pointAfter:parent:right:on;
}
}
@namespace(penstroke#trb, penstroke#tlb, penstroke#brt, penstroke#crt, penstroke#crb, penstroke#tll, penstroke#trl, penstroke#bcr, penstroke#blt, penstroke#bcl, penstroke#blr, penstroke#brr, penstroke#tcl) { point:i(0) > left {
    out: pointAfter:parent:left:on 
}
}

/* serif wedge*/

@namespace(penstroke#trb, penstroke#crb) { point:i(1) > right {
    on: wedge + Vector slab 0;
}
}
@namespace(penstroke#tlb) { point:i(1) > left {
    on: wedge - Vector slab 0;
}
}

@namespace(penstroke#brt, penstroke#crt, penstroke#blt) { point:i(1) > left {
    on: wedge + Vector slab 0;
}
}

@namespace(penstroke#tlr, penstroke#trr, penstroke#tcr) { point:i(1) > right {
    on: wedge + Vector 0 slab;
}
}

@namespace(penstroke#tll, penstroke#trl, penstroke#tcl) { point:i(1) > left {
    on: wedge + Vector 0 slab;
}
}

@namespace(penstroke#bll, penstroke#brl, penstroke#bcl) { point:i(1) > right {
    on: wedge - Vector 0 slab;
}
}

@namespace(penstroke#blr, penstroke#brr, penstroke#bcr) { point:i(1) > left{
    on: wedge - Vector 0 slab;
}
}

/* switch serifs off */

/*

@namespace(penstroke#bll, penstroke#blt, penstroke#blr, penstroke#bcl, penstroke#bcr, penstroke#brl, penstroke#brr, penstroke#brt,penstroke#tlb,penstroke#tll,penstroke#tlr, penstroke#tcl, penstroke#tcr, penstroke#trl, penstroke#trr, penstroke#trb, penstroke#crt, penstroke#crb ) { point:i(1) > center {

    on: pointBefore:on;

}
}

*/





