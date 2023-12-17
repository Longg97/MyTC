Feature: MD-41 Category Model Cards module​
    I want test dummy content for Title

    @Category-Cards--414x736-design-0
    Scenario Outline: Category-Cards--<viewport>-design-0
        Given I open page "/motorcycle" on "<viewport>"
        When Replace content "__motoCycle.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__motoCycle.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        @Category-Cards-1920x1080-design-0
        Examples:
            | Id                                | viewport  |
            | Category-Cards-1920x1080-design-0 | 1920x1080 |

        @Category-Cards-1440x900-design-0
        Examples:
            | Id                               | viewport |
            | Category-Cards-1440x900-design-0 | 1440x900 |

        @Category-Cards-1280x720-design-0
        Examples:
            | Id                               | viewport |
            | Category-Cards-1280x720-design-0 | 1280x720 |

        @Category-Cards-1024x768-design-0
        Examples:
            | Id                               | viewport |
            | Category-Cards-1024x768-design-0 | 1024x768 |

        @Category-Cards-768x1024-design-0
        Examples:
            | Id                               | viewport |
            | Category-Cards-768x1024-design-0 | 768x1024 |

        @Category-Cards-414x736-design-0
        Examples:
            | Id                              | viewport |
            | Category-Cards-414x736-design-0 | 414x736  |