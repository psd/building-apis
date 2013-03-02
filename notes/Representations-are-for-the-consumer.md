Offer content for each thing as a human-readable HTML, with links to content in alternative machine-readable representations:

- [JSON](http://en.wikipedia.org/wiki/JSON) for convenient processing in most programming languages
- [JSONP](http://en.wikipedia.org/wiki/JSONP) and JSON with [CORS](http://en.wikipedia.org/wiki/Cross-origin_resource_sharing) for client-side JavaScript
- [CSV](http://en.wikipedia.org/wiki/Comma-separated_values) for importing into spreadsheets
- [Atom](http://en.wikipedia.org/wiki/Atom_\(standard\)) for [feeds](http://en.wikipedia.org/wiki/Web_feed).

Where possible, also offer other formats most suited to a specific domain, such as:

- [iCalendar](http://en.wikipedia.org/wiki/ICalendar) for events
- [vCard](http://en.wikipedia.org/wiki/VCard) for name and addresses
- [KML](http://en.wikipedia.org/wiki/Keyhole_Markup_Language) and [geoRSS](http://en.wikipedia.org/wiki/GeoRSS) for geographical data
- [m3u](http://en.wikipedia.org/wiki/.m3u) for playlists

Include hyperlinks to alternative representations as [link headers](http://www.w3.org/TR/html51/document-metadata.html#the-link-element) as well as in content.

_Consider also encoding meta-data inside HTML content using semantic markup: [Microformats](http://microformats.org/). [RDFa](http://en.wikipedia.org/wiki/Rdfa) or [schema.org](http://schema.org/)._

The representations supported by an API for input will vary depending upon the complexity of the action, but where possible should include `application/x-www-form-urlencoded` to allow the construction of simple [POST](http://en.wikipedia.org/wiki/POST_\(HTTP\)) forms.

## Why

## Mapping between XML, JSON and CSV
