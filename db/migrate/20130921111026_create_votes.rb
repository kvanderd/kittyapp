class CreateVotes < ActiveRecord::Migration
 def change
 	create_table :vote do |t|
 		t.integer
end
