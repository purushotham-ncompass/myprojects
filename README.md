Topic 1.1.Basics
--------------------------------------------------
constanst:- The values that cannot be alterted .
ex:	let mynum = 10
	let mynum2:Float = 3.14
variable:- The values that are used to store and also altered
	var myname = "ravi"
	var myname:String = "hello"
Declaring multiples constants and variables 
 ex:
	var x = 0.0, y = 0.0, z = 0.0
type-conversion:-
		let three = 3
		let pointOneFourOneFiveNine = 0.14159
		let pi = Double(three) + pointOneFourOneFiveNine
		let integerPi = Int(pi) //converting to integer

Tuples:- A single tuples can contain multiple values with differt data types

	syntax:-
		var TupleName = (Value1, value2,… any number of values)
	ex:-
		var mytuple = ("hello", “world”,123)
		print(“The code is\(mytuple.0)”) // accessing the tuple with "." operator
		print("\(mytuple.1)")// accessing the 2nd element of the tuple
		var error501 = (errorCode: 501, description: “Not Implemented”)
		print(error501.errorCode)   // prints 501. 

Optionals:-An optional represents two possibilities: 
	   Either there is a value, and you can unwrap the 
	   optional to access that value, or there isn’t a value at all.

ex:-
	var n1:Int? // here n1 may contains a value or may not contains a value
	var myStr: String?
program:-
```
var myString:String? = nil

if myString != nil {
   print(myString)
} else {
   print("myString has nil value")
}
```

Force Unwrapping:-when the variable is defined as optional ,to get that value we should unwrap by "!" mark
ex:-
```
	var myString:String? // if we provide ! here then automatic unwraping will done
	myString = "Hello, Swift 4!"
	if myString != nil {
   	print( myString! )// here unwrapping is done with ! mark .
	} 
	else {
   	print("myString has nil value")
	}
```
Optional Binding:-  Use optional binding to find out whether an optional contains a value, 
	            and if so, to make that value available as a temporary constant or variable.
		    syntax:-
        ```
				if let constantName = someOptional {
 					  statements
					}
          ```
		    program:-
        ```
				var myString:String?
				myString = "Hello, Swift 4!"

				if let yourString = myString {  // if mystring contains a value 
   				print("Your string has - \(yourString)")	
				} else {
  				 print("Your string does not have a value")
				}
        ```
-----------------------------------------------------------
Topic 1.2 Basic Operators
 
comparison operators:-
		Equal to (a == b)
		Not equal to (a != b)
		Greater than (a > b)
		Less than (a < b)
		Greater than or equal to (a >= b)
		Less than or equal to (a <= b)
Terinary condions operators:-A ternary operator evaluates a condition and executes a block of code 
			     based on the condition.
			     syntax:-
           ```
					condition ? expression1 : expression2
          ```
			     ex:-
         ```  
				let marks = 60
				let result = (marks >= 40) ? "pass" : "fail"
				print("You " + result + " the exam")
        ```
				program-2
        ```
				let num = 15
				let result = (num > 0) ? "Positive Number" : "Negative Number"
				print(result)
        ```
				program-3	
        ```
				let num = 7 // nested terinary
				let result = (num == 0) ? "Zero" : ((num > 0) ? "Positive" : "Negative")
        ```

nil coalesing:- (a??b) operators unwraps an optional a if it contains a value, or returns a default value b if a is nil
			```
      var num : Int? 
			let mynum = num ?? 56   
			print(mynum)
			var num : Int? = 90
			let mynum = num ?? 56   
			print(mynum)`
      ```
Logical operators:-
			Logical NOT (!a) if(a!=10)
			Logical AND (a && b)
			Logical OR (a || b)
------------------------------------------------------------------------
Topic 1.3 String and Charecter

Strings:-
```
	var stringA = "Hello, Swift 4!"
	var stringB = String("Hello, Swift 4!")//using String instance
  ```
Functions supported for string:-
	>isEmpty --Bool value
	>hasPrefix(prefix: String)
	>hasSuffix(suffix: String)
	>toInt() // string to integer
	>count() // count the number of charecter in a string
	>startIndex()
	>endIndex()
	>insert("value",at:position)
	>remove(at: position)
	1>reversed() // to reverse the string
```
ex-
```
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
o/p- G
greeting[greeting.index(before: greeting.endIndex)]
o/p- !
greeting[greeting.index(after: greeting.startIndex)]
o/p- u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
output -a
```
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
-- welcome now equals "hello!"
welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))
 welcome now equals "hello there!"

