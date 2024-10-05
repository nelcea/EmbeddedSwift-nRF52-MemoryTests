@main
struct Main {
  static func main() {
    // Explicitly allocate some memory using pointer, for types of different sizes
    var iPtr: UnsafeMutablePointer<UInt16> = UnsafeMutablePointer<UInt16>.allocate(capacity: 1)
    var pMedium = UnsafeMutablePointer<MediumStruct>.allocate(capacity: 1)
//    var a = [true] -> no allocation
    var a: [Bool] = Array(repeating: true, count: 1)
    var iPtr2: UnsafeMutablePointer<UInt16> = UnsafeMutablePointer<UInt16>.allocate(capacity: 1)

    // Instantiate some classes and check how this translates into memory allocations on the heap
    // Don't use String interpolation, as that generates allocations
    print("Instantiating some classes")
    let cSmall = Small(i: 10)
    if cSmall.i == 10 {
      print("cSmall")
    }

    var vSmall = Small(i: 20)
    if vSmall.i == 10 {
      print("cSmall")
    }

    var vMedium = Medium()
    if vMedium.d == 10 {
      print("cSmall")
    }

    print("Testing memory deallocation")
    // Allocate and free a large number of memory blocks to check deallocation is working properly
    // 100 iterations are enough, as heap size is only defined as 256 bytes
    for i in 1..<100 {
      var ptr: UnsafeMutablePointer<UInt32> = UnsafeMutablePointer<UInt32>.allocate(capacity: 1)
      ptr.deallocate()
      k_free(ptr)
    }

    print("Logic starting")
    while true {
      k_msleep(10000)
    }
  }
}

class Small {
  var i: Int

  init(i: Int) {
    self.i = i
  }
}

class Medium {
  var a = 42
  var b = true
  var c = "Hello"
  var d = 43
  var e = 44
  var f = 45
}

struct MediumStruct {
  var a = 42
  var b = true
  var c = "Hello"
  var d = 43
  var e = 44
  var f = 45
}