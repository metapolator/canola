font = CurrentFont()

for g in font:
    g.round()
    g.extremePoints()
    g.removeOverlap()    
    g.update()