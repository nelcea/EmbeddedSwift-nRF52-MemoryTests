# Original Example Code using "minimal libc"

Stubs.c implementation is coming from https://github.com/apple/swift-embedded-examples repo, nrfx-blink-sdk project.
prj.conf is modified to remove CONFIG_NEWLIB_LIBC=y using the default "minimal libc" instead of newlib for C standard library. 

With this version, the original implementation of posix_memalign works fine  
and memory is properly allocated, respecting the requested alignment and properly deallocated.

### Console output

```
*** Booting nRF Connect SDK v2.7.0-5cb85570ca43 ***
*** Using Zephyr OS v3.6.99-100befc70c74 ***
>>posix_memalign, asking for 2 with align 16
aligned_alloc returned 0x20001fa0, aligned yes
>>posix_memalign, asking for 32 with align 16
aligned_alloc returned 0x20001fb0, aligned yes
>>posix_memalign, asking for 17 with align 4
aligned_alloc returned 0x20001fd4, aligned yes
>>posix_memalign, asking for 2 with align 16
aligned_alloc returned 0x20001ff0, aligned yes
Instantiating some classes
cSmall
Testing memory deallocation
>>posix_memalign, asking for 4 with align 16
aligned_alloc returned 0x20002070, aligned yes
>>posix_memalign, asking for 4 with align 16
aligned_alloc returned 0x20002070, aligned yes
...
>>posix_memalign, asking for 4 with align 16
aligned_alloc returned 0x20002070, aligned yes
>>posix_memalign, asking for 4 with align 16
aligned_alloc returned 0x20002070, aligned yes
Logic starting
```