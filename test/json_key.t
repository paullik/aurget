Can find keys in some JSON

  $ source "$TESTDIR/test_helper.sh"
  > json_key '"Foo":"foo","Bar":"bar","Baz":"baz"' 'Bar'
  bar

Returns empty when not proces

  $ source "$TESTDIR/test_helper.sh"
  > json_key '"Foo":"foo","Bar":"bar","Baz":"baz"' 'Biz'
