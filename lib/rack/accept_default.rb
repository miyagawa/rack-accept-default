module Rack
  class AcceptDefault
    def initialize(app, default='*/*')
      @app = app
      @default = default
    end

    def call(env)
      unless env.key?('HTTP_ACCEPT')
        env['HTTP_ACCEPT'] = @default
      end
      @app.call(env)
    end
  end
end
