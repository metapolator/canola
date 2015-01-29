to deva.cps: @import 'postedit_dvHA.cps';




point.left-1 > left {
        posteditx: 0; 
        postedity: 0;
    }

point.right-1 > right {  
        posteditx: 0; 
        postedity: 0;
    }


1. compare xml
2. i nummerate differented points and give number i as name values to that point
3. write differences in x and y for each point i to glyphname.cps file (see example above)
4. keep i names stored in final-post.glif

sh reload:
get pointnames from final-post-glyphname.glif and copy to fresh .glif