```
#substring:-

	let greeting = "Hello, world!"
	let index = greeting.firstIndex(of: ",") ?? greeting.endIndex 
	let beginning = greeting[..<index] //if "," is present its index will be taken else end index will be taken
	o/p:-beginning is "Hello"

	//Convert the result to a String for long-term storage.
	let newString = String(beginning)
-------------------------------------------------------------------------------------
Topic 1.4 Collections
 
Collections :- Three primary collection types, known as arrays, sets, and dictionaries


ARRAYS:- 
    Arrays are ordered collections of values of similar types of data.
    ```
	  var numbers : [Int] = [2, 4, 6, 8] //creation of array
	  var numbers  = [2, 4, 6, 8]
    ```
	  creation of empty array
		ex-
    ```
			var value = [Int]()
      ```               //an empty array with integer data type is created
	 Accessing the values in array
		ex-
    ```
			var languages = ["Swift", "Java", "C++"]
			print(languages[0],language[1])	
			languages.append("helo")//appending to array
      ```
		ex-2
    ```
			var primeNumbers = [2, 3, 5]
			print("Array1: \(primeNumbers)")
			var evenNumbers = [4, 6, 8]
			print("Array2: \(evenNumbers)")
			primeNumbers.append(contentsOf: evenNumbers) //for joining two arrays
			let removedValue = languages.remove(at: 1)
      ````
	array with String and integer data
		var address: [Any] = ["Scranton", 570] ***
	var threeDoubles = Array(repeating: 0.0, count: 3)//create array with defalut values
SETS:-
```
	var studentID : Set = [112, 114, 115, 118, 116]
	var studentID : Set<Int> = [112, 114, 115, 116, 118]
	var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
	var favoriteGenres: Set         = ["Rock", "Classical", "Hip hop"]

	if let removedGenre = favoriteGenres.remove("Rock") {
    		print("\(removedGenre)? I'm over it.")	
	} else {
    	print("I never much cared for that.")
	}
	if favoriteGenres.contains("Funk") {   // contains checks in set
    	print("I get up on the good foot.")
	} else {
    	print("It's too funky in here.")
      ```
programs:-
```
		let oddDigits: Set = [1, 3, 5, 7, 9]
		let evenDigits: Set = [0, 2, 4, 6, 8]
		let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

		oddDigits.union(evenDigits).sorted()
		o/p 	[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		oddDigits.intersection(evenDigits).sorted()
		o/p 	[]
		oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
		o/p 	[1, 9]
		oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
		o/p	 [1, 2, 9]
```
		ex-2
    ```
		let setA: Set = [1, 3, 5]
				print("Set A: ", setA)
		// second set
			let setB: Set = [0, 2, 4]
			print("Set B: ", setB)

		// perform union operation
			print("Union: ", setA.union(setB))

```




##DICTONARY
```
		var namesOfIntegers: [Int: String] = [:]
    ```
		// namesOfIntegers is an empty [Int: String] dictionary

		namesOfIntegers = [:]

		var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
		let airportCodes = [String](airports.keys)
 			o/p 	airportCodes is ["LHR", "YYZ"]

		let airportNames = [String](airports.values)
 			airportNames is ["London Heathrow", "Toronto Pearson"]
```
		for airportCode in airports.keys {
    			print("Airport code: \(airportCode)") // iterating over key values
			}

		var capitalCity = ["Nepal": "Kathmandu", "Italy": "Rome", "England": "London"]
			print(capitalCity)
```
		# ex-2
    ```
			var cities = ["Nepal":"Kathmandu", "China":"Beijing", "Japan":"Tokyo"]
			print("Dictionary: ", cities)
			var countryName  = Array(cities.keys)//cities.keys return all keys of cities

			print("Keys: ", countryName)
	To remove--
			var studentID = [111: "Eric", 112: "Kyle", 113: "Butters"]
			print("Initial Dictionary: ", studentID)
			var removedValue  = studentID.removeValue(forKey: 112)
			print("Dictionary After removeValue(): ", studentID)

			Initial Dictionary:  [113: "Butters", 111: "Eric", 112: "Kyle"] o/p
			Dictionary After removeValue():  [111: "Eric", 113: "Butters"] o/p
      ```
---------------------------------------------------------------------------------------------

##Topic 1.5 Functions 

Functions :- A task to perform repetive task

