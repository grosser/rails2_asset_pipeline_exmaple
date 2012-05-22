# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def pipeline_path(asset)
    data = SPROCKETS_ENV[asset]
    asset = "/assets/#{asset}"

    if Rails.env.production?
      asset.sub(/(\.[a-z]+)/, "-#{data.digest}\\1")
    else
      "#{asset}?#{data.mtime.to_i}"
    end
  end
end
