console.log("hello")

//const modifers = [
 //  "{#Shift($KEY)}",
  //
//"{#Shift(Controll($KEY))}",
  //"{#Shift(Controll(Alt($Key)))}"
//]

const modifires = {
  "*B": "{#Shift($KEY)}"
}
const keys = ["a", "b", "c"]

let output = {}

keys.map((key) => {
  modifers.map((mod) => {
    output["x"] 
    //console.log(mod.replace("$KEY", key))
    // output += (mod.replace("$KEY", key))
  })
})

output["hat"] = "cool"
console.log(output)

//console.log(output.)