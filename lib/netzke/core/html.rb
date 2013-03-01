module Netzke
  module Core
    module Html
      def render(what)
        callr = caller.first
        engine = Haml::Engine.new(File.read(expand_html_path(what, callr)))
        engine.method(:render).call(self)
      end

    private

      def expand_html_path(sym, callr = nil)
        %Q(#{callr.split(".rb:").first}/html/#{sym}.haml)
      end
    end
  end
end
