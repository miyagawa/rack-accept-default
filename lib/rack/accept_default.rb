module Rack
  class AcceptDefault
    def initialize(app, default='*/*')
      @app = app
      @default = default
    end

    def call(env)
      env['HTTP_ACCEPT'] ||= @default
      @app.call(env)
    end
  end
end
