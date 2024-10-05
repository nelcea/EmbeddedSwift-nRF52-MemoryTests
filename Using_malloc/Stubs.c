#include <stdlib.h>
#include <errno.h>
#include <zephyr/kernel.h>

int
posix_memalign(void **memptr, size_t alignment, size_t size)
{
  printk(">>posix_memalign, asking for %d with align %d\n", size, alignment);

  void *p = malloc(size);
  if (p) {
    printk("malloc returned %p, aligned %s\n", p, ((uint32_t)p % alignment) == 0 ? "yes":"no");
    *memptr = p;
    return 0;
  }

  printk("Error, code %d\n", errno);
  return errno;
}