import "math"

rule setuptools_no_fail : high {
  meta:
    description = "Python library installer that hides exceptions"
    hash_2023_grandmask_3_13_setup = "8835778f9e75e6493693fc6163477ec94aba723c091393a30d7e7b9eed4f5a54"
    hash_2023_py_guigrand_4_67_setup = "4cb4b9fcce78237f0ef025d1ffda8ca8bc79bf8d4c199e4bfc6eff84ce9ce554"
    hash_2023_py_killtoolad_3_65_setup = "64ec7b05442356293e903afe028637d821bad4444c4e1e11b73a4ff540fe480b"
  strings:
    $setup = "setup(" fullword
    $setuptools = "setuptools"
    $distutils = "distutils"
    $e_val = /except:.{0,4}pass/ fullword
  condition:
    $setup and ($setuptools or $distutils) and $e_val
}

rule setuptools_no_fail2 : high {
  meta:
    description = "Python library installer that hides exceptions"
  strings:
    $setup = "setup(" fullword
    $setuptools = "setuptools"
    $distutils = "distutils"
    $e_val = /except Exception as.{0,8}pass/ fullword
  condition:
    $setup and ($setuptools or $distutils) and $e_val
}
