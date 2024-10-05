# Using k_alloc_aligned in posix_memalign implementation and calling k_free when deallocating

Project configuration and Stubs.c implementation is coming from https://github.com/apple/swift-embedded-examples repo, nrfx-blink-sdk project.
In this modified version, k_aligned_alloc() is used instead of aligned_alloc()
This required to set CONFIG_HEAP_MEM_POOL_SIZE in prj.conf

Allocation works OK, the explicit call to k_free after deallocate gets memory properly freed.

### Console output

```
*** Booting nRF Connect SDK v2.7.0-5cb85570ca43 ***
*** Using Zephyr OS v3.6.99-100befc70c74 ***
>>posix_memalign, asking for 2 with align 16
k_aligned_alloc returned 0x20001fb0, aligned yes
>>posix_memalign, asking for 32 with align 16
k_aligned_alloc returned 0x20001fc0, aligned yes
>>posix_memalign, asking for 17 with align 4
k_aligned_alloc returned 0x20001fe8, aligned yes
>>posix_memalign, asking for 2 with align 16
k_aligned_alloc returned 0x20002010, aligned yes
Instantiating some classes
cSmall
Testing memory deallocation
>>posix_memalign, asking for 4 with align 16
k_aligned_alloc returned 0x20002020, aligned yes
>>posix_memalign, asking for 4 with align 16
k_aligned_alloc returned 0x20002020, aligned yes
...
>>posix_memalign, asking for 4 with align 16
k_aligned_alloc returned 0x20002020, aligned yes
>>posix_memalign, asking for 4 with align 16
k_aligned_alloc returned 0x20002020, aligned yes
Logic starting
```