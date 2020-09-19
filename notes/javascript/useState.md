Date: 19/Sep/2020  
Tags: #javascript #react

### Syntax

```
const [varibleOne, varibleTwo] = useState(valueOfVaribleOne)
```

### what is useState

Usestate is used to change the state of a jsx element. Usestate makes a array with two variables. Variables one is a normal string or number or object and the second varible is a function used to change the value of the varible one. You can change the value of varible one with a function **Example** `const doubler = () => varibleTwo(prevVal => prevVal * 2)` this will change varible one to double every time you use the function doubler.
