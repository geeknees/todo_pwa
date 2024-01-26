class PwaController < ApplicationController
  protect_from_forgery except: :service_worker
  layout false

  def service_worker
    response.headers['Cache-Control'] = "no-cache"
  end

  def manifest
    response.headers['Cache-Control'] = "no-cache"

    render json: {
      name: "TODO PWA",
      short_name: "TODO PWA",
      description: "Web application for TODO",
      theme_color: "#84240f",
      background_color: "#fff",
      display: "standalone",
      orientation: "portrait",
      scope: "/",
      start_url: "/",
      icons: [
        {
          src: view_context.image_path("icons/512.png"),
          type: "image/png",
          sizes: "512x512",
        },
        {
          src: view_context.image_path("icons/1024.png"),
          type: "image/png",
          sizes: "1024x1024",
        },
        {
          src: view_context.image_path("icons/1024_maskable.png"),
          type: "image/png",
          sizes: "1024x1024",
          purpose: "maskable",
        },
      ],
    }
  end
end
