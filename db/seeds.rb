# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bookmark.delete_all

@doc = Nokogiri::HTML(File.open("db.html"))
more_bookmarks = []
count = 0
@doc.xpath('//a').each do |bm|
  count = count + 1
  more_bookmarks << {:address => bm['href'],
                     :description => bm.text}
  end
  print count

more_bookmarks.each do |bookmark|
  Bookmark.create!(bookmark)
end
