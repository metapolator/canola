/* set up this masters parameters */
@dictionary {
    point > * {
        baseMaster: S"master#base";
    }
    
    point > left, point > right {
        weightFactor: .5;
    }
    
    point > center {
        widthFactor: .5;
        skeleton: base;
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







