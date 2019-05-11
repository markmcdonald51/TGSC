class Asset < ApplicationRecord
  include Uploader::Asset
  
  default_scope { order('sort_order ASC') }

  self.inheritance_column = nil

  delegate :url, to: :data


  def fileupload_create(params, request = nil)
    #binding.pry
    self.attachment_id = params[:attachment_id]
    super
  end

  def filename
    data_file_name
  end

  def content_type
    data_content_type
  end

  def size
    data_file_size
  end

end
