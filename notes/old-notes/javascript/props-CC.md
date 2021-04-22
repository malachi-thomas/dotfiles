Date: 23/Sep/2020  
Tags: #javascript #react

### What Are Props In A Class Component

Props are arguments in a component declaration like this.

```javascript
class Example extends React.Component {
  render() {
    return (
      <div>
        <h3>Hello {this.props.hats}</h3>
      </div>
    )
  }
}

ReactDOM.render(
  <Example hats="these are my cool hats" />,
  document.getElementById('root')
)
```

You can use `{}` to send javascript code or types but if you want to send a string you use `""`.
