class test(
  $var1 = undef,
) {

  if $var1 == undef {
    notice ('var1 is undef')
  }else{
    notice("var1 is ${::var1}")
  }


  if $::fact1 == undef {
    notice ('fact1 is undef when comparing as: $::fact1 == undef')
  } else {
    notice('fact1 is not undef when comparing as: $::fact1 == undef')
  }

  if getvar('::fact1') == undef {
    notice ('fact1 is undef when comparing as: getvar("::fact1") == undef')
  } else {
    notice('fact1 is not undef when comparing as: getvar("::fact1") == undef')
  }

  if $facts['fact1'] == undef {
    notice ('fact1 is undef when comparing as: $facts["fact1"] == undef')
  } else {
    notice('fact1 is not undef when comparing as: $facts["fact1"] == undef')
  }

}
