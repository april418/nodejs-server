# test example

sayHello = -> 'Hello!'

describe 'I say "Hello!"', ->
  it 'You say "Hello!"', ->
    expect(sayHello()).to.equal 'Hello!'

