all: clean Playbook.pdf Manual.pdf

clean:
	rm -f Playbook.pdf
	rm -f Manual.pdf

Playbook.pdf: 
	# Use pandoc to create the Playbook PDF, with a table of contents, passing it through the "mermaid filter" to convert any diagrams, with a nice font, 
	# and with each "chapter" (section) on its own page.
	cd Playbook && pandoc --toc 1_sunday-morning-setup.md troubleshooting.md -o ../Playbook.pdf --filter mermaid-filter --variable=fontfamily:arev -H ../chapter_break.tex
	
Manual.pdf: 
	# Use pandoc to create the Manual PDF, with a table of contents, passing it through the "mermaid filter" to convert any diagrams, with a nice font, 
	# and with each "chapter" (section) on its own page.
	cd Manual && pandoc --toc connections-mac.md connections-pc.md -o ../Manual.pdf --filter mermaid-filter --variable=fontfamily:arev -H ../chapter_break.tex
