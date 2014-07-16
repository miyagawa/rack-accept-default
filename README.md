# Rack::AcceptDefault

Rack::AcceptDefault is a tiny piece of middleware that sets default `Accept:` header when it isn't present, to work around Rails 3.x issues.

## Installation

### rubygems

```
gem install rack-accept-default
```

## Usage

```
require 'rack-accept-default`
use Rack::AcceptDefault
```

Additionally, the default `Accept:` header can be customized:

```
use Rack::AcceptDefault, 'application/json'
```

## Why

Rails default MIME negotiation (in ActionPack) handles requests without `Accept:` headers as *invalid*, and assume it wants the HTML view. This assumption is wrong per RFC 2616 HTTP/1.1 specification.

> If no Accept header field is present, then it is assumed that the client accepts all media types

Rack::AcceptDefault is a piece of Rack middleware that provides a convenient way to work around this problem, by setting the `*/*` value to the `Accept` header when it is not present.

## License

MIT License.

## Copyright

Copyright 2012- Tatsuhiko Miyagawa
