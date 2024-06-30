# slide-deck-template
Slide deck template which can be presented via web or converted to PDF/UA.

The font used in the default theme is the wonderful RoadUA by MintType, CC BY-ND.  PDF/UA requires that fonts be embedded in the document, so using a nice freely licensed font makes that a lot easier.

The PDF rendering engine is the lovely Weasyprint, which is available via apt, brew, etc.

Do note that some color palettes will trigger WCAG failure.  I'm still sorting that out.

## Todo List
* [x] Initial Web Template
* [x] Rework template to play nicely with Weasyprint
	* Current bugs: There's a blank page at the start of the PDF.
* [ ] Markdown to HTML
* [ ] Resolve WCAG issues with color palettes.
