package snippets

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestAverage(t *testing.T) {
	// assert.Panics(t, Average())
	assert.Equal(t, 1, Average(1))
	assert.Equal(t, 2, Average(1, 2, 3))
	assert.Equal(t, 2, Average(1, 2, 3, 4))
}
