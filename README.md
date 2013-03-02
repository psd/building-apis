# Building APIs by building on APIs

A [talk](http://qconlondon.com/london-2013/presentation/Building%20APIs%20by%20building%20on%20APIs) for [Qcon London 2013](http://qconlondon.com/london-2013).

> In 2011, Martha Lane Fox published an influential report on the state of for Government, advocating "revolution, not evolution" and calling for government to act as a "wholesaler as well as the retail shop front for services and content by mandating the development and opening up of Application Programme Interfaces (APls) to third parties". This talk is a tour of the UK Government Digital Service API Design Principles, the lessons learnt from building the GOV.UK publishing platform and transactional services on APIs, and how these design principles are now being applied to enable departments and agencies across government to transform transactions and services into becoming "digital by default".

# Outline
## History
### [Martha Lane-Fox](http://en.wikipedia.org/wiki/Martha_Lane_Fox)'s [Report](https://www.gov.uk/government/news/digital-by-default-proposed-for-government-services)
### [Seven Digital-by-Default principles](http://www.flickr.com/photos/benterrett/7041509709/)
### Alphagov
### GDS
### Beta
### Design principles

## [API design principles](http://alphagov.github.com/api-design-principles/)

<a href="http://www.flickr.com/photos/psd/8521872398/" title="API Design Principles by psd, on Flickr"><img src="http://farm9.staticflickr.com/8107/8521872398_9da7f29b12.jpg" width="277" height="500" alt="API Design Principles"></a>

### 1. Build an API by building with the API

When building an API there is a danger of building the wrong thing in the wrong way for the wrong people. This is a particular risk in the absence of a developer community driving [the needs](https://www.gov.uk/designprinciples#first) of an API. The simplest way to ensure your API is useful and consumable is to build a Web site in conjunction with developing your own API. 

Building a Web site leads to considering how to best model content and data in terms of bookmarkable resources, and ensures data is presented in human as well as machine readable representations. Becoming a consumer of your own APIs not only validates your API, but exposes services [on The Web](http://www.w3.org/TR/webarch/), which is at the heart of all of our API design principles.## Examples of Web sites built on their own APIs
GOV.UK [built an API, by building on an API](http://digital.cabinetoffice.gov.uk/2011/09/22/building-apis-building-on-apis/). Legislation.gov.uk is developed by [putting APIs first](http://digital.cabinetoffice.gov.uk/2012/03/30/putting-apis-first-legislation-gov-uk/) and [OpenSpending.org](http://openspending.org/) is built upon its own API — view-source is highly recommended on both these sites. Flickr is built upon the [Flickr API](http://www.flickr.com/services/api/) and [Twitter.com is a client of the Twitter API](http://engineering.twitter.com/2010/09/tech-behind-new-twittercom.html).

This is a deliberately ambiguous principle, reflecting two approaches:

#### Build an API to build a Website:
<img src="http://alphagov.files.wordpress.com/2012/10/actual_image_to_embed.png"/>
* <a href="http://digital.cabinetoffice.gov.uk/2012/10/08/building-with-apis/">Building with APIs</a>
* <a href="http://digital.cabinetoffice.gov.uk/2011/09/22/building-apis-building-on-apis/">Building APIs, building on APIs</a>
* GOV.UK Content API
* Performance API
https://www.gov.uk/performance/dashboard/content-engagement-detail.json

#### or .. [Web APIs are just Web sites](http://blog.whatfettle.com/2007/01/11/good-web-apis-are-just-web-sites/)

In reality the choice is a design decision, and the approach you adopt may be one or both of the above depending upon what you're building, what systems already exist, the capabilities of your developers and the structure of your organisation; <a href="http://en.wikipedia.org/wiki/Conway's_law">Conway's Law</a> will out!

### 2. Just use The Web

Consider an API to be a part of a Web site.
Provide links to machine-friendly formats from human readable pages,
and enable agents to easily construct URLs which link to human-friendly representations of pages.

Use standard formats for content, and follow established Web patterns for authentication.
Building a service to enjoy mass adoption and support from a wide disparate community of developers and programming environments whilst being able to reach a world-wide audience is difficult.
Whilst proprietary and open technologies abound for machine-to-machine communication, none combine the interoperability, reach and ability to scale to compete with The Web.

Standards are powerful agreements, and nowhere are agreements more quickly established and adopted than on The Web.
Using HTTP and URIs, the core technologies of The Web, together with emergent standards such as [JSON](http://www.json.org/) and [OAuth](http://en.wikipedia.org/wiki/OAuth) changes a Website from [a retail shop window into a wholesaler](http://www.cabinetoffice.gov.uk/resource-library/directgov-2010-and-beyond-revolution-not-evolution), meeting our design principle to [Build digital services, not websites](https://www.gov.uk/designprinciples#eighth).

### 3. Give everything a URI

<a href="http://www.flickr.com/photos/psd/2450160/" title="Shower Head URI by psd, on Flickr"><img src="http://farm1.staticflickr.com/1/2450160_10719e6d56.jpg" width="500" height="500" alt="Shower Head URI"></a>

Expose data as a set of resources, offering a [clean URL](http://en.wikipedia.org/wiki/Clean_URL) for each thing, and each collection of things.

Only use [query strings](http://en.wikipedia.org/wiki/Query_string) for URLs with unordered parameters, such as options to search pages.

Consider creating URIs for different granularity of resources. For example, `/members.json` could return a list of names, whilst `/members.json?detail=full` could return detailed information about each member in a list.

These principles enable network effects which arise through linking and allow information published beyond the Web, sent in alerts email, SMS, XMPP and other messages to link back to the canonical content, on The Web.
[Identification](http://www.w3.org/TR/webarch/#identification)
[Your Website is Your API: Quick Wins for Government Data](http://www.jenitennison.com/blog/node/100)

##### Putting Flickr photographs on Google Maps
- [lost+found](http://www.flickr.com/photos/psd/tags/lostfound/) photos
- [Flickr geoRSS Feed](http://api.flickr.com/services/feeds/geo/?id=45581782@N00&lang=en-us&tags=lostfound&format=rss_200)·
- [Google Maps](https://maps.google.co.uk/maps?q=http:%2F%2Fapi.flickr.com%2Fservices%2Ffeeds%2Fgeo%2F%3Fid%3D45581782%40N00%26lang%3Den-us%26tags%3Dlostfound%26format%3Drss_200&hl=en&ll=51.782922,-0.557384&spn=0.061913,0.108662&sll=51.520707,0.046692&sspn=0.470829,1.327972&t=m&z=13&iwloc=lyrftr:kml:cH4sC9Lc5Qp3qPdqasvraisEVm0hInPZXrRfVhPrvbHFDJg,BD9CEB85F1B3212D,51.757428,-0.556011,0,-32)

Openspending has a page for each item, and pages which allow arbitrary aggregation of results, allowing the selection of data, and reducing the volume of data a client needs to consume to find total row and columns.

### 4. Use HTTP methods as Roy^W Tim intended
<a href="http://www.flickr.com/photos/psd/8271699529/" title="a tongue-in-cheek change request from @timberners_lee .. by psd, on Flickr"><img src="http://farm9.staticflickr.com/8337/8271699529_37484828aa.jpg" width="500" height="375" alt="a tongue-in-cheek change request from @timberners_lee .."></a>

Ensure all [HTTP GET](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods) requests are [safe](http://www.w3.org/2001/tag/doc/whenToUseGet.html), and actions which change state are conducted using a [POST](http://en.wikipedia.org/wiki/POST_\(HTTP\)), PUT or DELETE method.

Use PUT and DELETE which are commonly blocked by firewalls, intranet proxies, hotel Wifi and mobile operators with caution; always offer a POST alternative.

Avoid HTTP methods which are not well defined, such as PATCH.

### 5. Representations are for the consumer

<a href="http://www.flickr.com/photos/psd/8387482942/" title="Maps by psd, on Flickr"><img src="http://farm9.staticflickr.com/8351/8387482942_b5eec6345c.jpg" width="500" height="355" alt="Maps"></a>

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

### 6. Names reinforce conventions

Use names for fields, formats and path segments in a URI path consistently across your API.
Establish conventions others may easily follow, and anticipate.
Where possible, reuse names widely used elsewhere on The Web, as with the [Microformats naming policy](http://microformats.org/wiki/naming-principles).

Example: Whitehall use of vcard?

### 7. Document by discovery … and example

Building a Website which exposes the data through links, and services through HTML forms encourages exploration and leads to [discovery through hypertext](http://roy.gbiv.com/untangled/2008/rest-apis-must-be-hypertext-driven).
Provide documentation for your API using examples.
Collect how people are using your API, especially link to any open source projects for projects, wrappers and programming language libraries.
Provide simple ways to experiment, as with [The Guardian API explorer](http://explorer.content.guardianapis.com/).

### 8. Explicitly set expectations

Be clear in Web pages and other documentation as to the security, availability, rate-limiting, expected responsiveness of the platform and the provenance of data, so consumers may plan their commitment to using your API.

Conversely, when consuming APIs you should be careful to keep the integration with your code clean and distinct. This is important to ensure that you can swap between providers or update to new versions of an API without making substantial changes to your core code. We encourage the use of adapter code that is entirely focussed on interfacing with the system and mapping code that will provide the linkage between your code's domain model and the concepts and services provided by the API.

By depending on a third party API you could very easily be tying your service's availability to that of the third party. In some cases that may be acceptable, but often you will want to ensure that you have a fallback plan in place.

The details of that fallback will vary according to your service. It may be that you will need to offer the user the opportunity to use an alternative service, or queue the action to take place later. That could be an automated queue with software that monitors it and retries transactions, or it could be a manual queue where someone follows up to collect further details.

You should be clear with your users about what is happening. If a third party payment provider isn't available you might queue the transaction to try again later. That will mean you can't offer users the same guarantee that their payment will be processed correctly and you should tell them so.

### 9. Be public by default

<a href="http://www.flickr.com/photos/psd/8522057158/" title="Nobody got fired for choosing open source by psd, on Flickr"><img src="http://farm9.staticflickr.com/8251/8522057158_fc88cc5041.jpg" width="500" height="366" alt="Nobody got fired for choosing open source"></a>

Lower the barriers to others using your data; don't demand registration or API keys for public data.

Open data increases the number of people able to use your data and service, and leads to feedback loops where consumers become motivated to resolve issues at source, feeding back issues and correction to your service and the data within.

Where content is sensitive, or requires authentication, use encryption (HTTPS) and a standard authentication such as [Basic Authentication](http://en.wikipedia.org/wiki/Basic_access_authentication) or [OAuth](http://en.wikipedia.org/wiki/OAuth), depending upon the sensitivity of your content.

### 10. Communicate breaking changes

Practice service evolution:

- Build for [forwards compatibility](http://en.wikipedia.org/wiki/Forward_compatibility) by gracefully handling content that is unexpected. The [robustness principle](http://en.wikipedia.org/wiki/Robustness_principle) &mdash;·
Postel's Law explains the ability for The Web and Internet to evolve, though you shouldn't ignore protocol errors, corrupted, or invalidly formatted content.
- Preserve [backwards compatibility](http://en.wikipedia.org/wiki/Backward_compatibility) with existing consumers of your API, by sending expected fields and employing sensible default values for missing fields.
Eschew changes to the semantics of content, e.g. don't change a `title` field from to the prefix for a name to the person's job title.

Where a revolutionary change is unavoidable, communicate a breaking change by changing the URL.
When changing URIs, continue to honour old consumers, possibly use a [redirection](http://digital.cabinetoffice.gov.uk/2012/10/11/no-link-left-behind/).
[Cool URIs don't change](http://www.w3.org/Provider/Style/URI.html).


## What's Next?
### Transformation
### Digital-by-default standard

The [API Craft Group](http://groups.google.com/group/api-craft) is a reasonably active public forum for discussing publishing APIs.

The Open Web Application Security Project ([OWASP](https://www.owasp.org)) maintains a large repository of security information applicable to building APIs, a including a [REST Security Cheat Sheet](https://www.owasp.org/index.php/REST_Security_Cheat_Sheet).



