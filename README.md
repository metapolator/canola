Sean Sans
====


## extending a font into a font family

Sean is the first typeface family being produced with Metapolator's developer environment *RedPill*. 
On the following pages some techniques are described to work with *RedPill* and how to generate a font family from one master font. In the case of Sean Sans, the master has been drawn as a *Hairline* style thus the shapes are very close to the skeleton. Some of the solutions are tail-ordered for this typeface specifically and some might be more generic.

##### Tool used in the process
- Metapolator
- Robofont
- Terminal (Command line OSX)
- Firefox

I'm evaluating the font from time to time in RedPill's web interface. Though due the long loading times I use Robofont to check Metapolator's output.

Once Metapolator installed we can initialize a new project in our local directory:

	metapolator init 'project-name'

from within the new project folder a master can be imported as *base.cps*:

	metapolator import ../mymaster.ufo base	
	
To verify the font has been imported successfully we can export our base:

	metapolator export base myfirstfont.ufo	

And we should get a copy of the original.



######[Setting up *Black Wide*](https://github.com/metapolator/sean/blob/master/notes/blackwide.md)
######[Setting up *Thin Wide*](https://github.com/metapolator/sean/blob/master/notes/thinwide.md)
######[Interpolating *Thin Wide* and *Black Wide*](https://github.com/metapolator/sean/blob/master/notes/interpolating.md)
######[Setting up *Thin Compressed* and *Black Compressed*](https://github.com/metapolator/sean/blob/master/notes/thincompressed.md.md)
######[Joints and Knots](https://github.com/metapolator/sean/blob/master/notes/knots.md)


![alt tag](https://raw.githubusercontent.com/metapolator/sean/325e84da9f1dc7b098bcbaa05c8edc651013f73e/sean.png)


## License
© 2014 Simon Egli. *Sean Sans* is designed and developed by Simon Egli. 
*Sean Sans* is licensed under the SIL Open Font License v1.1 (<http://scripts.sil.org/OFL>)


