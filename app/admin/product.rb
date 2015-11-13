ActiveAdmin.register Product do
	menu priority: 3

	permit_params :title, :description, :price, :status, :category_id, :thumbnail, :note

	filter :category
	filter :title
	filter :status

	form do |f|
		f.inputs "Details" do
			f.input :category
			f.input :title
			f.input :description, as: :text
			f.input :price
			f.input :status, as: :select, collection: Product.statuses.keys
			f.input :thumbnail
			f.input :note
		end

		f.actions
	end
end