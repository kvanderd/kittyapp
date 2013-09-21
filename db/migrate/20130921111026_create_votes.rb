class CreateVotes < ActiveRecord::Migration
	def change
		create_table :votes do |t|
			t.boolean :up
			t.belongs_to :user, :unique => true
			t.belongs_to :kitty, :unique => true
		end
	end
end
