import socket, {RoomChannel} from './socket'

/**
Chat widget
*/
const chatWidget = document.querySelector('div[data-chat-widget]')
function addMessage(message){
  let messagesDom = chatWidget.innerHTML
  let newMessageDom = '<p>'+ message +'</p>'
  chatWidget.innerHTML = messagesDom + newMessageDom
}

/**
Submit form
*/
const inputField = document.querySelector('input[data-input-field]')

function submitForm(e){
  let body = inputField.value
  RoomChannel.push('shout', {message: body})
}

inputField.onblur = (e) => submitForm(e)
const inputForm = document.querySelector('form')
inputForm.onsubmit = (e) => {
  submitForm(e)
  inputField.value = ''
  return false
}

RoomChannel.on('shout', (payload) => {
  console.log('[shout]', payload)
  addMessage(payload.message)
})
