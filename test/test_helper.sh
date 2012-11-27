[[ -n "$HELPER_SOURCED" ]] && return

source "$TESTDIR/../aurget"

editor() {
  echo "editor called with $*"
}
EDITOR=editor

curl() {
  echo "curl called with $*"
}

makepkg() {
  echo "makepkg called with $*"
}

pacman() {
  echo "pacman called with $*"
}

prompt() {
  echo "prompt called with $*"
}

HELPER_SOURCED=1
