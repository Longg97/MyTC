Feature: #MD-01 | Snapshot Navigation
  Snapshot Navigation

  Scenario Outline: Home-Banner-Slide2-<viewport>-design-0
    Given I open page "/" on "<viewport>"
    Given Disabled all youtube video
    When I click slide 2 snapshot
    And I want waiting 3000 ms
    Then Compare module ".mod-banner-home" with id "<Id>" and position 0

    @Home-Banner-Slide2-1920x1080-design-0
    Examples:
      | Id                                    | viewport  |
      | Home-Banner-Slide2-1920x1080-design-0 | 1920x1080 |

    @Home-Banner-Slide2-1440x900-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide2-1440x900-design-0 | 1440x900 |

    @Home-Banner-Slide2-1280x720-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide2-1280x720-design-0 | 1280x720 |

    @Home-Banner-Slide2-1024x768-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide2-1024x768-design-0 | 1024x768 |

    @Home-Banner-Slide2-768x1024-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide2-768x1024-design-0 | 768x1024 |

    @Home-Banner-Slide2-414x736-design-0
    Examples:
      | Id                                  | viewport |
      | Home-Banner-Slide2-414x736-design-0 | 414x736  |

  Scenario Outline: Home-Banner-Slide3-<viewport>-design-0
    Given I open page "/" on "<viewport>"
    Given Disabled all youtube video
    When I click slide 3 snapshot
    And I want waiting 3000 ms
    Then Compare module ".mod-banner-home" with id "<Id>" and position 0

    @Home-Banner-Slide3-1920x1080-design-0
    Examples:
      | Id                                    | viewport  |
      | Home-Banner-Slide3-1920x1080-design-0 | 1920x1080 |

    @Home-Banner-Slide3-1440x900-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide3-1440x900-design-0 | 1440x900 |

    @Home-Banner-Slide3-1280x720-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide3-1280x720-design-0 | 1280x720 |

    @Home-Banner-Slide3-1024x768-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide3-1024x768-design-0 | 1024x768 |

    @Home-Banner-Slide3-768x1024-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide3-768x1024-design-0 | 768x1024 |

    @Home-Banner-Slide3-414x736-design-0
    Examples:
      | Id                                  | viewport |
      | Home-Banner-Slide3-414x736-design-0 | 414x736  |

  Scenario Outline: Home-Banner-Slide4-<viewport>-design-0
    Given I open page "/" on "<viewport>"
    Given Disabled all youtube video
    When I click slide 4 snapshot
    And I want waiting 3000 ms
    Then Compare module ".mod-banner-home" with id "<Id>" and position 0

    @Home-Banner-Slide4-1920x1080-design-0
    Examples:
      | Id                                    | viewport  |
      | Home-Banner-Slide4-1920x1080-design-0 | 1920x1080 |

    @Home-Banner-Slide4-1440x900-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide4-1440x900-design-0 | 1440x900 |

    @Home-Banner-Slide4-1280x720-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide4-1280x720-design-0 | 1280x720 |

    @Home-Banner-Slide4-1024x768-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide4-1024x768-design-0 | 1024x768 |

    @Home-Banner-Slide4-768x1024-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide4-768x1024-design-0 | 768x1024 |

    @Home-Banner-Slide4-414x736-design-0
    Examples:
      | Id                                  | viewport |
      | Home-Banner-Slide4-414x736-design-0 | 414x736  |

  Scenario Outline: Home-Banner-Slide5-<viewport>-design-0
    Given I open page "/" on "<viewport>"
    Given Disabled all youtube video
    When I click slide 5 snapshot
    And I want waiting 3000 ms
    Then Compare module ".mod-banner-home" with id "<Id>" and position 0

    @Home-Banner-Slide5-1920x1080-design-0
    Examples:
      | Id                                    | viewport  |
      | Home-Banner-Slide5-1920x1080-design-0 | 1920x1080 |

    @Home-Banner-Slide5-1440x900-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide5-1440x900-design-0 | 1440x900 |

    @Home-Banner-Slide5-1280x720-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide5-1280x720-design-0 | 1280x720 |

    @Home-Banner-Slide5-1024x768-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide5-1024x768-design-0 | 1024x768 |

    @Home-Banner-Slide5-768x1024-design-0
    Examples:
      | Id                                   | viewport |
      | Home-Banner-Slide5-768x1024-design-0 | 768x1024 |

    @Home-Banner-Slide5-414x736-design-0
    Examples:
      | Id                                  | viewport |
      | Home-Banner-Slide5-414x736-design-0 | 414x736  |