syntax:-
```
	func funcname(Parameters) -> returntype {
   		Statement1
   		Statement2
   		---
   		Statement N
   		return parameters
		 }
 ```
ex-1
```
	func myname(_ first:String , _ last:String) -> String{
    	return first+last
	}
	print(myname("purushotham","singh"))
  ```
ex-2
```
	func display(no1: Int) -> Int {
   	let a = no1
   	return a
	}
	print(display(no1: 100))
	print(display(no1: 200))
  ```
ex-3
```
	func mynum(_ n1:Int?) -> Int?{
    	if let my = n1{
        	return my // returns 0 
    	}
    		else{
        	return 0
    		}
	}
		print(mynum(nil)!)
Functions with parameters	
				func sayHelloWorld() -> String {
    						return "hello, world"
					}
				print(sayHelloWorld())
```
ex-4
```
	func minmax (_ n1:[Int]) -> (min : Int , max :Int){
   	 var myar : [Int]
    	 var mymin : Int
   	 var mymax : Int      //let num=minmax([5,6,3,1])
					print(num.min) //prints 1
    	 myar = n1.sorted()
    	 mymin = myar[0]
    	 mymax = myar[(myar.count)-1]
    	 return( mymin,mymax)
	 }
	print(minmax([5,6,3,1]))
```
Optional Tuple Return Types:- A return value can contain optionvalues
ex-5
```
    func minmax (_ n1:[Int]) -> (min : Int , max :Int)?{
    if(n1.isEmpty)
    {
    return nil
        
    }
    var myar : [Int]
    var mymin : Int
    var mymax : Int
     myar = n1.sorted()
    mymin = myar[0]
    mymax = myar[(myar.count)-1]
    return( mymin,mymax)
    }
     if let num=minmax([]){ // optional binding (i.e if let used)
    print(num.min)
    }
    else{
    print("nil")
    }
    ```
			****(Import topic)****
Variadic Parameters:- A variadic parameter accepts zero or more values of a specified type.
		      variadic parameters by inserting three period characters (...) after the
		      parameter’s type name.	
		ex-1
		```	
		func varidiacsum (_ numbers : Int...) -> Int{
    			var su = 0
   			 for i in numbers{
    				su+=i
        
   			}
    			return su
			}
			print(varidiacsum(1,2,3,4,5)
		ex-2
 		func temp(a1: inout Int, b1: inout Int) {
   			let t = a1
   			a1 = b1     // inout -- gives both access and modification..
   			b1 = t
			}

			var no = 2
			var co = 10
			temp(a1: &no, b1: &co) //&' before a variable name refers that we are 
							passing the argument to the in-out parameter.
			print("Swapped values are \(no), \(co)")
      ```
---------------------------------------------------------------------------------------------------------------------
##Topic 1.6 cloures

cloures:-  A closure is a special type of function without the function name basically (lambda function)
```
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
 ```
		let sumoftwo = { (n1 : Int , n2 : Int) -> Int in  return n1+n2}
		let res = sumoftwo(34,10)
		print(res)  // o/p-44
    ```
ex-2
		#closure definition
    ```
		var findSquare = { (num: Int) -> (Int) in
  		var square = num * num
  		return square
		}
    ```
		// closure call
		var result = findSquare(3)
		print("Square:",result)
ex-3
```
		let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
		var reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
    ```
ex-4
```
		var shorthand: (String, String) -> String
		shorthand = { $1 }
		print(shorthand("100", "200"))
```

#Closures as Trailers
```
			reversed = sorted(names) { $0 > $1}
			reversedNames = names.sorted(by: >) //operator method
```
Trailing Closure :- In trailing closure, if a function accepts a closure as its last parameter,

ex-1
```
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
		// strings is inferred to be of type [String]
		// its value is ["OneSix", "FiveEight", "FiveOneZero"]
    ```
---------------------------------------------------------------------------------------------------------
##Topic 1.7 Enumeration

Enumeration :- An enumeration is a user-defined data type which consists of set of related values.
	       Keyword enum is used to defined enumerated data type.
```
ex-1 		enum WeatherType {
   			 case sun, cloud, rain, wind, snow
		}

		func getHaterStatus(weather: WeatherType) -> String? {
    			if weather == WeatherType.sun {
        			return nil
    			} else {
       				 return "Hate"
    			}
			}

			getHaterStatus(weather: WeatherType.cloud)
