genres = %w("腕時計" "掛け時計" "スマートウォッチ")

genres.each do |genre|
  Genre.create!(name: genre)
end
