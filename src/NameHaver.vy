# pragma version ^0.4.0

name: public(String[30])

@external
def set_name(new_name: String[30]) -> bool:
    self.name = new_name
    return True
