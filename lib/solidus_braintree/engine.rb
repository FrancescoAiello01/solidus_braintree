module SolidusBraintree
  class Engine < Rails::Engine
    engine_name 'solidus_braintree'

    config.autoload_paths += %W(#{config.root}/lib)
    config.assets.precompile += %w( spree/backend/braintree/solidus_braintree.js )

    config.active_record.yaml_column_permitted_classes ||= []
    config.active_record.yaml_column_permitted_classes << Symbol

    initializer "spree.gateway.payment_methods", after: "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Solidus::Gateway::BraintreeGateway
    end

    def self.activate
      Rails.application.config.assets.precompile += [
        'lib/assets/javascripts/spree/backend/solidus_braintree.js',
      ]

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end
