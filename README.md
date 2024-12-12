# slide-deck-template
Slide deck template which can be presented via web or converted to PDF/UA.

The font used in the default theme is the wonderful RoadUA by MintType, CC BY-ND.  PDF/UA requires that fonts be embedded in the document, so using a nice freely licensed font makes that a lot easier.

The PDF rendering engine is the lovely Weasyprint, which is available via apt, brew, etc.

Do note that some color palettes will trigger WCAG failure.  I'm still sorting that out.

## Bugfix Todo List
* [ ] There's a blank page at the start of the PDF.
* [ ] Resolve WCAG issues with color palettes.
* [ ] No italics in PDF (I think the browser is improvising an italicisation which Weasyprint does not do.)
* [ ] Overflow pages have wrong padding on PDF. (Current options: Preprocess with PhantomJS or something.)
* [ ] Cover slide does not position bottom bar at bottom (positions it at middle).

## Feature Todo List
* [ ] Markdown to HTML
* [ ] Image and caption slide styles (fill, left flush, etc.)
