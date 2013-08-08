def = all
name = merged

gerbers = $(name).gbl $(name).gbo $(name).gbs $(name).gtl $(name).gto $(name).gts $(name).drd

default: zip

zip: $(name)-gerber.zip

$(name)-gerber.zip: $(name).gtl
	zip $(name)-gerber.zip $(gerbers)

$(name).gtl: $(def).def gerbmerge.cfg
#	gerbmerge $(name).cfg $(name).def
	gerbmerge gerbmerge.cfg $(def).def

view:
	gerbv $(name).gt? $(name).gb? $(name).drd &

clean:
	rm -f $(gerbers) *.drl *.fab *.oln *.bor *.placement.txt *.zip

# vim: noexpandtab
