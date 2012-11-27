Matches works without -F

  $ source "$TESTDIR/test_helper.sh"
  > matches "foo and bar and baz" "^foo.*bar"
  > echo $?
  0

Non-matches works without -F

  $ source "$TESTDIR/test_helper.sh"
  > matches "and foo and bar and baz" "^foo.*bar"
  > echo $?
  1

Matches works with -F

  $ source "$TESTDIR/test_helper.sh"
  > matches -F "foo.and[bar]" "foo.and[bar]"
  > echo $?
  0

Non-matches works with -F

  $ source "$TESTDIR/test_helper.sh"
  > matches -F "foo and bar" "foo.and[bar]"
  > echo $?
  1
