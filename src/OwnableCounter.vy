# pragma version ^0.4.0
from snekmate.auth import ownable

initializes: ownable

count: public(uint256)

@deploy
def __init__(start_value: uint256):
    ownable.__init__()
    self.count = start_value

@external
def increment():
    self.count += 1

@external
def decrement():
    ownable._check_owner()
    self.count -= 1

exports: ownable.owner
