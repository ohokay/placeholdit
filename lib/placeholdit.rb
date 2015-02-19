require "placeholdit/version"

module Placeholdit
  module ViewHelpers
    def placeholdit_image_tag(size, opts={})

      size = "#{size}" unless size.is_a?(String)
      src = "https://placehold.it/#{size}"

      config = {
        :alt => (opts[:text] || "A placeholder image"),
        :class => "placeholder",
        :height => (size.split('x')[1] || size.split('x')[0]),
        :width => size.split('x')[0],
        :title => opts[:title]
      }.merge!(opts)

      # Placehold.it preferences
      if config[:background_color]
        src += "/#{remove_hex_pound(config[:background_color])}"
      end
      if config[:text_color]
        src += "/#{remove_hex_pound(config[:text_color])}"
      end
      if config[:text]
        src += "&text=#{config[:text]}"
      end

      image_tag = "<img src='#{src}' alt='#{config[:alt]}' class='#{config[:class]}' height='#{config[:height]}' width='#{config[:width]}'"
      image_tag += " title='#{config[:title]}'" if config[:title]
      image_tag += " style='#{config[:style]}'" if config[:style]
      image_tag += " />"
      return image_tag.html_safe if defined?(Rails)
      image_tag
    end

    alias :placeholdit :placeholdit_image_tag

    private

      def remove_hex_pound(str)
        if str.include?("#")
          return str.delete("#")
        end
        str
      end

  end
end

require 'placeholdit/railtie' if defined?(Rails)
