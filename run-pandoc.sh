#!/bin/bash

# Entry point script used by the Github action that automatically generates our PDFs for printing any time there's a change.

cd Playbook && pandoc --toc 1_sunday-morning-setup.md troubleshooting.md -o ../Playbook.pdf --filter mermaid-filter --variable=fontfamily:arev -H ../chapter_break.tex
cd ..
cd Manual && pandoc --toc connections-mac.md connections-pc.md -o ../Manual.pdf --filter mermaid-filter --variable=fontfamily:arev -H ../chapter_break.tex
