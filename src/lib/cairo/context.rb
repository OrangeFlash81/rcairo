require 'cairo/context/quad'
require 'cairo/context/rectangle'
require 'cairo/context/circle'
require 'cairo/context/path'
require 'cairo/context/blur'
require 'cairo/context/color'

module Cairo
  class Context
    include Quad
    include Rectangle
    include Circle
    include Path
    include Blur
    include Color

    def stroke_preserve(&block)
      stroke(true, &block)
    end

    def fill_preserve(&block)
      fill(true, &block)
    end

    def clip_preserve(&block)
      clip(true, &block)
    end
  end
end
