module Rails2AssetPipeline
  def self.env
    @env || setup
  end

  def self.setup
    @env ||= Sprockets::Environment.new
    @env.append_path 'app/assets/images'
    @env.append_path 'app/assets/javascripts'
    @env.append_path 'app/assets/stylesheets'
    # TODO vendor + lib
    yield @env if block_given?
    @env
  end

  def self.config_ru
    lambda do
      unless Rails.env.production?
        map '/assets' do
          run Rails2AssetPipeline.env
        end
      end
    end
  end
end
