# frozen_string_literal: true

module Prompts
  class Paragraph
    include Rendering

    LINE_PADDING = 3

    def initialize(text, width: 60)
      @text = text
      @width = width - (LINE_PADDING + 1)
      @line_padding = SPACE * LINE_PADDING
    end

    def lines
      wrap_text(@text, width: @width, line_padding: @line_padding)
    end
  end
end