\version "2.18.2"

lowerA = \absolute {
  \clef alto

  c d e f g a b c' d' e' f' g' a' b'
}

lowerB = \absolute {
  \clef alto

  c d e f g a b c' d' e' f' g' a' b'
}

lowerC = \absolute {
  \clef alto

  c d e f g a b c' d' e' f' g' a' b'
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
