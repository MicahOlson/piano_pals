Keynote.destroy_all

chords = [
  {keynote: 'C',  mode: 'Major', image: 'c-maj.png',       audio: 'c-maj.mp3'},
  {keynote: 'G',  mode: 'Major', image: 'g-maj.png',       audio: 'g-maj.mp3'},
  {keynote: 'D',  mode: 'Major', image: 'd-maj.png',       audio: 'd-maj.mp3'},
  {keynote: 'A',  mode: 'Major', image: 'a-maj.png',       audio: 'a-maj.mp3'},
  {keynote: 'E',  mode: 'Major', image: 'e-maj.png',       audio: 'e-maj.mp3'},
  {keynote: 'B',  mode: 'Major', image: 'b-maj.png',       audio: 'b-maj.mp3'},
  {keynote: "C♭", mode: 'Major', image: 'c-flat-maj.png',  audio: 'c-flat-maj.mp3'},
  {keynote: 'F♯', mode: 'Major', image: 'f-sharp-maj.png', audio: 'f-sharp-maj.mp3'},
  {keynote: 'G♭', mode: 'Major', image: 'g-flat-maj.png',  audio: 'g-flat-maj.mp3'},
  {keynote: 'C♯', mode: 'Major', image: 'c-sharp-maj.png', audio: 'c-sharp-maj.mp3'},
  {keynote: 'D♭', mode: 'Major', image: 'd-flat-maj.png',  audio: 'd-flat-maj.mp3'},
  {keynote: 'A♭', mode: 'Major', image: 'a-flat-maj.png',  audio: 'a-flat-maj.mp3'},
  {keynote: 'E♭', mode: 'Major', image: 'e-flat-maj.png',  audio: 'e-flat-maj.mp3'},
  {keynote: 'B♭', mode: 'Major', image: 'b-flat-maj.png',  audio: 'b-flat-maj.mp3'},
  {keynote: 'F',  mode: 'Major', image: 'f-maj.png',       audio: 'f-maj.mp3'},
  {keynote: 'a',  mode: 'minor', image: 'a-min.png',       audio: 'a-min.mp3'},
  {keynote: 'e',  mode: 'minor', image: 'e-min.png',       audio: 'e-min.mp3'},
  {keynote: 'b',  mode: 'minor', image: 'b-min.png',       audio: 'b-min.mp3'},
  {keynote: 'f♯', mode: 'minor', image: 'f-sharp-min.png', audio: 'f-sharp-min.mp3'},
  {keynote: 'c♯', mode: 'minor', image: 'c-sharp-min.png', audio: 'c-sharp-min.mp3'},
  {keynote: 'g♯', mode: 'minor', image: 'g-sharp-min.png', audio: 'g-sharp-min.mp3'},
  {keynote: 'a♭', mode: 'minor', image: 'a-flat-min.png',  audio: 'a-flat-min.mp3'},
  {keynote: 'd♯', mode: 'minor', image: 'd-sharp-min.png', audio: 'd-sharp-min.mp3'},
  {keynote: 'e♭', mode: 'minor', image: 'e-flat-min.png',  audio: 'e-flat-min.mp3'},
  {keynote: 'a♯', mode: 'minor', image: 'a-sharp-min.png', audio: 'a-sharp-min.mp3'},
  {keynote: 'b♭', mode: 'minor', image: 'b-flat-min.png',  audio: 'b-flat-min.mp3'},
  {keynote: 'f',  mode: 'minor', image: 'f-min.png',       audio: 'f-min.mp3'},
  {keynote: 'c',  mode: 'minor', image: 'c-min.png',       audio: 'c-min.mp3'},
  {keynote: 'g',  mode: 'minor', image: 'g-min.png',       audio: 'g-min.mp3'},
  {keynote: 'd',  mode: 'minor', image: 'd-min.png',       audio: 'd-min.mp3'},
]

chords.each do |chord|
  Keynote.create!(keynote: chord[:keynote], mode: chord[:mode], image: chord[:image], audio: chord[:audio])
end

p "Created #{Keynote.count} keynotes."
