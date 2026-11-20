package toy

import "testing"

func TestAdd(t *testing.T) {
	if got := Add(2, 3); got != 5 {
		t.Fatalf("Add(2, 3) = %d, want 5", got)
	}
}

func TestDouble(t *testing.T) {
	if got := Double(4); got != 8 {
		t.Fatalf("Double(4) = %d, want 8", got)
	}
}
