class Picture < Asset
  mount_uploader :data, PictureUploader, mount_on: :data_file_name
  validates :data, file_size: { less_than_or_equal_to: 5.megabytes.to_i }

  def thumb_url
    url(:thumb)
  end
end
