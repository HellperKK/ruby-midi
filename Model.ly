\version "2.18.2"

lower = \absolute {
  \clef alto

  a,, b,, c, d, e, f, g, a, b, c d
}

\score {
  \new PianoStaff <<
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
