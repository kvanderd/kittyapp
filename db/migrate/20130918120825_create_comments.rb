class CreateComments < ActiveRecord::Migration
	def change
    create_table :comments do |t|
    	t.text       :description
    	t.integer    :commentable_id
    	t.string     :commentable_type
    	t.string     :ancestry
        t.belongs_to :user
    	t.timestamps
    end
     add_index :comments, [:commentable_id, :commentable_type]
     add_index :comments, :ancestry
  end
end


# comments are polymorphic 
# and can be added as a has_many association 
# to any model that requires comments.
# add has_comments to any model that you want to make 'commentable'


# t.integer    :commentable_id
# t.string     :commentable_type
# t.belongs_to :commentable, polymorphic: true
