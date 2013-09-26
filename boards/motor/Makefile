name = h-bridge

gerbers = $(name).gbl $(name).gbo $(name).gbs $(name).gtl $(name).gto $(name).gts $(name).drd
default: zip

$(name)-gerber.zip: $(gerbers)
	zip $(name)-gerber.zip $(gerbers)

zip: $(name)-gerber.zip

view:
	gerbv $(name).gt? $(name).gb? $(name).drd &

.PHONY: clean
clean:
	rm -f $(gerbers) $(name)-gerber.zip *.b#? *.s#? *.dri *.gpi *.pro *.bor

# vim: set noexpandtab:
