# Scripts
Handy scripts...

## GitVersioning.sh
Gets the last git tag of the current project and increments that version to the next depending on the $Type parameter.
- Major: Increments the first number by one and sets the other two to zero e.g 3.4.6 -> 4.0.0
- Minor: Increments the second number by one e.g 3.4.6 -> 3.5.0
- Hotfix: Increments the third number by one e.g 3.4.6 -> 3.4.7
