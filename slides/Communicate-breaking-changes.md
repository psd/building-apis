Practice service evolution

- Build for [forwards compatibility](http://en.wikipedia.org/wiki/Forward_compatibility) by gracefully handling content that is unexpected. The [robustness principle](http://en.wikipedia.org/wiki/Robustness_principle) &mdash; 
Postel's Law explains the ability for The Web and Internet to evolve, though you shouldn't ignore protocol errors, corrupted, or invalidly formatted content.
- Preserve [backwards compatibility](http://en.wikipedia.org/wiki/Backward_compatibility) with existing consumers of your API, by sending expected content,
Eschew changes to the semantics of content, e.g. don't change a `title` field from to the prefix for a name to the person's job title.

Where a revolutionary change is unavoidable, communicate a breaking change by changing the URL.
When changing URIs, continue to honour old consumers, possibly use a [redirection](http://digital.cabinetoffice.gov.uk/2012/10/11/no-link-left-behind/).
[Cool URIs don't change](http://www.w3.org/Provider/Style/URI.html).

##Further reading
This guide is an outline of the alpha [GDS API Design Principles](https://github.com/alphagov/api-design-principles).
The [API Craft Group](http://groups.google.com/group/api-craft) is a reasonably active public forum for discussing publishing APIs.

## Why

## Examples of service evolution
[service evolution](http://www.mnot.net/blog/2012/12/04/api-evolution)
