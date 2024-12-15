module Jekyll
    class SlideBlock < Liquid::Block
        def initialize(tag_name, markup, tokens)
            @test = markup
            super
        end
        def render(context)
            text = super
            texty3 = context.registers[:site].find_converter_instance(::Jekyll::Converters::Markdown).convert(text)
            "<div tabindex='0'><section class='#{@test}'>#{texty3}</section></div>"
        end
    end
end

Liquid::Template.register_tag('slide', Jekyll::SlideBlock)
