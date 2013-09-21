class CreateKitties < ActiveRecord::Migration
	def change
    create_table :kitties do |t|
    	t.string :link
    	t.text   :description
    	t.belongs_to :user
    	t.string :image
    	t.timestamps
    end
  end
end
