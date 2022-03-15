genres = %w("肉" "果物" "魚介" "酒" "菓子" "麺" "イベント" "雑貨")

genres.each do |genre|
  Genre.create!(name: genre)
end
