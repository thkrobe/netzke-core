module ActionDispatch::Routing
  class Mapper
    # Enable routes for Netzke assets and endpoint calls. By default the URL is "/netzke", but this can be changed by providing an argument:
    #
    #     netzke "/some/path/netzke"
    def netzke(prefix = "/netzke", options = {})
      controller = options[:controller] || :netzke
      match "#{prefix}/:action(.:format)", to: controller.to_s, as: 'netzke'
    end
  end
end
