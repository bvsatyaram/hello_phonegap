@incrementCounter = () ->
  counterTrigger = $('a#counter_trigger')[0]
  counterTrigger.dataset.counter = parseInt(counterTrigger.dataset.counter) + 1
  setCounter()
  false

@setCounter = () ->
  counterEle = $('#counter')
  counterTrigger = $('a#counter_trigger')[0]
  counterEle.html("##{counterTrigger.dataset.counter}")

$ ->
  setCounter()