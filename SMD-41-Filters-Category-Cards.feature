Feature: MD-41 Segment Filters with Header & Category Model Cards module
  I want test dummy content for Title

<<<<<<< HEAD
  Scenario Outline: Filters-Category-Cards--<viewport>-design-0
    Given I open page "/motorcycle" on "<viewport>"
    When Replace content "__motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    And Remove padding-top of element ".wrap-subheader"
    And Hidden element with selector is ".mod-model-cards"
    And Hidden element with selector is ".module.header"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    @Filters-Category-Cards-1920x1080-design-0
    Examples:
      | Id                                        | viewport  |
      | Filters-Category-Cards-1920x1080-design-0 | 1920x1080 |

    @Filters-Category-Cards-1440x900-design-0
    Examples:
      | Id                                       | viewport |
      | Filters-Category-Cards-1440x900-design-0 | 1440x900 |

    @Filters-Category-Cards-1280x720-design-0
    Examples:
      | Id                                       | viewport |
      | Filters-Category-Cards-1280x720-design-0 | 1280x720 |

    @Filters-Category-Cards-1024x768-design-0
    Examples:
      | Id                                       | viewport |
      | Filters-Category-Cards-1024x768-design-0 | 1024x768 |

    @Filters-Category-Cards-768x1024-design-0
    Examples:
      | Id                                       | viewport |
      | Filters-Category-Cards-768x1024-design-0 | 768x1024 |

    @Filters-Category-Cards-414x736-design-0
    Examples:
      | Id                                      | viewport |
      | Filters-Category-Cards-414x736-design-0 | 414x736  |
=======
  @Filters-Category-Cards--414x736-design-0
  Scenario Outline: Filters-Category-Cards--414x736-design-0
    Given I open page "/motorcycle" on "414x736"
    When I scroll to bottom and all elements are loaded in 1000 ms
    When Replace content "__home.motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    And Add css "height-auto" and remove css "xl:overflow-hidden" of element ".subheader-fade"
    And Hidden element with selector is ".mod-model-cards"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    Examples:
      | Id                                       |
      | Filters-Category-Cards--414x736-design-0 |

  @Filters-Category-Cards--768x1024-design-0
  Scenario Outline: Filters-Category-Cards--768x1024-design-0
    Given I open page "/motorcycle" on "768x1024"
    When I scroll to bottom and all elements are loaded in 1000 ms
    When Replace content "__home.motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    And Add css "height-auto" and remove css "xl:overflow-hidden" of element ".subheader-fade"
    And Hidden element with selector is ".mod-model-cards"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    Examples:
      | Id                                        |
      | Filters-Category-Cards--768x1024-design-0 |

  @Filters-Category-Cards--1024x768-design-0
  Scenario Outline: Filters-Category-Cards--1024x768-design-0
    Given I open page "/motorcycle" on "1024x768"
    When I scroll to bottom and all elements are loaded in 1000 ms
    When Replace content "__home.motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    Examples:
      | Id                                        |
      | Filters-Category-Cards--1024x768-design-0 |

  @Filters-Category-Cards--1280x720-design-0
  Scenario Outline: Filters-Category-Cards--1280x720-design-0
    Given I open page "/motorcycle" on "1280x720"
    When I scroll to bottom and all elements are loaded in 1000 ms
    When Replace content "__home.motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    Examples:
      | Id                                        |
      | Filters-Category-Cards--1280x720-design-0 |

  @Filters-Category-Cards--1440x900-design-0
  Scenario Outline: Filters-Category-Cards--1440x900-design-0
    Given I open page "/motorcycle" on "1440x900"
    When I scroll to bottom and all elements are loaded in 1000 ms
    When Replace content "__home.motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    Examples:
      | Id                                        |
      | Filters-Category-Cards--1440x900-design-0 |

  @Filters-Category-Cards--1920x1080-design-0
  Scenario Outline: Filters-Category-Cards--1920x1080-design-0
    Given I open page "/motorcycle" on "1920x1080"
    When I scroll to bottom and all elements are loaded in 1000 ms
    When Replace content "__home.motoCycle.subheader.headline" with element selector is ".mod-subheader .container h1"
    Then Compare module ".mod-subheader .container" with id "<Id>" and position 0

    Examples:
      | Id                                         |
      | Filters-Category-Cards--1920x1080-design-0 |
>>>>>>> 08ce854f4f8148e3a5aec0b457cb003397e8b5e2
