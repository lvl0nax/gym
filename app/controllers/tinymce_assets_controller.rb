class TinymceAssetsController < ApplicationController
  def create
    # Take upload from params[:file] and store it somehow...
    # Optionally also accept params[:hint] and consume if needed
    logger.debug "***************************************"
    logger.debug  params[:image]
    logger.debug "hint: "
    logger.debug  params[:hint]
    logger.debug "to _ a: "
    logger.debug  params[:file].to_s
    logger.debug "tempfile : "
    logger.debug  params[:file].tempfile
    logger.debug "original filename : "
    logger.debug  params[:file].original_filename
    logger.debug  params[:file].to_a
    logger.debug  params[:file][:name]
    @picture = params[:file].initialize
    logger.debug @picture
    @picture = Picture.new(params[:file])
    render json: {
      image: {
        url: @picture.photo.url
      }
    }, content_type: "text/html"
  end
end