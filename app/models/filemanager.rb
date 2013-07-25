class Filemanager < ActiveRecord::Base
  attr_accessible :name, :file, :image
  has_attached_file :file,  :default_url => "/files/"
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/"

end
