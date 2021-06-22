tags: #css 

### How to center a element using position

To center using position the parent element as to be relative
and the centred element has to be absolute or fixed

```css
.parent {
  position: relative;
}

.centered-element {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%)
}
```
