from pytest import fixture
import ape

@fixture
def deployer(accounts):
    return accounts[0]

@fixture
def counter(project, deployer):
    return project.Counter.deploy(1, sender=deployer)

def test_starting_value(counter):
    assert counter.count() == 1

def test_increment(counter, deployer):
    counter.increment(sender=deployer)
    assert counter.count() == 2

def test_decrement(counter, deployer):
    counter.decrement(sender=deployer)
    assert counter.count() == 0

def test_cannot_underflow(counter, deployer):
    counter.decrement(sender=deployer)
    assert counter.count() == 0
    with ape.reverts():
        counter.decrement(sender=deployer)
