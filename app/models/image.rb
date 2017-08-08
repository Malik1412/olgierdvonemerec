class Image < ApplicationRecord
mount_uploader :image, ArtUploader
end
