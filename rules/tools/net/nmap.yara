
rule hacktool_nmap : medium {
  meta:
    hash_2023_Linux_Malware_Samples_1d28 = "1d2800352e15175ae5fa916b48a96b26f0199d9f8a9036648b3e44aa60ed2897"
    hash_2023_Linux_Malware_Samples_5a62 = "5a628dc26dae0309941d70021cfbb4281189f85b074bf3e696058d73c4609101"
  strings:
    $nmap_payload = "nmap-payload"
  condition:
    any of them
}
