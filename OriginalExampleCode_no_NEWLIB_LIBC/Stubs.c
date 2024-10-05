#include <stdlib.h>
#include <errno.h>
#include <zephyr/kernel.h>

void *aligned_alloc(size_t alignment, size_t size);

// Embedded Swift currently requires posix_memalign, but the C libraries in the
// Zephyr SDK do not provide it. Let's implement it and forward the calls to
// aligned_alloc(3).
int
posix_memalign(void **memptr, size_t alignment, size_t size)
{
  printk(">>posix_memalign, asking for %d with align %d\n", size, alignment);

  void *p = aligned_alloc(alignment, size);
  if (p) {
    printk("aligned_alloc returned %p, aligned %s\n", p, ((uint32_t)p % alignment) == 0 ? "yes":"no");
    *memptr = p;
    return 0;
  }

  printk("Error, code %d\n", errno);
  return errno;
}