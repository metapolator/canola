## Rendering the Super Family


#####Character Status
563 of the 721 characters are drawn and waiting to be processed with Metapolator/RedPill. The missing 158 glyphs are mainly math symbols and devanagari ligatures as the uni093F series. So we will start generating the super family and complete the set once sucsessfully tested.

The main branches of the family are `Sans`, `Slab Serif` and `Stencil`

![image](slabsanssten.png)

All `.cps` files has been updated and includes now the `@import` method.


#####First batch

A first batch of the complete family can be reviewed. The glyph range has been limited to 90 characters due processing time. 
Please open the `.html` testpages from `/project_sean/ttf_instances` on your local machine and use Chrome as only `.ttf` has been generated so far.

![image](sans.png)

![image](slab.png)

Stencil (comming...)
<!--[Stencil](http://metapolator.github.io/sean/sten.html)-->


##### Issues

Known issues:

- no spacing yet. L and Right side bearings set equally.
- adjusting stroke angle on start and endings according to width.
- remove spikes on K, k etc.
- diagonal black compensation in A, W, M, w, etc.
- change small loops into closed knots in deva glyphs


Black: 
	
- increasing penwidth on capitals, make them darker. 
- too dark on some glyphs, stroke overlaps.

Compressed:
 
- could be more "compressed" 