Ensure all [HTTP GET](http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods) requests are [safe](http://www.w3.org/2001/tag/doc/whenToUseGet.html), and actions which change state are conducted using a [POST](http://en.wikipedia.org/wiki/POST_\(HTTP\)), PUT or DELETE method.

Use PUT and DELETE which are commonly blocked by firewalls, intranet proxies, hotel Wifi and mobile operators with caution; always offer a POST alternative.

Avoid HTTP methods which are not well defined, such as PATCH.

## Why
Caching, safety.

## REST in practice
REST Cookbook
