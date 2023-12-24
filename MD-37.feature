Feature: #MD-39 | Features Module
    Verify function on Features Module

    Scenario: MD-39 | Features Module
        Given Navigate to page with URL "/motorcycle/touring/gold-wing/2022/features" and scroll to Features Module
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".mod-sub-navigation"

        Given Scroll Down page: see each Feature Item and its Feature Category highlighted