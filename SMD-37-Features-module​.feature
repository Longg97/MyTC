Feature: MD-37 Features module​​
    I want test dummy content for Title

    Scenario Outline: Features-module--<viewport>-design-0
        Given I open page "/motorcycle/touring/gold-wing/2022/features" on "<viewport>"
        Given Disabled all youtube video
        And Hidden element with selector is "header"
        And Hidden element with selector is ".mod-sub-navigation"
        And Remove items more than 1 with element selector is ".mod-features .js-feature-item"
        When Replace content "__MD37RelatedTrimsModels.titleh1" with element selector is ".mod-features .js-sticky-feature-inner h1"
        When Replace content "__MD37RelatedTrimsModels.titleli1" with element selector is ".mod-features .js-sticky-feature-inner li a:eq(0)"
        When Replace content "__MD37RelatedTrimsModels.titleli2" with element selector is ".mod-features .js-sticky-feature-inner li a:eq(1)"
        When Replace content "__MD37RelatedTrimsModels.titleli3" with element selector is ".mod-features .js-sticky-feature-inner li a:eq(2)"
        When Replace content "__MD37RelatedTrimsModels.titleli4" with element selector is ".mod-features .js-sticky-feature-inner li a:eq(3)"
        When Replace content "__MD37RelatedTrimsModels.titleli5" with element selector is ".mod-features .js-sticky-feature-inner li a:eq(4)"
        When Replace content "__MD37RelatedTrimsModels.title1" with element selector is ".mod-features .js-feature-item h3:eq(0)"
        When Replace content "__MD37RelatedTrimsModels.description1" with element selector is ".mod-features .js-feature-item p:eq(0)"
        When Replace content "__MD37RelatedTrimsModels.title2" with element selector is ".mod-features .js-feature-item h3:eq(1)"
        When Replace content "__MD37RelatedTrimsModels.description2" with element selector is ".mod-features .js-feature-item p:eq(1)"
        Then Compare module ".mod-features" with id "<Id>" and position 0

        @Features-module-1920x1080-design-0
        Examples:
            | Id                                 | viewport  |
            | Features-module-1920x1080-design-0 | 1920x1080 |

        @Features-module-1440x900-design-0
        Examples:
            | Id                                | viewport |
            | Features-module-1440x900-design-0 | 1440x900 |

        @Features-module-1280x720-design-0
        Examples:
            | Id                                | viewport |
            | Features-module-1280x720-design-0 | 1280x720 |

        @Features-module-1024x768-design-0
        Examples:
            | Id                                | viewport |
            | Features-module-1024x768-design-0 | 1024x768 |

        @Features-module-768x1024-design-0
        Examples:
            | Id                                | viewport |
            | Features-module-768x1024-design-0 | 768x1024 |

        @Features-module-414x736-design-0
        Examples:
            | Id                               | viewport |
            | Features-module-414x736-design-0 | 414x736  |