``
ex-2
```
		enum Climate {
  			 case India
			 case America
  			 case Africa
			 case Australia
				}

			var season = Climate.America
			season = .America
		switch season {
   				case .India:
      				print("Climate is Hot")
   				case .America:
      				print("Climate is Cold")
   				case .Africa:
      				print("Climate is Moderate")
   				case .Australia:
      				print("Climate is Rainy")
   
				}
```        
ex-3
```
		enum Month: Int {
  		 case January = 1, February, March, April, May, June, July, August,
                        September, October, November, December
              }

               let yearMonth = Month.May.rawValue 
               print("Value of the Month is: \(yearMonth).")


```

---------------------------------------------------------------------------------------------
## Topic 1.8 Structures and classes

structures:- Are one of the named types in Swift that allow you to encapsulate related properties and behaviors. 
	     Classes are reference types and structs are value types

syntax:-


```ex-1
		struct studentMarks {
   		var mark1 = 100
   		var mark2 = 200
   		var mark3 = 300
		}

		let marks = studentMarks()
		print((marks.mark1))
		print(marks.mark2)
		print(marks.mark3)
 
		struct mynumbs{
	    	var n1:Int = 10
		}
		let res = mynumbs()
```
ex-2
```
		struct mynum{
    			var n1 : Int
   		 init(n1:Int){
        		self.n1=n1 // copy of the structure members are created with 'self' Keyword
    		}
		}
		let res=mynum(n1:45)
		print(res.n1)
```
ex-3
```
		struct MarksStruct {
   		var mark: Int
                                           //important
		   init(mark: Int) {
      		self.mark = mark
   		}
		}
	
		var aStruct = MarksStruct(mark: 98)
		var bStruct = aStruct     // aStruct and bStruct are two structs with the same value!
		bStruct.mark = 97

		print(aStruct.mark)      // 98
		print(bStruct.mark)      // 97
 ```
-------------------------------------------------------------------------------------------------

##Topic 1.9 properties

1> Stored properties
2> Computed properties or constant property
3> Lazy property


Stored properties:-A stored property is a constant or variable that’s stored as part of an instance 
		   of a particular class or structure. 
			
ex-1
```
	struct Number {
   	var digits: Int //storted property
  	 let numbers = 3.1415 // computed property cannot be changed
	}

	var n = Number(digits: 12345)
	n.digits = 67

	print("\(n.digits)")	
	print("\(n.numbers)")
```
Lazy property:-A lazy stored property is a property whose initial value isn’t calculated until the first time it’s used. 


ex-1
```
	class sample {
	   lazy var no = number()    // `var` declaration is required.
	}

	class number {
   	var name = "Swift 4"
		}

	var firstsample = sample()
	print(firstsample.no.name)
```
##Subcripts:-
		Subscripts are used to access information from a collection, sequence and a list in Classes, Structures 			and Enumerations without using a method.

syntax:-
```
		subscript(index: Int) -> Int {
   		 get {
        	// Return an appropriate subscript value here.
    		}
    		set(newValue) {
        	// Perform a suitable setting action here.
    		}
		}
    ```
ex-1
```
		var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
		numberOfLegs["bird"] = 2
```

ex-2
```
		class daysofaweek {
		private var days = ["Sunday", "Monday", "Tuesday", "Wednesday",
      						"Thursday", "Friday", "saturday"]
   		subscript(index: Int) -> String {
      		get {
         		return days[index]
      		}
      		set(newValue) {
        		 self.days[index] = newValue
      		}
   		}
		}
		var p = daysofaweek()

		print(p[0])
		print(p[1])
    ```
------------------------------------------------------------------------------------------
##Topic -1.10 Protocals

Protocals:-
		Protocols provide a blueprint for Methods, properties and other requirements functionality. It is just 		described as a methods or properties skeleton instead of implementation. Methods and properties 		implementation can further be done by defining classes, functions and enumerations.
syntax:-
```
		protocol someProtocol{
  			// Definition goes here
		}
```

ex-1
	```
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
--------------------------------------------------------------------------------------------------------------------
##Generics:-
			Generics mean parameterized types. The idea is to allow type (Integer, String, … etc, and user-					defined types) to be a parameter to methods, classes, and interfaces. Using Generics, it is 		
			possible to create classes that work with different data types.

			Generic code enables you to write flexible, reusable functions and types that can work with any 			        type.
syntax:-
```
			func addition<T: Numeric>(a: T, b: T) -> T
			{
    				return a + b   // T-> placeholder type
			}


```




















		
