class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :context

      t.timestamps
    end
  end
end
