# ruby-midi
Ruby Library to generate midi using lilypond

Feel free to use it but be aware that almost anything may change in the future.

# List of all the classes and their use
## Note
Generate a note for the lilypond file system with 0 being a C 1 a C# and so on.

## Rest
Generate a silence for the lilypond file system

## Portee
Generates a list of notes for the lilypond file system

## Score
Generate a music for the lilypond file system

## GeneratorBase
Test of a base for a music generator (see Generator.rb for an example)

## Grid
For manipulating 2D grids

## Mode
Allows to get a note id from a scale id. For example a E (3) in a C major scale will become a 5 where in a C minor it become a 4.
