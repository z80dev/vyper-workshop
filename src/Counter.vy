# pragma version ^0.4.0
count: public(uint256)

@deploy
def __init__(start_value: uint256):
    self.count = start_value

@external
def increment():
    self.count += 1

@external
def decrement():
    assert self.count > 0, "OOPS"
    self.count -= 1
