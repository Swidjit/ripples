class Video < Post
  # This method associates the attribute ":photo" with a file attachment
  has_attached_file :video,
    :storage => :s3,
    :path => "/video/:id/:filename",
    :s3_headers =>  { "Content-Type" => "video/mp4" }

  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :video,
     :content_type => ['video/mp4'],
     :message => "Sorry, this site currently only supports MP4 video"


end
