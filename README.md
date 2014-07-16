# Octopress Abort Tag

Conditionally prevent a page from being rendered.

[![Build Status](https://travis-ci.org/octopress/abort-tag.svg)](https://travis-ci.org/octopress/abort-tag)
[![Gem Version](http://img.shields.io/gem/v/octopress-abort-tag.svg)](https://rubygems.org/gems/octopress-abort-tag)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://octopress.mit-license.org)

## Installation

Add this line to your application's Gemfile:

    gem 'octopress-abort-tag'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install octopress-abort-tag

Next add it to your gems list in Jekyll's `_config.yml`

    gems:
      - octopress-abort-tag

## Usage

Syntax:

```
{% abort [condition] %}
```

Prevent a page from being rendered.

```
{% abort %}
```

Prevent an index page from being rendered if there are no posts.

```
{% abort unless site.posts.size > 0 %}
```

## Contributing

1. Fork it ( https://github.com/octopress/abort-tag/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
