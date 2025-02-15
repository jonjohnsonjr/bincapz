rule icmp {
	meta:
		description = "ICMP (Internet Control Message Protocol), aka ping"
		ref = "https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol"
	strings:
		$ICMP = "ICMP" fullword
	condition:
		any of them
}

rule phrases {
	meta:
		description = "ICMP (Internet Control Message Protocol), aka ping"
		ref = "https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol"
	strings:
		$echo_request = "Echo Request" fullword
		$source_quench = "Source Quench" fullword
		$echo_reply = "Echo Reply" fullword
	condition:
		2 of them
}