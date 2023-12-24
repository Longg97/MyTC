Feature: #MD-27 | Specifications module
    Verify function on Specifications module

    Scenario: MD-27 | Specifications module
        Given Navigate to page with URL "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" and scroll to Specifications module
        Given Hover Show "Less" Specs CTA
        Then Text color change to white, background red of "button-show-less"
        Given Click Show "Less" Specs CTA
        Then "Collapse" content
        Given Hover Show "More" Specs CTA
        Then Text color change to white, background red of "button-show-more"
        Given Click Show "More" Specs CTA
        Then "Expand" content
        Given Hover Text Link: Text Underlined
        Given Click Download Link: Will send the reader to the PDF specs file of the current trim with status 200 and open new tab