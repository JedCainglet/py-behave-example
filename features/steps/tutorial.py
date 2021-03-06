from behave import *

# Feature: showing off behave

# Scenario: run a simple test
@given('we have behave installed')
def step_impl(context):
    pass


@when('we implement a test')
def step_impl(context):
    assert True is not False


@then('behave will test it for us!')
def step_impl(context):
    assert context.failed is False


# Scenario: explaining behave
@given('we put the system in a known state')
def step_impl(context):
    pass


@when('we take key actions the user (or external system) performs')
def step_impl(context):
    assert True is not False


@then('we observe outcomes')
def step_impl(context):
    assert context.failed is False


# Scenario Outline: Blenders
@given('I put Red Tree Frog in a blender')
def step_impl(context):
    pass


@when('I switch the blender on')
def step_impl(context):
    assert True is not False


@then('it should transform into mush')
def step_impl(context):
    assert context.failed is False


@given('I put iPhone in a blender')
def step_impl(context):
    pass


# NOTE: already defined
# @when('I switch the blender on')
# def step_impl(context):
#     assert True is not False


@then('it should transform into toxic waste')
def step_impl(context):
    assert context.failed is False


@given('I put Galaxy Nexus in a blender')
def step_impl(context):
    pass


# NOTE: already defined
# @when('I switch the blender on')
# def step_impl(context):
#     assert True is not False


# NOTE: already defined
# @then('it should transform into toxic waste')
# def step_impl(context):
#     assert context.failed is False


# Scenario: some scenario
@given('a sample text loaded into the frobulator')
def step_impl(context):
    print(context.text)
    pass


@when('we activate the frobulator')
def step_impl(context):
    assert True is not False


@then('we will find it similar to English')
def step_impl(context):
    assert context.failed is False


# Scenario: another some scenario
@given('a set of specific users')
def step_impl(context):
    for row in context.table:
        print(row['name'], "--", row['department'])


@when('we count the number of people in each department')
def step_impl(context):
    assert True is not False


@then('we will find two people in "Silly Walks"')
def step_impl(context):
    assert context.failed is False


@then('we will find one person in "Beer Cans"')
def step_impl(context):
    assert context.failed is False


# Scenario series: look up book
@given('I search for a valid book')
def step_impl(context):
    context.response = "success"
    pass


@given('I search for an invalid book')
def step_impl(context):
    context.response = "failure"
    pass


@then('the result page will include "{text}"')
def step_impl(context, text):
    if text not in context.response:
        raise Exception(f"expected '{context.response}', found '{text}' instead")
