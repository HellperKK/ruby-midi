\version "2.18.2"

lowerA = \absolute {
  \clef alto

  c cis d dis e f fis g gis a ais b c' cis'
}

lowerB = \absolute {
  \clef alto

  c cis d dis e f fis g gis a ais b c' cis'
}

lowerC = \absolute {
  \clef alto

  c cis d dis e f fis g gis a ais b c' cis'
}

\score {
  \new PianoStaff <<
    \new Staff = "lowerA" \lowerA
\new Staff = "lowerB" \lowerB
\new Staff = "lowerC" \lowerC
  >>
  \layout { }
  \midi { }
}
