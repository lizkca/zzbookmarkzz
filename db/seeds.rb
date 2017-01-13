# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

more_bookmarks = [
  {:address => 'http://hao123.com', :description => '上网从这里开始'
  },
  {:address => 'http://www.csdn.net', :description => 'csdn'}
]

more_bookmarks.each do |bookmark|
  Bookmark.create!(bookmark)
end
