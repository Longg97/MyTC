Feature: #MD-18B | New Features Module
    Verify function on New Features Module

    Scenario: MD-18B | New Features Module
        Given Navigate to page with URL "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" and scroll to New Features Module
        Given I want to hover arrow button
        Then Arrow moving
        Given Click Arrow Button: will send the reader to the specified URL address with status 200
        Given Hover image: see image zoom in
        Given I want to hover icon "next"
        Then Arrow "right" of icon "next" change to Red color
        Given I want to click icon "next"
        Then Item 1 hide, show content items 4
        Given I want to hover icon "prev"
        Then Arrow "left" of icon "prev" change to Red color
        Given I want to click icon "prev"
        Then Item previous show, icon last hide