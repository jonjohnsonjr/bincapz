
rule htpasswd : medium {
  meta:
    description = "Access .htpasswd files"
    hash_2023_0xShell_0xShellori = "506e12e4ce1359ffab46038c4bf83d3ab443b7c5db0d5c8f3ad05340cb09c38e"
    hash_2023_0xShell_wesoori = "bab1040a9e569d7bf693ac907948a09323c5f7e7005012f7b75b5c1b2ced10ad"
  strings:
    $ref = ".htpasswd"
    $ref2 = "Htpasswd"
  condition:
    any of them
}
