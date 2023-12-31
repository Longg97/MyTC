Feature: MD-13 Intro Section module
    I want test dummy content for Title

    Scenario Outline: Intro-Section-module--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin" on "<viewport>"
        And Hidden element with selector is "header"
        And Hidden element with selector is ".mod-sub-navigation"
        When Replace content "__MD13IntroSection.headline" with element selector is ".mod-intro-section h2"
        When Replace content "__MD13IntroSection.paragrap" with element selector is ".mod-intro-section p:eq(1)"
        When Replace content "__MD13IntroSection.href" with element selector is ".mod-intro-section span:eq(0)"
        Then Compare module ".mod-intro-section" with id "<Id>" and position 0

        @Intro-Section-module-1920x1080-design-0
        Examples:
            | Id                                      | viewport  |
            | Intro-Section-module-1920x1080-design-0 | 1920x1080 |

        @Intro-Section-module-1440x900-design-0
        Examples:
            | Id                                     | viewport |
            | Intro-Section-module-1440x900-design-0 | 1440x900 |

        @Intro-Section-module-1280x720-design-0
        Examples:
            | Id                                     | viewport |
            | Intro-Section-module-1280x720-design-0 | 1280x720 |

        @Intro-Section-module-1024x768-design-0
        Examples:
            | Id                                     | viewport |
            | Intro-Section-module-1024x768-design-0 | 1024x768 |

        @Intro-Section-module-768x1024-design-0
        Examples:
            | Id                                     | viewport |
            | Intro-Section-module-768x1024-design-0 | 768x1024 |

        @Intro-Section-module-414x736-design-0
        Examples:
            | Id                                    | viewport |
            | Intro-Section-module-414x736-design-0 | 414x736  |