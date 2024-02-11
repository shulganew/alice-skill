package parser

import "math/rand"

func ParseReadCommand(command string) int {
	return rand.Intn(20)
}

func ParseSendCommand(command string) (string, string) {
	return "igor", "My message"
}

func ParseRegisterCommand(command string) string {
	return "igor"
}
