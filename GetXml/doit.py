f = open('mywallpapers.xml', 'r')
fout = open('wallpapers.xml', 'w')

first = '03207_aragolighthouse_3840x2400.jpg'
line = '03207_aragolighthouse_3840x2400.jpg'

def output(line, move):
    print >> fout, "  <static>"
    print >> fout, "    <duration>1800.0</duration>"
    print >> fout, "    <file>/usr/share/backgrounds/"+line+"</file>"
    print >> fout, "  </static>"
    print >> fout, "  <transition>"
    print >> fout, "    <duration>5.0</duration>"
    print >> fout, "    <from>/usr/share/backgrounds/" + line + "</from>"
    print >> fout, "    <to>/usr/share/backgrounds/" + move + "</to>"
    print >> fout, "  </transition>"

for move in f.readlines():
    move=move.strip('\n')
    output(line, move)
    line = move
output(line, first)

f.close()
fout.close()
