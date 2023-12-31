Feature: MD-05 Full-Width Image/Video Campaign Module​​
    I want test dummy content for Title

    Scenario Outline: Full-Width-Campaign--<viewport>-design-0
        Given I open page "/motorcycle/touring" on "<viewport>"
        And Hidden element with selector is "header"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__MD05FullWWidthCampaign.title" with element selector is ".mod-campaign h2"
        When Replace content "__MD05FullWWidthCampaign.description" with element selector is ".mod-campaign p:eq(0)"
        Then Compare module ".mod-campaign" with id "<Id>" and position 0

        @Full-Width-Campaign-1920x1080-design-0
        Examples:
            | Id                                     | viewport  |
            | Full-Width-Campaign-1920x1080-design-0 | 1920x1080 |

        @Full-Width-Campaign-1440x900-design-0
        Examples:
            | Id                                    | viewport |
            | Full-Width-Campaign-1440x900-design-0 | 1440x900 |

        @Full-Width-Campaign-1280x720-design-0
        Examples:
            | Id                                    | viewport |
            | Full-Width-Campaign-1280x720-design-0 | 1280x720 |

        @Full-Width-Campaign-1024x768-design-0
        Examples:
            | Id                                    | viewport |
            | Full-Width-Campaign-1024x768-design-0 | 1024x768 |

        @Full-Width-Campaign-768x1024-design-0
        Examples:
            | Id                                    | viewport |
            | Full-Width-Campaign-768x1024-design-0 | 768x1024 |

        @Full-Width-Campaign-414x736-design-0
        Examples:
            | Id                                   | viewport |
            | Full-Width-Campaign-414x736-design-0 | 414x736  |