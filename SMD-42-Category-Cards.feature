Feature: MD-41 Category Model Cards module​
    I want test dummy content for Title

    @Category-Cards--414x736-design-0
<<<<<<< HEAD
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
=======
    Scenario Outline: Category-Cards--414x736-design-0
        Given I open page "/motorcycle" on "414x736"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__home.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__home.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        Examples:
            | Id                               |
            | Category-Cards--414x736-design-0 |

    @Category-Cards--768x1024-design-0
    Scenario Outline: Category-Cards--768x1024-design-0
        Given I open page "/motorcycle" on "768x1024"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__home.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__home.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        Examples:
            | Id                                |
            | Category-Cards--768x1024-design-0 |

    @Category-Cards--1024x768-design-0
    Scenario Outline: Category-Cards--1024x768-design-0
        Given I open page "/motorcycle" on "1024x768"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__home.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__home.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        And Hidden element with selector is ".popup-search"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        Examples:
            | Id                                |
            | Category-Cards--1024x768-design-0 |

    @Category-Cards--1280x720-design-0
    Scenario Outline: Category-Cards--1280x720-design-0
        Given I open page "/motorcycle" on "1280x720"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__home.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__home.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        Examples:
            | Id                                |
            | Category-Cards--1280x720-design-0 |

    @Category-Cards--1440x900-design-0
    Scenario Outline: Category-Cards--1440x900-design-0
        Given I open page "/motorcycle" on "1440x900"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__home.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__home.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        Examples:
            | Id                                |
            | Category-Cards--1440x900-design-0 |

    @Category-Cards--1920x1080-design-0
    Scenario Outline: Category-Cards--1920x1080-design-0
        Given I open page "/motorcycle" on "1920x1080"
        When I scroll to bottom and all elements are loaded in 1000 ms
        When Replace content "__home.modCategory.headline" with element selector is ".mod-model-cards .expand-content h4"
        When Replace content "__home.modCategory.paragrap" with element selector is ".mod-model-cards .expand-content p"
        Then Compare module ".mod-model-cards .wrap-model:first-child .expand-content" with id "<Id>" and position 0

        Examples:
            | Id                                 |
            | Category-Cards--1920x1080-design-0 |
>>>>>>> 08ce854f4f8148e3a5aec0b457cb003397e8b5e2
