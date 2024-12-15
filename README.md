# slide-deck-template
Slide deck template which can be presented via web or converted to PDF/UA.

PDF/UA requires that fonts be embedded in the document, so using nice freely licensed fonts makes that a lot easier.
* The standard font is [RoadUA](https://github.com/agentyzmin/Road-UA-Font/) by MintType, licensed CC BY-ND 4.0.
* The italic font is a modified version of [MLModern](https://ctan.org/pkg/mlmodern) by B. Jackowski, J.M Nowacki, and Daniel Benjamin Miller, licensed LPPL 1.3c; It was converted to TTF via [these instructions](https://www.reddit.com/r/LaTeX/comments/p4r53g/where_can_i_get_the_mlmodern_font_as_a_ttf_file/), and then adjusted to match the metrics of RoadUA [using these instructions](https://www.maxkohler.com/posts/2022-02-19-fixing-vertical-metrics/).

The PDF rendering engine is the lovely Weasyprint, which is available via apt, brew, etc.

Do note that some color palettes will trigger WCAG failure.  I'm still sorting that out.

## Bugfix Todo List
* [x] There's a blank page at the start of the PDF.
* [ ] Resolve WCAG issues with color palettes.
* [x] No italics in PDF (I think the browser is improvising an italicisation which Weasyprint does not do.)
* [ ] PDF: Overflow pages have wrong padding. (Current options: Preprocess with PhantomJS or something.)
* [x] PDF: Cover slide does not position bottom bar at bottom (positions it at middle).
* [x] Font size scales too large when full screen presenting.
* [x] Add UTF-8 Meta tag

## Feature Todo List
* [x] Markdown to HTML
* [ ] Image and caption slide styles (fill, left flush, etc.)
