##Generics:-
			Generics mean parameterized types. The idea is to allow type (Integer, String, … etc, and user-					defined types) to be a parameter to methods, classes, and interfaces. Using Generics, it is 		
			possible to create classes that work with different data types.

			Generic code enables you to write flexible, reusable functions and types that can work with any 			        type.
syntax:-
```Swift
			func addition<T: Numeric>(a: T, b: T) -> T
			{
    				return a + b   // T-> placeholder type
			}


```
##program 
```swift
func mygeneric<T>(_ a:[T]){
    for i in a{
        print(i)
    }
}
var mystring : [String] = ["a","b","c"]
```
##program-2

```swift

func mygeneric<T>(_ a:[T]){
    for i in a{
        print(i)
    }
}
var myarray : [Int] = [1,2,3,4,5]
var myanytype : [Any] = ["a" ,123,"hel"]
mygeneric(myarray)
mygeneric(myanytype)
```


program-2

```swift
func exchange(a: inout Int, b: inout Int) {
   let temp = a
   a = b
   b = temp
}

var numb1 = 100
var numb2 = 200

print("Before Swapping values are: \(numb1) and \(numb2)")
exchange(a: &numb1, b: &numb2)
print("After Swapping values are: \(numb1) and \(numb2)")
```

program-3
```swift
func myappend<T>(_ arr :[T]?) -> [T]
{
 
 return arr!
    
}
var myarray : [Int] = [1,2,3]
print(myappend(myarray))
```
program -4
```swift
struct TOS<T> {
   var items = [T]()
   mutating func push(item: T) {
      items.append(item)
   }
   mutating func pop() -> T {
      return items.removeLast()
   }
}

var tos = TOS<String>()
tos.push(item: "Swift 4")
print(tos.items)

tos.push(item: "Generics")
print(tos.items)

tos.push(item: "Type Parameters")
print(tos.items)

tos.push(item: "Naming Type Parameters")
print(tos.items)

let deletetos = tos.pop()
```
###closures


cloures:-  A closure is a special type of function without the function name basically (lambda function)
```swift
syntax:-
		{ (parameters) -> return type in
    			statements
		}
		{     
   		(Int, Int) −> Bool in
   		Statement1
  		Statement 2
 		  ---
   		Statement n
		}
```
ex-1
 ```swift
		let sumoftwo = { (n1 : Int , n2 : Int) -> Int in  return n1+n2}
		let res = sumoftwo(34,10)
		print(res)  // o/p-44
 ```
ex-2

		#closure definition
    ```swift
		var findSquare = { (num: Int) -> (Int) in
  		var square = num * num
  		return square
		}
    ```
		// closure call
		var result = findSquare(3)
		print("Square:",result)
ex-3
```swift
		let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
		var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
 ```
ex-4
```swift
		var shorthand: (String, String) -> String
		shorthand = { $1 }
		print(shorthand("100", "200"))
```

#Closures as Trailers
```swift
			reversed = sorted(names) { $0 > $1}
			reversedNames = names.sorted(by: >) //operator method
```
Trailing Closure :- In trailing closure, if a function accepts a closure as its last parameter,

ex-1
```swift
		let digitNames = [
    			0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
 			5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
			]
		let numbers = [16, 58, 510]
		let strings = numbers.map { (number) -> String in
    		var number = number
    		var output = ""
    		repeat {
        	output = digitNames[number % 10]! + output
        	number /= 10
    		} while number > 0
    		return output
		}
    
   Typecasting
   -----------
    
    Type casting is used to check the type of instances to find out whether it belongs to particular class type. Also, it checks hierarchy of classes and its subclasses to check and cast those instances to make it as a same hierarchy.
	
 ```swift 
  class House
{
    var windows:Int = 0

    init(windows:Int) {
        self.windows = windows
    }
}
```
```swift
class Villa: House
{
    var hasGarage:Bool = false

    init(windows:Int, hasGarage:Bool)
    {
        self.hasGarage = hasGarage

        super.init(windows: windows)
    }
}
```
```swift
class Castle: House
{
    var towers:Int = 0

    init(windows:Int, towers:Int)
    {
        self.towers = towers

        super.init(windows: windows)
    }
}
```

Looking back on the class hierarchy, we can do this:

We can downcast an instance of type House to Villa or Castle
We can upcast an instance of type Villa or Castle to House
We can’t cast an instance of type Castle to Villa, or vice-versa


You can use 4 different syntaxes for casting in Swift:

as for upcasting

is for type checking

as! for force downcasting

as? for optional downcasting


You use the type check operator `is` to check the type of an instance. The expression returns a value of type Bool, so it’s perfect to use in a conditional.

```swift

let tintagel:Castle = Castle(windows: 300, towers: 1)
if tintagel is Castle {
    print("It's a castle!")
} else if tintagel is Villa {
    print("It's a villa!")
}
```


Protocals:-
		Protocols provide a blueprint for Methods, properties and other requirements functionality. It is just 		described as a methods or properties skeleton instead of implementation. Methods and properties 		implementation can further be done by defining classes, functions and enumerations.
    
 

```swift
syntax:-
		protocol someProtocol{
  			// Definition goes here
		}
```
 ```swift  
  struct SomeStructure: FirstProtocol, AnotherProtocol {
    // structure definition goes here
}
```
```swift   
  class SomeStructure: FirstProtocol, AnotherProtocol,protocaltwo {
    // class definition goes here
}
```

ex-1
``` swift
  protocol Edible 
		{
    			func eat() // it only defines the function name but not implementations
		}

		class Apple: Edible
		{
    			func eat()
    		{
        		print("Omnomnom! Eating the apple...")
    		}
		}
```

ex-2
```swift
protocol SomeProtocol {
    var mustBeSettable: Int { get set }. // get and set methods to get the data and to set the data
    var doesNotNeedToBeSettable: Int { get }
}
```
```swift
protocol myproto {
 
    var myname : String{get}
    
}
struct person : myproto{

 var myname : String   
}
let my  = person(myname : "raju")
print(my.myname)
```


program-3
```swift
protocol FullyNamed {
    var fullName: String { get }
}

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
var shipname = Starship(name: "Enterprise", prefix: "USS")
print(shipname.fullname)
```

program 4
```swift
protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
// lightSwitch is now equal to .on
```


Delgation

Delegation can be used to respond to a particular action, or to retrieve data from an external source without needing to know the underlying type of that source.
```swift
struct Cookie {
    var size:Int = 5
    var hasChocolateChips:Bool = false
}

class Bakery
{
    func makeCookie()
    {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true
    }
    
protocol BakeryDelegate {
    func cookieWasBaked(_ cookie: Cookie)
}
class Bakery
{
    var delegate:BakeryDelegate?

    func makeCookie()
    {
        var cookie = Cookie()
        cookie.size = 6
        cookie.hasChocolateChips = true

        delegate?.cookieWasBaked(cookie)
    }
}

}

class CookieShop: BakeryDelegate
{
    func cookieWasBaked(_ cookie: Cookie)
    {
        print("Yay! A new cookie was baked, with size \(cookie.size)")
    }
}
let shop = CookieShop()

let bakery = Bakery()
bakery.delegate = shop

bakery.makeCookie()
// Output: Yay! A new cookie was baked, with size 6
```
