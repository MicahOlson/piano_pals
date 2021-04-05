require 'faker'

Keynote.destroy_all
User.destroy_all

chords = [
  {keynote: 'C', mode: 'Major', image: 'c_maj', audio: 'c_maj'},
  {keynote: 'G', mode: 'Major', image: 'g_maj', audio: 'g_maj'},
  {keynote: 'D', mode: 'Major', image: 'd_maj', audio: 'd_maj'},
  {keynote: 'A', mode: 'Major', image: 'a_maj', audio: 'a_maj'},
  {keynote: 'E', mode: 'Major', image: 'e_maj', audio: 'e_maj'},
  {keynote: 'B', mode: 'Major', image: 'b_maj', audio: 'b_maj'},
  {keynote: 'C♭', mode: 'Major', image: 'cb_maj', audio: 'cb_maj'},
  {keynote: 'F♯', mode: 'Major', image: 'f#_maj', audio: 'f#_maj'},
  {keynote: 'G♭', mode: 'Major', image: 'gb_maj', audio: 'gb_maj'},
  {keynote: 'C♯', mode: 'Major', image: 'c#_maj', audio: 'c#_maj'},
  {keynote: 'D♭', mode: 'Major', image: 'db_maj', audio: 'db_maj'},
  {keynote: 'A♭', mode: 'Major', image: 'ab_maj', audio: 'ab_maj'},
  {keynote: 'E♭', mode: 'Major', image: 'eb_maj', audio: 'eb_maj'},
  {keynote: 'B♭', mode: 'Major', image: 'bb_maj', audio: 'bb_maj'},
  {keynote: 'F', mode: 'Major', image: 'f_maj', audio: 'f_maj'},
  {keynote: 'a', mode: 'minor', image: 'a_min', audio: 'a_min'},
  {keynote: 'e', mode: 'minor', image: 'e_min', audio: 'e_min'},
  {keynote: 'b', mode: 'minor', image: 'b_min', audio: 'b_min'},
  {keynote: 'f♯', mode: 'minor', image: 'f#_min', audio: 'f#_min'},
  {keynote: 'c♯', mode: 'minor', image: 'c#_min', audio: 'c#_min'},
  {keynote: 'g♯', mode: 'minor', image: 'g#_min', audio: 'g#_min'},
  {keynote: 'a♭', mode: 'minor', image: 'ab_min', audio: 'ab_min'},
  {keynote: 'd♯', mode: 'minor', image: 'd#_min', audio: 'd#_min'},
  {keynote: 'e♭', mode: 'minor', image: 'eb_min', audio: 'eb_min'},
  {keynote: 'a♯', mode: 'minor', image: 'a#_min', audio: 'a#_min'},
  {keynote: 'b♭', mode: 'minor', image: 'bb_min', audio: 'bb_min'},
  {keynote: 'f', mode: 'minor', image: 'f_min', audio: 'f_min'},
  {keynote: 'c', mode: 'minor', image: 'c_min', audio: 'c_min'},
  {keynote: 'g', mode: 'minor', image: 'g_min', audio: 'g_min'},
  {keynote: 'd', mode: 'minor', image: 'd_min', audio: 'd_min'},
]

chords.each do |chord|
  Keynote.create!(keynote: chord[:keynote], mode: chord[:mode], image: chord[:image], audio: chord[:audio])
end

User.create!(email: "test@test.com", password: "test123", username: "Test")
10.times do
  username = Faker::FunnyName.unique.name
  User.create!(email: "#{username.gsub(/\W/, '')}@flashchords.com", password: "password", username: username)
end

p "Created #{Keynote.count} keynotes."
p "Created #{User.count} users."
