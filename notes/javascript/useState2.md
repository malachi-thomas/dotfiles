Date: 19/Sep/2020  
Tags: #javascript #react

# Making a Counter With useState()

First we need to build the boilerplate

```javascript
import React, { useState } from 'react'

const App = () => {
  return (
    <div>
      <button onClick={}>-</button>
      <button onClick={}>+</button>
    </div>
  )
}
```

Next we need to make a `counter` starting at zero and make a `setCounter`

```javascript
import React, { useState } from 'react'

const App = () => {
  const [counter, setCounter] = useState(0)
  return (
    <div>
      <button onClick={}>-</button>
      <button onClick={}>+</button>
    </div>
  )
}
```

Now we need to change the value of `counter` with a two functions to add and subtract one from the count

```javascript
import React, { useState } from 'react'

const App = () => {
  const [counter, setCounter] = useState(0)
  const add = () => setCounter((prevCount) => prevCount + 1)
  const subtract = () => setCounter((prevCount) => prevCount - 1)
  return (
    <div>
      <button onClick={subtract}>-</button>
      <button onClick={add}>+</button>
    </div>
  )
}
```
