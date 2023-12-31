Feature: MD-38 Category Intro Module
    I want test dummy content for Title

    Scenario Outline: Category-Intro-Module--<viewport>-design-0
        Given I open page "/motorcycle/dual-sport" on "<viewport>"
        Given Disabled all youtube video
        And Hidden element with selector is "header"
        When Replace content "__MD38CategoryIntroModule.headline" with element selector is ".mod-category-intro h1"
        When Replace content "__MD38CategoryIntroModule.description" with element selector is ".mod-category-intro p"
        Then Compare module ".mod-category-intro" with id "<Id>" and position 0

        @Category-Intro-1920x1080-design-0
        Examples:
            | Id                                | viewport  |
            | Category-Intro-1920x1080-design-0 | 1920x1080 |

        @Category-Intro-1440x900-design-0
        Examples:
            | Id                               | viewport |
            | Category-Intro-1440x900-design-0 | 1440x900 |

        @Category-Intro-1280x720-design-0
        Examples:
            | Id                               | viewport |
            | Category-Intro-1280x720-design-0 | 1280x720 |

        @Category-Intro-1024x768-design-0
        Examples:
            | Id                               | viewport |
            | Category-Intro-1024x768-design-0 | 1024x768 |

        @Category-Intro-768x1024-design-0
        Examples:
            | Id                               | viewport |
            | Category-Intro-768x1024-design-0 | 768x1024 |

        @Category-Intro-414x736-design-0
        Examples:
            | Id                              | viewport |
            | Category-Intro-414x736-design-0 | 414x736  |