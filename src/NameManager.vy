# pragma version ^0.4.0
interface INameHaver:
    def name() -> String[30]: view
    def set_name(name: String[30]) -> bool: nonpayable

@external
def check_name(target: address) -> String[30]:
    name: String[30] = staticcall INameHaver(target).name()
    return name

@external
def set_name(target: address, name: String[30]):
    assert extcall INameHaver(target).set_name(name) # assert useful b.c. of bool return
    return


