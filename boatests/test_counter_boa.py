from pytest import fixture
import boa

@fixture
def counter():
    return boa.load("src/Counter.vy", 1)

def test_starting_value(counter):
    assert counter.count() == 1

def test_increment(counter):
    counter.increment()
    assert counter.count() == 2

def test_decrement(counter):
    counter.decrement()
    assert counter.count() == 0

def test_cannot_underflow(counter):
    counter.decrement()
    assert counter.count() == 0
    with boa.reverts():
        counter.decrement()
