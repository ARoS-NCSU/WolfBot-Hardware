name = motor_and_periph

gerbers = $(name).gbl $(name).gbo $(name).gbs $(name).gtl $(name).gto $(name).gts $(name).drd

default: zip

zip: $(name)-gerber.zip

$(name)-gerber.zip: $(name).gtl
	zip $(name)-gerber.zip $(gerbers)

$(name).gtl: $(name).def $(name).cfg
	gerbmerge $(name).cfg $(name).def


view:
	gerbv $(name).gt? $(name).gb? $(name).drd &

clean:
	rm -f $(gerbers) *.drl *.fab *.oln *.bor *.placement.txt *.zip

# vim: noexpandtab
