package snippets

func Average(args ...int) int {
	sum := 0
	for _, v := range args {
		sum += v
	}

	return sum / len(args)
}
