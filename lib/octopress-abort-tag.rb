require "octopress-abort-tag/version"
require "octopress-tag-helpers"
require "jekyll"

module Octopress
  module Tags
    module AbortTag
      class Tag < Liquid::Tag
        def initialize(tag_name, markup, tokens)
          super
          @markup = " #{markup}"
        end

        def render(context)
          if TagHelpers::Conditional.parse(@markup, context)
            site = context.environments.first['site']
            dest = site['destination']
            env = context.environments.first
            page_dest = File.join(dest, env['page']['url'])

            context.environments.first['site']['pages'].reject! do |p|
              p.destination(dest) == page_dest
            end
          end
          ''
        end
      end
    end
  end
end

Liquid::Template.register_tag('abort', Octopress::Tags::AbortTag::Tag)
