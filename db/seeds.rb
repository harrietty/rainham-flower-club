# Delete all record first to avoid duplication

Gallery.delete_all
Image.delete_all

hearts_and_flowers = Gallery.create(title: 'Hearts and Flowers: Feb 2017', cover_photo: 'haf1.jpg')
area_show = Gallery.create(title: 'Area Show, May 2016', cover_photo: 'show1.jpg')
national_flower_day = Gallery.create(title: 'National Flower Arranging Day, May 2016', cover_photo: 'day1.jpg')
dem_and_dine = Gallery.create(title: 'Dem and Dine: Nov 2015', cover_photo: 'dd1.jpg')

# For each gallery, create records for the associated images

['day1', 'day2', 'day3'].each do |img|
  national_flower_day.images << Image.new(path: "gallery_photos/#{img}.jpg")
end

['dd1', 'dd2', 'dd3', 'dd4', 'dd5', 'dd6', 'dd7'].each do |img|
  dem_and_dine.images << Image.new(path: "gallery_photos/#{img}.jpg")
end

['haf1', 'haf2', 'haf3', 'haf4'].each do |img|
  hearts_and_flowers.images << Image.new(path: "gallery_photos/#{img}.jpg")
end

['show1', 'show2', 'show3', 'show4', 'show5', 'show6', 'show7'].each do |img|
  area_show.images << Image.new(path: "gallery_photos/#{img}.jpg")
end
