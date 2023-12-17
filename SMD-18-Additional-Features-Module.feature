Feature: MD-18 Additional Features Module
  I want test dummy content for Title

  Scenario Outline: Additional-Features-Module--<viewport>-design-0
    Given I open page "/sxs/recutility/pioneer-1000?year=2022" on "<viewport>"
    When Replace content "__motoCycle.subheader.title18" with element selector is ".wrapper .module .animation h2"
    And Hidden element with selector is ".module.header"
    Then Compare module ".wrapper .mod-trim-selection .animation:has(h2)" with id "<Id>" and position 0

    @Additional-Features-1920x1080-design-0
    Examples:
      | Id                                     | viewport  |
      | Additional-Features-1920x1080-design-0 | 1920x1080 |

    @Additional-Features-1440x900-design-0
    Examples:
      | Id                                    | viewport |
      | Additional-Features-1440x900-design-0 | 1440x900 |

    @Additional-Features-1280x720-design-0
    Examples:
      | Id                                    | viewport |
      | Additional-Features-1280x720-design-0 | 1280x720 |

    @Additional-Features-1024x768-design-0
    Examples:
      | Id                                    | viewport |
      | Additional-Features-1024x768-design-0 | 1024x768 |

    @Additional-Features-768x1024-design-0
    Examples:
      | Id                                    | viewport |
      | Additional-Features-768x1024-design-0 | 768x1024 |

    @Additional-Features-414x736-design-0
    Examples:
      | Id                                   | viewport |
      | Additional-Features-414x736-design-0 | 414x736  |