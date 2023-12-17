Feature: MD-38 Category Intro Module
    I want test dummy content for Title

    Scenario Outline: Category-Intro-Module--<viewport>-design-0
        Given I open page "/motorcycle/dual-sport" on "<viewport>"
        When Replace content "__motoCycle.subheader.title38" with element selector is ".wrapper .module .animation h2"
        And Hidden element with selector is ".module.header"
        Then Compare module ".wrapper .mod-category-models .animation:has(h2)" with id "<Id>" and position 0

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