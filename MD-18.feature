Feature: #MD-18 | Additional Features
    Verify function on Additional Features

    Scenario: MD-18 | Additional Features
        Given Navigate to page with URL "/sxs/recutility/pioneer-1000?year=2022" and scroll to Additional Features
        Given I want to hover arrow button
        Then Arrow moving
        Given Click Arrow Button: will send the reader to the specified URL address with status 200
        Given Hover image: see image zoom in