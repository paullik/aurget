Url encoding should work

  $ source "$TESTDIR/test_helper.sh"
  > url_encode "something'with[quotes, %etc
  > and ]newlines"
  something%27with%5bquotes%2c+%25etcand+%5dnewlines (no-eol)
