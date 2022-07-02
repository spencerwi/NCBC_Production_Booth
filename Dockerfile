FROM escalope/pandoc-mermaid-plantuml

RUN apt update
RUN apt install -y texlive-fonts-extra

ENTRYPOINT ["./run-pandoc.sh"]
