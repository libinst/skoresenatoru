require 'json'
require 'fileutils'

module Jekyll
  class PoslanciJsonGenerator < Generator
    priority :low
    include DataPageLinkGenerator

    def generate(site)
      site.config['poslanci_json_path'] = 'poslanci.json' if !site.config['poslanci_json_path']

      json_file = File.new(File.join(site.config['destination'], site.config['poslanci_json_path']), 'w')

      poslanci = site.data['poslanci'].collect do |poslanec|
        {
          label: poslanec['jmeno'],
          url: datapage_url(poslanec['jmeno'], '/poslanci')
        }
      end

      json_file.write(poslanci.to_json)
      json_file.close

      site.static_files << Jekyll::JsonFile.new(site, site.config['destination'], "/", site.config['poslanci_json_path'])
      # site.pages << Jekyll::JSONPost.new(site, site.dest, json_dest, 'index.json')
    end
  end

  class JsonFile < StaticFile
    def write(dest)
      # begin
        # super(dest)
      # rescue
      # end
      # true
    end
  end

  class PoslanciJsonTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      IO.read(File.join(context.registers[:site].config['destination'], context.registers[:site].config['poslanci_json_path']))
    end
  end
end

Liquid::Template.register_tag('poslanci_json', Jekyll::PoslanciJsonTag)
