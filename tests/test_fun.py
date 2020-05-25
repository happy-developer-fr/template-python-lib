import src.my_package.fun


def test_is_it_funny():
    src.my_package.fun.is_it_funny()
    assert src.my_package.fun.is_it_funny().__eq__("oh yeah")
