import os
import xml.etree.ElementTree as ET
from xml.etree.ElementTree import ElementTree

## Script to import point names (point labels from Robofont) from UFO v2 as outline identifiers.
## Change dirname "mop.mp" to your metapolator project name

def buildfname ( filename ):
    try :
      basename,extension = filename.split('.')
    except :
           extension="garbage"
           basename=""
    return [basename,extension]


print ">>>>> importing point names (point labels from Robofont) from UFO v2 as outline identifiers. If more than one found only the first will be taken"


dirname="project.mp/glyphs.skeleton.base/"

filelist =  [fn for fn in os.listdir(dirname) ]
print "filelist ",filelist
for fn in filelist:
	basefn,extens=buildfname(fn)
	if extens == 'glif':

		basename="project.mp/glyphs.skeleton.base/"+fn
		print fn
		print basename

		tree = ET.parse(basename)
		root = tree.getroot()



		for contour in root.iter("contour"):

			for point in contour.iter("point"):
				name = point.attrib.get("name")
				if name is not None:
					contour.set("identifier", name)	
					print name

		f = open("project.mp/glyphs.skeleton.base/"+fn, "w")

		tree.write(f, encoding='utf-8', xml_declaration=True) 
		f.close()

		print "Done!"

