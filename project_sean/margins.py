font = CurrentFont()

for g in font:
    g.round()
    g.leftMargin =0
    g.rightMargin =0    
    g.update()