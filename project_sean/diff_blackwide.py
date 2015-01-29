import os
import xml.etree.ElementTree as ET


def buildfname ( filename ):
    try :
      basename,extension = filename.split('.')
    except :
           extension="garbage"
           basename=""
    return [basename,extension]


dirname_pre="./pre/blackwide.ufo/glyphs/"
dirname_post="./post/blackwide.ufo/glyphs/"
dirname_diff="./diff/blackwide.ufo/glyphs/"

print ">>>>> saving post edit ", dirname_post

filelist =  [fn for fn in os.listdir(dirname_pre)]
# print "filelist ",filelist
for fn in filelist:
    basefn,extens=buildfname(fn)
    if extens == 'glif':

        basename="./pre/blackwide.ufo/glyphs/"+fn
        basename_post="./post/blackwide.ufo/glyphs/"+fn

    #    print fn
    #    print basename
    #    print basename_post

        tree1 = ET.parse(basename)
        root1 = tree1.getroot()

        tree2 = ET.parse(basename_post)
        root2 = tree2.getroot()


        listx1=[]
        listy1=[]
        for point in root1.iter('point'):
            x1 = float(point.get('x'))
            y1 = float(point.get('y'))
            listx1.append(x1)
            listy1.append(y1)

        listx2=[]
        listy2=[]
        for point in root2.iter('point'):
            x2 = float(point.get('x'))
            y2 = float(point.get('y'))
            listx2.append(x2)
            listy2.append(y2)

        Lx1=tuple(listx1) 
        Lx2=tuple(listx2) 
        Ly1=tuple(listy1) 
        Ly2=tuple(listy2) 

        Lxn1=iter(Lx1)
        Lxn2=iter(Lx2)
        Lyn1=iter(Ly1)
        Lyn2=iter(Ly2)

        l=0

        while (l < len(Lx1)):
            for point in root1.iter('point'):
                l=l+1
                ix2=Lxn2.next()
                ix1=Lxn1.next()
                iy2=Lyn2.next()
                iy1=Lyn1.next()

                zx = ix2 - ix1
                zy = iy2 - iy1

    #            print 'diff value x:', zx, 'diff value y:', zy
                point.set('x', str(zx))
                point.set('y', str(zy))


        f = open(dirname_diff+fn, "w")
        tree1.write(f, encoding='utf-8', xml_declaration=True) 
        f.close()

  #      print "Done!"


