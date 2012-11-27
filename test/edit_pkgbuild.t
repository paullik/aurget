It should never edit when never

  $ source "$TESTDIR/test_helper.sh"
  > edit_pkgbuilds='never'
  > edit_pkgbuild ./PKGBUILD "the test"
  > echo $?
  0

It should always edit when always

  $ source "$TESTDIR/test_helper.sh"
  > edit_pkgbuilds='always'
  > edit_pkgbuild ./PKGBUILD "the test"
  editor called with ./PKGBUILD
  prompt called with Continue the test

It should prompt when prompting

  $ source "$TESTDIR/test_helper.sh"
  > edit_pkgbuilds='prompt'
  > edit_pkgbuild ./PKGBUILD "the test"
  prompt called with Edit PKGBUILD before the test
  editor called with ./PKGBUILD
  prompt called with Continue the test
