# pragma version ^0.4.0

from snekmate.auth import ownable
from snekmate.tokens import erc20

initializes: ownable
initializes: erc20[ownable := ownable]

@deploy
def __init__():
    ownable.__init__()
    erc20.__init__("OwnableERC20", "OERC", 18, "OwnableERC20", "1.0")

exports: erc20.__interface__
