Feature: #MD-16 | Expanding Gallery module
    Verify function on Expanding Gallery Module

    Scenario: MD-16 | Expanding Gallery module
        Given Navigate to page with URL "/sxs/recutility/pioneer-1000?year=2022" and scroll to Expanding Gallery module
        Given I want to hover icon "next"
        Then Arrow "right" of icon "next" change to Red color
        Given I want to click icon "next"
        Then Image background change
        Given I want to hover icon "prev"
        Then Arrow "left" of icon "prev" change to Red color
        Given I want to click icon "prev"
        Then Image background change
        Given I click dots slide
