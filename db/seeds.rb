# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@doc = Nokogiri::XML(File.open("database.xml"))
more_bookmarks = []
@doc.xpath("//bookmark").each do |bm|
  more_bookmarks << {:address => bm.children[3]['href'], :description => bm.children[5].text}
  end

more_bookmarks.each do |bookmark|
  Bookmark.create!(bookmark)
end
