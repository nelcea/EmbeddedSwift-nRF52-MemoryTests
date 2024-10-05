# Original Example Code

Project configuration and Stubs.c implementation are coming from https://github.com/apple/swift-embedded-examples repo, nrfx-blink-sdk project.

As first allocation is requested, we see an infinite recursion in posix_memalign and the board crashes

### Console output

```
*** Using Zephyr OS v3.6.99-100befc70c74 ***
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for 2 with align 16
>>posix_memalign, asking for
```