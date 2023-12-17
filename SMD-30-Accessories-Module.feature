Feature: MD-30 Accessories Module
    I want test dummy content for Title

    Scenario Outline: Accessories-Module-1--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_1" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(1) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(1)" with id "<Id>" and position 0

        @Accessories-1-1920x1080-design-0
        Examples:
            | Id                               | viewport  |
            | Accessories-1-1920x1080-design-0 | 1920x1080 |

        @Accessories-1-1440x900-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-1-1440x900-design-0 | 1440x900 |

        @Accessories-1-1280x720-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-1-1280x720-design-0 | 1280x720 |

        @Accessories-1-1024x768-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-1-1024x768-design-0 | 1024x768 |

        @Accessories-1-768x1024-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-1-768x1024-design-0 | 768x1024 |

        @Accessories-1-414x736-design-0
        Examples:
            | Id                             | viewport |
            | Accessories-1-414x736-design-0 | 414x736  |

    Scenario Outline: Accessories-Module-2--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_2" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(2) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        And Click ".init-opacity .swiper-pagination-bullet:nth-child(2)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(2)" with id "<Id>" and position 0

        @Accessories-2-1920x1080-design-0
        Examples:
            | Id                               | viewport  |
            | Accessories-2-1920x1080-design-0 | 1920x1080 |

        @Accessories-2-1440x900-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-2-1440x900-design-0 | 1440x900 |

        @Accessories-2-1280x720-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-2-1280x720-design-0 | 1280x720 |

        @Accessories-2-1024x768-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-2-1024x768-design-0 | 1024x768 |

        @Accessories-2-768x1024-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-2-768x1024-design-0 | 768x1024 |

        @Accessories-2-414x736-design-0
        Examples:
            | Id                             | viewport |
            | Accessories-2-414x736-design-0 | 414x736  |

    Scenario Outline: Accessories-Module-3--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_3" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(3) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        And Click ".init-opacity .swiper-pagination-bullet:nth-child(2)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(3)" with id "<Id>" and position 0

        @Accessories-3-1920x1080-design-0
        Examples:
            | Id                               | viewport  |
            | Accessories-3-1920x1080-design-0 | 1920x1080 |

        @Accessories-3-1440x900-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-3-1440x900-design-0 | 1440x900 |

        @Accessories-3-1280x720-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-3-1280x720-design-0 | 1280x720 |

        @Accessories-3-1024x768-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-3-1024x768-design-0 | 1024x768 |

        @Accessories-3-768x1024-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-3-768x1024-design-0 | 768x1024 |

    Scenario Outline: Accessories-Module-3--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_3" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(3) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        And Click ".init-opacity .swiper-pagination-bullet:nth-child(3)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(3)" with id "<Id>" and position 0

        @Accessories-3-414x736-design-0
        Examples:
            | Id                             | viewport |
            | Accessories-3-414x736-design-0 | 414x736  |

    Scenario Outline: Accessories-Module-4--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_4" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(4) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        And Click ".init-opacity .swiper-pagination-bullet:nth-child(2)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(4)" with id "<Id>" and position 0

        @Accessories-4-1920x1080-design-0
        Examples:
            | Id                               | viewport  |
            | Accessories-4-1920x1080-design-0 | 1920x1080 |

        @Accessories-4-1440x900-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-4-1440x900-design-0 | 1440x900 |

        @Accessories-4-1280x720-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-4-1280x720-design-0 | 1280x720 |

    Scenario Outline: Accessories-Module-4--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_4" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(4) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        And Click ".init-opacity .swiper-pagination-bullet:nth-child(3)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(4)" with id "<Id>" and position 0

        @Accessories-4-1024x768-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-4-1024x768-design-0 | 1024x768 |

        @Accessories-4-768x1024-design-0
        Examples:
            | Id                              | viewport |
            | Accessories-4-768x1024-design-0 | 768x1024 |

    Scenario Outline: Accessories-Module-4--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?model=CRF1100LDN" on "<viewport>"
        When Replace content "__motoCycle.subheader.title30_4" with element selector is ".wrapper .init-opacity .swiper-slide:nth-child(4) h3"
        And Hidden element with selector is ".module.header"
        And Hidden element with selector is ".hidden:has(.swiper-button)"
        And Click ".init-opacity .swiper-pagination-bullet:nth-child(4)"
        Then Compare module ".wrapper .init-opacity .swiper-slide:nth-child(4)" with id "<Id>" and position 0

        @Accessories-4-414x736-design-0
        Examples:
            | Id                             | viewport |
            | Accessories-4-414x736-design-0 | 414x736  |