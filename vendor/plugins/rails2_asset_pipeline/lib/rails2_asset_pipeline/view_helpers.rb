module Rails2AssetPipeline
  module ViewHelpers
    def pipeline_path(asset)
      data = Rails2AssetPipeline.env[asset]
      asset = "/assets/#{asset}"

      if Rails.env.production?
        asset.sub(/(\.[a-z]+)/, "-#{data.digest}\\1")
      else
        "#{asset}?#{data.mtime.to_i}"
      end
    end
  end
end
