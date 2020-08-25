
**link** [../index.md](https://github.com/malachi557/dotfiles3/blob/master/notes/index.md)
# JavaScript Notes



### Sections
* [Operators](#operators)  
* [Methods](#methods)  
* [Promises](#promises)

---

### Notes

### Operators

##### Ternary Operator

* **Description**  
A ternary statement is a one line if else statement

* **Syntax**  
```javascript
Condition ? IfTrue : IfFalse
```

* **Example**  
```javascript
const f = (num1, num2) => (num1 > num2) ? `${num1} > ${num2}` : `${num2} > ${num1}`
f(1, 2) // returns '1 > 2'
```

---

### Basic Methods

##### Map

* **Description**  
map is a higher order that makes a new array and applies the function to each element of the array.

* **Syntax**  
```javascript
array = array.map(function)
```

* **Example**
```javascript
let arr = [1, 4, 7, 8]
arr = arr.map(x => x * 2)
console.log(arr) //[2, 8, 14, 16]
```

##### Filter

 * **Description**  
filter is a higher order function that applies the given function to each element in the array and returns a filtered array.

 * **Syntax**  
```javascript
array = array.filter(function)
```

* **Example**  
```  javascript
const arr1 = [1, 2, 3, 4]
arr2 = arr1.filter(x => x > 2)
console.log(arr2) // [3, 4]
```

##### Reduce

* **Description**  
Reduce is a higher order function that has two parameters accumulator and currentValue.  
Accumulator starts as the 0th index of the array and currentValue starts at the 1st and then iterates over the rest of the array.  
Reduce returns a new variable that is a single value.  

* **Syntax**  
```javascript
array.reduce((accumulator, currentValue) => )
```

* **Example 1**  
```javascript
let arr = [1, 2, 3, 4]
arr = arr.reduce((acc, cur) => acc + cur)
console.log(arr) // 10
```

* **Example 2**  
```javascript
let arr = [1, 2, 3, 4]
arr = arr.reduce((acc, cur) => acc * cur)
console.log(arr) // 24
```

##### Sort

* **Description**
Sort is a method that sorts an array.

* **Syntax**  
```javascript
Array.sort((a, b) => code)
```

* **Example**  
```javascript
const arr = [1, 24, 42, 5]
arr.sort((a, b) => a - b)
console.log(arr) // [1, 5, 24, 42]
```

---

### Function Things

##### Callback Functions

* **Description**  
a callback function is a function that takes a function as a parameter.

* **Syntax**  
```javascript
const = functionName(callback) => callback()
functionName(callback => code)
```

* **Example**
```javascript
const fun1 = (callback) => callback()
fun1(() => 'hello') // returns 'hello'
```

---

### DOM Things

##### Objects

* **Properties**
  * document
  * .body
  * 

* **Methods**
  * .getElementClass()
  * .getElementId()
  * .getElementByTagName()
  * .querySelector()
  * .querySelectorAll()
  * .remove()
  * .innerHTML()
  * .addEventListener()
  * .createElement()
  *

---

##### Events

* **Mouse events**
  * click = when you click the element
  * dblclick = when you double click the element
  * mousedown = when you hold down the click on the element
  * mouseup = when you release mousedown
  * mouseenter = when the mouse enters the element
  * mouseleave = when the mouse leaves the element
  * mouseover
  * mouseout
  * mousemove = when you move the mouse in the element
  *

* **Keyboard events**
  * keydown
  * keyup
