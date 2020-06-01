class AddHandleToCategory < ActiveRecord::Migration[6.0]
  def up
    add_column :categories, :handle, :string

     Category.all.each do |cat|
       cat.handle = cat.name.parameterize
       cat.save
    end
  end
  def down
    remove_column :categories, :handle
  end
end
