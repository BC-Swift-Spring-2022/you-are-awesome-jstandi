import PlaygroundSupport

let awesomeMessage = "You are Awesome!"
let greatMessage = "You are Great!"
let bombMessage = "You are the bomb!"

var messages = ["You are Awesome!", "You are great!", "You are Fantastic!", "Fabulous? That's you!"]
print(messages)
print(messages[0])
print(messages[messages.count-1])
let removed_message = messages.remove(at: messages.count-1)
print(removed_message)
print(messages)
messages.append("You Are a Legend!")
print(messages)
messages += ["You Swifty!"]
print(messages)
let newMessages = ["You make me smile", "I think you're magic"]
messages += newMessages
print(messages)
