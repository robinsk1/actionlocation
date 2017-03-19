ActiveAdmin.register Location do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name,
               :description,
               :featured,
               :banner,
               :active,
               :strap,
               :post_code,
               :street_address_1,
               :city,
               photos_attributes: [:id, :image, :_destroy]

 index do
   selectable_column
   id_column
   column :name
   column :description
   column :featured
   column :city
   column :banner
   column :active
   actions
 end

 show do
   h3 location.name
   div do
      simple_format location.description
   end
   div do
      location.featured
   end
   div do
      location.banner
   end
   div do
      location.active
   end
   div do
      location.strap
   end
   div do
      location.city
   end
   div do
      location.street_address_1
   end
   div do
      location.post_code
   end
   location.photos.each do |photo|
     div do
        image_tag photo.image.url
     end
   end
 end

 form do |f|
   f.semantic_errors(*f.object.errors.keys)
   f.inputs do
     f.input :name
     f.input :description
     f.input :featured
     f.input :banner
     f.input :active
     f.input :strap
     f.input :post_code
     f.input :city
     f.input :street_address_1
     f.inputs "Photo", :multipart => true do
       f.has_many :photos, heading: 'Photos', allow_destroy: true do |a|
         a.input :image, :as => :file, :hint => image_tag(a.object.image.url)
       end
     end
   end

   f.actions
 end

end
