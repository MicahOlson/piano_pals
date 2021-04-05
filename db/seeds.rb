require 'faker'

Keynote.destroy_all
User.destroy_all

chords = [
  {keynote: 'C', mode: 'Major', image: 'c_maj', audio: 'c-maj.mp3'},
  {keynote: 'G', mode: 'Major', image: 'g_maj', audio: 'g-maj.mp3'},
  {keynote: 'D', mode: 'Major', image: 'd_maj', audio: 'd-maj.mp3'},
  {keynote: 'A', mode: 'Major', image: 'a_maj', audio: 'a-maj.mp3'},
  {keynote: 'E', mode: 'Major', image: 'e_maj', audio: 'e-maj.mp3'},
  {keynote: 'B', mode: 'Major', image: 'b_maj', audio: 'b-maj.mp3'},
  {keynote: "C♭", mode: 'Major', image: 'cb_maj', audio: 'c-flat-maj.mp3'},
  {keynote: 'F♯', mode: 'Major', image: 'f#_maj', audio: 'f-sharp-maj.mp3'},
  {keynote: 'G♭', mode: 'Major', image: 'gb_maj', audio: 'g-flat-maj.mp3'},
  {keynote: 'C♯', mode: 'Major', image: 'c#_maj', audio: 'c-sharp-maj.mp3'},
  {keynote: 'D♭', mode: 'Major', image: 'db_maj', audio: 'd-flat-maj.mp3'},
  {keynote: 'A♭', mode: 'Major', image: 'ab_maj', audio: 'a-flat-maj.mp3'},
  {keynote: 'E♭', mode: 'Major', image: 'eb_maj', audio: 'e-flat-maj.mp3'},
  {keynote: 'B♭', mode: 'Major', image: 'bb_maj', audio: 'b-flat-maj.mp3'},
  {keynote: 'F', mode: 'Major', image: 'f_maj', audio: 'f-maj.mp3'},
  {keynote: 'a', mode: 'minor', image: 'a_min', audio: 'a-min.mp3'},
  {keynote: 'e', mode: 'minor', image: 'e_min', audio: 'e-min.mp3'},
  {keynote: 'b', mode: 'minor', image: 'b_min', audio: 'b-min.mp3'},
  {keynote: 'f♯', mode: 'minor', image: 'f#_min', audio: 'f-sharp-min.mp3'},
  {keynote: 'c♯', mode: 'minor', image: 'c#_min', audio: 'c-sharp-min.mp3'},
  {keynote: 'g♯', mode: 'minor', image: 'g#_min', audio: 'g-sharp-min.mp3'},
  {keynote: 'a♭', mode: 'minor', image: 'ab_min', audio: 'a-flat-min.mp3'},
  {keynote: 'd♯', mode: 'minor', image: 'd#_min', audio: 'd-sharp-min.mp3'},
  {keynote: 'e♭', mode: 'minor', image: 'eb_min', audio: 'e-flat-min.mp3'},
  {keynote: 'a♯', mode: 'minor', image: 'a#_min', audio: 'a-sharp-min.mp3'},
  {keynote: 'b♭', mode: 'minor', image: 'bb_min', audio: 'b-flat-min.mp3'},
  {keynote: 'f', mode: 'minor', image: 'f_min', audio: 'f-min.mp3'},
  {keynote: 'c', mode: 'minor', image: 'c_min', audio: 'c-min.mp3'},
  {keynote: 'g', mode: 'minor', image: 'g_min', audio: 'g-min.mp3'},
  {keynote: 'd', mode: 'minor', image: 'd_min', audio: 'd-min.mp3'},
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
