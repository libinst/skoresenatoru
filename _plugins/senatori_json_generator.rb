require 'json'
require 'fileutils'
require '/Users/kubicek/workplace/li/_plugins/data_page_generator'

module Jekyll
  class SenatoriJsonGenerator < Generator
    priority :low
    include Jekyll::DataPageLinkGenerator

    def generate(site)
      site.config['senatori_json_path'] = 'senatori.json' if !site.config['senatori_json_path']

      json_file = File.new(File.join(site.config['destination'], site.config['senatori_json_path']), 'w')

      senatori = site.data['senatori'].collect do |senator|
        {
          label: senator['jmeno'],
          url: datapage_url(senator['jmeno'], '/senatori')
        }
      end

      json_file.write(senatori.to_json)
      json_file.close

      site.static_files << Jekyll::JsonFile.new(site, site.config['destination'], "/", site.config['senatori_json_path'])
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

  class SenatoriJsonTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      IO.read(File.join(context.registers[:site].config['destination'], context.registers[:site].config['senatori_json_path']))
    end
  end
end

Liquid::Template.register_tag('senatori_json', Jekyll::SenatoriJsonTag)
