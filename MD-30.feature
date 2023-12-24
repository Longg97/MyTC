Feature: #MD-30 | Accessories Module
    Verify function on Accessories Module

    Scenario: MD-30 | Accessories Module
        Given Navigate to page with URL "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" and scroll to Accessories Module
        Given I want to Hover Accessory Image
        Given Click on each card: will send the reader to the Dreamshop address with status 200
        Given Click Red Button: will send the reader to the specified URL address with status 200