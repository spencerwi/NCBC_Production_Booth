all: clean Playbook.pdf Manual.pdf

clean:
	rm -f Playbook.pdf
	rm -f Manual.pdf
	rm -f **/mermaid-filter.err

Playbook.pdf: 
	# Use pandoc to create the Playbook PDF, passing it through the "mermaid filter" to convert any diagrams, with a nice font, 
	# and with each "chapter" (section) on its own page.
	cd Playbook && pandoc -o ../Playbook.pdf --filter mermaid-filter --variable=fontfamily:arev -H ../chapter_break.tex \
		1_sunday-morning-setup.md \
		troubleshooting.md
	
Manual.pdf: 
	# Use pandoc to create the Manual PDF, passing it through the "mermaid filter" to convert any diagrams, with a nice font, 
	# and with each "chapter" (section) on its own page.
	cd Manual && pandoc -o ../Manual.pdf --filter mermaid-filter --variable=fontfamily:arev -H ../chapter_break.tex \
		connections-mac.md \
		connections-pc.md
