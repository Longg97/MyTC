Feature: MD-18B New Features Module
    I want test dummy content for Title

    Scenario Outline: New-Features-Module--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title18B" with element selector is ".module .container h2"
        And Hidden element with selector is ".module.header"
        Then Compare module ".mod-additional-features-black .container:has(h2)" with id "<Id>" and position 0

        @New-Features-1920x1080-design-0
        Examples:
            | Id                              | viewport  |
            | New-Features-1920x1080-design-0 | 1920x1080 |

        @New-Features-1440x900-design-0
        Examples:
            | Id                             | viewport |
            | New-Features-1440x900-design-0 | 1440x900 |

        @New-Features-1280x720-design-0
        Examples:
            | Id                             | viewport |
            | New-Features-1280x720-design-0 | 1280x720 |

        @New-Features-1024x768-design-0
        Examples:
            | Id                             | viewport |
            | New-Features-1024x768-design-0 | 1024x768 |

        @New-Features-768x1024-design-0
        Examples:
            | Id                             | viewport |
            | New-Features-768x1024-design-0 | 768x1024 |

        @New-Features-414x736-design-0
        Examples:
            | Id                            | viewport |
            | New-Features-414x736-design-0 | 414x736  |