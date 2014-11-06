## Adding contrast

First I add the variable `weightProportion` to the dictionary

	@dictionary {		
	    point > left, point > right {
	        weightFactor: 1;
	        weightProportion: 0.85;
	    }
	}    
    
    
and rotate the upper stroke of the `a` by `-30` degrees and flaten its direction by `5`:

	
	penstroke:i(0) point:i(3) > center{
	    inDir: (on - in) :angle  - deg 5;
	}
	
	penstroke:i(0) point:i(3) > left, penstroke:i(0) point:i(3) > right {
	    on: (Rotation deg -30) * (Scaling factor factor * 0.85* weightProportion) * Polar onLength onDir + parent:center:on;
	}    
	
	
	
using a `weightFactor` of `9` *Normal Black* gets pretty dark:


![image](ablack.png)	

So I'm plotting `weightProportion` values `0.85` `0.80` `0.75` `0.70` `0.65` `0.60`: 

![image](rangeblack.png)	

[back home](https://github.com/metapolator/sean)