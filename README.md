# New Covenant Bible Church Production Booth Documentation

This repository houses all the production booth documentation for [New Covenant Bible Church](https://www.newcovcanton.com/) in Canton, GA, USA.

There are two main pieces of documentation here:

 * The Playbook, which has walkthroughs of what to do on Sunday Mornings, and a Troubleshooting guide for common issues
 * The Manual, which describes in better detail how everything related to the production booth works, for those who want a deeper understanding (or for times when things go _very_ wrong and you need to understand how everything connects).


## What are these files? They're not Word documents or PDFs.

The documents in here are written in [Markdown](https://www.markdownguide.org/), a common writing format that's readable without having to install Microsoft Word or anything.
It gets formatted more nicely by Markdown processors (like [pandoc](https://pandoc.org/), which we use to spit out PDFs from this stuff), but you also can just look at it in Notepad or anything.

This document you're reading now is written in Markdown, and you're viewing it in Github's native Markdown formatter. Nice, right?

### A note about diagrams

Some of these documents include diagrams. There are two basic ways to make diagrams on a computer:

 1. Draw image files and save those, or
 2. Use a format that allows you to write some text that _then_ gets _converted_ into a diagram.

Because it's hard to keep image files up-to-date when there are changes (you'd have to open the file, erase what's not applicable anymore, and draw updated replacements), I opted for the second option.

In particular, we use the [Mermaid](https://mermaid-js.github.io/mermaid/#/) diagram format, because like Markdown, it's pretty easy to read even before it's processed by a Mermaid processor.

## How can I use this documentation?

 The simplest way is to just click around here -- Github has a pretty good Markdown viewer that allows you to read Markdown files (even with embedded Mermaid diagrams) directly in your web browser.

 If you need to get a PDF to print up, you should be able to just grab one from the "Releases" tab in this repository, if the automated "generate new PDFs any time something changes" stuff
 is up and working. 

 Otherwise, you might have to do some hands-on work yourself on a computer (preferably one running Linux or a Mac, but the tools may work on Windows too).

### Generating the PDF yourself locally

We generate these PDFs using [pandoc](https://pandoc.org), passing it through a Mermaid filter plugin to make sure diagrams get rendered out correctly. 

You should make sure you have the following installed on your machine:

* pandoc
* [mermaid-filter](https://github.com/raghur/mermaid-filter)
* texlive (so that pandoc can spit out a PDF; see https://gist.github.com/rain1024/98dd5e2c6c8c28f9ea9d for step-by-step instructions)
* The `make` command ([GNU Make](https://www.gnu.org/software/make/) works here)

Then you can just run `make all` inside this directory, and it'll spit out fresh new PDFs of the Playbook and the Manual!
