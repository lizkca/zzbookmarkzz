class CreateBookmarks < ActiveRecord::Migration
  def up 
    create_table 'bookmarks' do |t|
      t.string 'address'
      t.text 'description'
      t.timestamps
    end
  end
  
  def down
    drop_table 'bookmarks'
  end
  
end
