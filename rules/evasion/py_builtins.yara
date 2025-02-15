
rule indirect_python_builtins : high {
  meta:
    description = "Indirectly refers to Python builtins"
    hash_2023_yfinancce_0_1_setup = "3bde1e9207dd331806bf58926d842e2d0f6a82424abd38a8b708e9f4e3e12049"
    hash_2023_yvper_0_1_setup = "b765244c1f8a11ee73d1e74927b8ad61718a65949e0b8d8cbc04e5d84dccaf96"
  strings:
    $val = /getattr\(__builtins__,[ \w\.\)\)]{0,64}/
  condition:
    any of them
}
