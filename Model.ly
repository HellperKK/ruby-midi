\version "2.18.2"

lower = \absolute {
  \clef alto
  \tempo 4 = 120

  a,, b,, c, d, e, f, g, a, b, c d
}

\score {
  \new PianoStaff <<
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
