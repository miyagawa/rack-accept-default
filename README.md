# Rack::AcceptDefault

Rails default MIME negotiation (in actionpack) handles requests without `Accept:` headers as *invalid*, and assume it wants the HTML view. This assumption is wrong per RFC 2616 HTTP/1.1 specification.

> If no Accept header field is present, then it is assumed that the client accepts all media types

Rack::AcceptDefault provides a convenient way to work around this bug, by setting the `*/*` value to the `Accept` header when it is not present.

## Usage

```ruby
require 'rack/accept_default'
use Rack::AcceptDefault
```
