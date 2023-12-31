Feature: MD-43 4 Column Next Steps Module​​
    I want test dummy content for Title

    Scenario Outline: 4-Column-Next-Steps--<viewport>-design-0
        Given I open page "/motorcycle/touring" on "<viewport>"
        When I scroll to bottom and all elements are loaded in 1000 ms
        And Hidden element with selector is "header"
        When Replace content "__MD43_4ColumnNextStepsModule.title" with element selector is ".mod-multi-next-steps h2"
        When Replace content "__MD43_4ColumnNextStepsModule.title1" with element selector is ".mod-multi-next-steps h3:eq(0)"
        When Replace content "__MD43_4ColumnNextStepsModule.title2" with element selector is ".mod-multi-next-steps h3:eq(1)"
        When Replace content "__MD43_4ColumnNextStepsModule.title3" with element selector is ".mod-multi-next-steps h3:eq(2)"
        Then Compare module ".mod-multi-next-steps" with id "<Id>" and position 0

        @4-Column-Next-Steps-1920x1080-design-0
        Examples:
            | Id                                     | viewport  |
            | 4-Column-Next-Steps-1920x1080-design-0 | 1920x1080 |

        @4-Column-Next-Steps-1440x900-design-0
        Examples:
            | Id                                    | viewport |
            | 4-Column-Next-Steps-1440x900-design-0 | 1440x900 |

        @4-Column-Next-Steps-1280x720-design-0
        Examples:
            | Id                                    | viewport |
            | 4-Column-Next-Steps-1280x720-design-0 | 1280x720 |

        @4-Column-Next-Steps-1024x768-design-0
        Examples:
            | Id                                    | viewport |
            | 4-Column-Next-Steps-1024x768-design-0 | 1024x768 |

        @4-Column-Next-Steps-768x1024-design-0
        Examples:
            | Id                                    | viewport |
            | 4-Column-Next-Steps-768x1024-design-0 | 768x1024 |

        @4-Column-Next-Steps-414x736-design-0
        Examples:
            | Id                                   | viewport |
            | 4-Column-Next-Steps-414x736-design-0 | 414x736  |