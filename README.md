# 30 seconds of Go

[![Build Status](https://api.travis-ci.org/thinkerou/30-seconds-of-go.svg)](https://travis-ci.org/thinkerou/30-seconds-of-go)
[![codecov](https://codecov.io/gh/thinkerou/30-seconds-of-go/branch/master/graph/badge.svg)](https://codecov.io/gh/thinkerou/30-seconds-of-go)
[![Go Report Card](https://goreportcard.com/badge/github.com/thinkerou/30-seconds-of-go)](https://goreportcard.com/report/github.com/thinkerou/30-seconds-of-go)
[![GoDoc](https://godoc.org/github.com/thinkerou/30-seconds-of-go?status.svg)](https://godoc.org/github.com/thinkerou/30-seconds-of-go)

Curated collection of useful Go snippets that you can understand in 30 seconds or less.

> **Note:** The project is inspired by [30 seconds of code](https://github.com/30-seconds/30-seconds-of-code), but there is no affiliation with that project.

## Installation

⚠️  **NOTICE:** A few of our snippets are not yet optimized for production (see disclaimers for individual snippet issues).

To install this package, you need to install Go and setup your Go workspace on your computer. The simplest way to install the library is to run:

```shell
$ go get -u github.com/thinkerou/30-seconds-of-go
```

## Prerequisites

This requires Go 1.12 or later.

## Table of Contents

### 🔌 Adapter

<details>
<summary>View contents</summary>

</details>

### 📚 Array

<details>
<summary>View contents</summary>

</details>

### ⏱️  Date

<details>
<summary>View contents</summary>

</details>

### 🎛️  Function

<details>
<summary>View contents</summary>

</details>

### ➗ Math

<details>
<summary>View contents</summary>

* [`average`](#average)
* [`averageBy`](#averageby)
* [`fibonacci`](#fibonacci)
* [`gcd`](#gcd)
* [`isEven`](#iseven)
* [`isPowerOf2`](#ispowerof2)
* [`isPrime`](#isprime)

</details>

### 🗃️  Object

<details>
<summary>View contents</summary>

</details>

### 📜 String

<details>
<summary>View contents</summary>

</details>

### 📃 Type

<details>
<summary>View contents</summary>

</details>

### 🔧 Utility

<details>
<summary>View contents</summary>

</details>

------

## ➗ Math

### average

Returns the average of two or more numbers.

<details>
<summary>Examples</summary>

```go
```

</details>

<br>[⬆ Back to top](#table-of-contents)

### averageBy

Returns the average of an array, after mapping each element to a value using the provided function.

```go
```

<details>
<summary>Examples</summary>

```go
```

</details>

<br>[⬆ Back to top](#table-of-contents)

### fibonacci

Geerates an array, containing the Fibonacci sequence, up until the nth term.

<details>
<summary>Examples</summary>

```go
```

</details>

<br>[⬆ Back to top](#table-of-contents)


### gcd

Calculates the greatest common divisor between two or more numbers/arrays.

<details>
<summary>Examples</summary>

```go
```

</details>

<br>[⬆ Back to top](#table-of-contents)

### isEven

Returns `true` if the given number is even, `false` otherwise.

Checks whether a number is odd or even using the modulo (`%`) operator or and (`&`) operator. Returns `true` if the number is even, `false` if the number is odd.

```
func isEven(i int) bool {
	return i % 2 == 0
}

func isEven(i int) bool {
	return i & 1 == 0
}
```

<details>
<summary>Examples</summary>

```
isEven(-1) // false
isEven(-2) // true
isEven(3) // false
isEven(4) // true
```

</details>

<br>[⬆ Back to top](#table-of-contents)

### isPowerOf2

Returns `true` is the given positive integer is the power of 2, `false` otherwise.

Checks whether a positive integer is the power of 2 using the and (`&`) operator.

```
func is PowerOf2(i uint) bool {
	return i & (i -1) == 0
}
```

<details>
<summary>Examples</summary>

```
isPowerOf2(1) // true
isPowerOf2(2) // true
isPowerOf2(3) // false
isPowerOf2(4) // true
```

</details>

<br>[⬆ Back to top](#table-of-contents)

### isPrime

Checks if the provided integer is a prime number.

Check numbers from `2` to the square root of the given number. Return `false` if any of them divides the given number, else return `true`, unless the number is less than `2`.

```
func isPrime(n int) bool {
	boundary := int (math.Floor(math.Sqrt(float64 (n))))
	for i := 2;  i <= boundary; i++ {
		if n % i == 0 {
			return false
		}
	}
	return n >= 2
}
```

<details>
<summary>Examples</summary>

```
isPrime(0) // false
isPrime(1) // false
isPrime(2) // true
isPrime(3) // true
isPrime(4) // false
isPrime(11) // true
```

</details>

<br>[⬆ Back to top](#table-of-contents)


