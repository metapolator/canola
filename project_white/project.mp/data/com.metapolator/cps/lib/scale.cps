/* scale the skeleton */
@dictionary {
    point>center {
        transform: (Scaling widthFactor heightFactor);
        translate: (Translation xTranslate yTranslate);
    }
}

point > center {
    on: transform * translate * skeleton:on;
    in: transform * translate * skeleton:in;
    out: transform * translate * skeleton:out;
}

/* define  higher level parameters */
@dictionary{
    point > center {
        widthFactor: 1;
        xTranslate: 0;
        yTranslate: 0;
        heightFactor: 1;
        /* "skeleton" will have to provide
         * Vectors at its the keys "on|in|out"
         */
        skeleton: parent:skeleton;
    }
}
