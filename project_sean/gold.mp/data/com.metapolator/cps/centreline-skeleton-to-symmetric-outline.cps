* {
}

component {
    transformation: originalTransformation;
}

point > center {
    on: parent:skeleton:on;
    in: parent:skeleton:in;
    out: parent:skeleton:out;
    inDir: (on - in):angle;
    outDir: (out - on):angle;
}

@dictionary {
point > * {
    pointBefore: parent:parent:children[parent:index - 1][this:type];
    pointAfter: parent:parent:children[parent:index+1][this:type];
}
}

point > left,
point > right {
    on: Polar onLength onDir + parent:center:on;
    in: tension2controlIn pointBefore:on pointBefore:outDir inTension inDir on;
    out: tension2controlOut on outDir outTension pointAfter:inDir pointAfter:on;
    inDir: inDirIntrinsic + parent:center:inDir;
    outDir: outDirIntrinsic + parent:center:outDir;
}

point > left {
    onDir: deg 180 + parent:right:onDir;
    onLength: parent:right:onLength;
}

/*opening terminal*/

point:i(0) > left {
    in: tension2controlOut on (inDir + deg 180) inTension parent:right:inDir parent:right:on;
}

point:i(0) > right {
    in: tension2controlIn parent:left:on (parent:left:inDir  + deg 180) inTension inDir on;
}

/*closing terminal*/

point:i(-1) > right {
    out: tension2controlOut on outDir outTension (parent:left:outDir + deg 180) parent:left:on;
}

point:i(-1) > left {
    out: tension2controlIn parent:right:on parent:right:outDir outTension (outDir + deg 180) on;
}