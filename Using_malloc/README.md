# # Using malloc in posix_memalign implementation

Project configuration implementation is coming from https://github.com/apple/swift-embedded-examples repo, nrfx-blink-sdk project.
In this modified version, malloc is used instead of aligned_alloc()

Allocation and deallocation work OK but the returned pointer does not conform to the requested alignment.

### Console output

```
*** Using Zephyr OS v3.6.99-100befc70c74 ***
>>posix_memalign, asking for 2 with align 16
malloc returned 0x20001fc8, aligned no
>>posix_memalign, asking for 32 with align 16
malloc returned 0x20001fd0, aligned yes
>>posix_memalign, asking for 17 with align 4
malloc returned 0x20001ff8, aligned yes
>>posix_memalign, asking for 2 with align 16
malloc returned 0x20002018, aligned no
Instantiating some classes
cSmall
Testing memory deallocation
>>posix_memalign, asking for 4 with align 16
malloc returned 0x20002740, aligned yes
>>posix_memalign, asking for 4 with align 16
malloc returned 0x20002740, aligned yes
...
>>posix_memalign, asking for 4 with align 16
malloc returned 0x20002740, aligned yes
>>posix_memalign, asking for 4 with align 16
malloc returned 0x20002740, aligned yes
Logic starting
```