Expose data as a set of resources, offering a [clean URL](http://en.wikipedia.org/wiki/Clean_URL) for each thing, and each collection of things.

Only use [query strings](http://en.wikipedia.org/wiki/Query_string) for URLs with unordered parameters, such as options to search pages.

Consider creating URIs for different granularity of resources. For example, `/members.json` could return a list of names, whilst `/members.json?detail=full` could return detailed information about each member in a list.

#Why
These principles enable network effects which arise through linking and allow information published beyond the Web, sent in alerts email, SMS, XMPP and other messages to link back to the canonical content, on The Web.
[Identification](http://www.w3.org/TR/webarch/#identification)
[Your Website is Your API: Quick Wins for Government Data](http://www.jenitennison.com/blog/node/100)


#Putting Flickr photographs on Google Maps
- [lost+found](http://www.flickr.com/photos/psd/tags/lostfound/) photos
- [Flickr geoRSS Feed](http://api.flickr.com/services/feeds/geo/?id=45581782@N00&lang=en-us&tags=lostfound&format=rss_200) 
- [Google Maps](https://maps.google.co.uk/maps?q=http:%2F%2Fapi.flickr.com%2Fservices%2Ffeeds%2Fgeo%2F%3Fid%3D45581782%40N00%26lang%3Den-us%26tags%3Dlostfound%26format%3Drss_200&hl=en&ll=51.782922,-0.557384&spn=0.061913,0.108662&sll=51.520707,0.046692&sspn=0.470829,1.327972&t=m&z=13&iwloc=lyrftr:kml:cH4sC9Lc5Qp3qPdqasvraisEVm0hInPZXrRfVhPrvbHFDJg,BD9CEB85F1B3212D,51.757428,-0.556011,0,-32)

#Aggregation of Openspending data
Openspending has a page for each item, and pages which allow arbitrary aggregation of results, allowing the selection of data, and reducing the volume of data a client needs to consume to find total row and columns.
