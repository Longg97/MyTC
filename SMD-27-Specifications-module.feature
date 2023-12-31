Feature: MD-27 Specifications module​​
    I want test dummy content for Title

    Scenario Outline: Specifications-module--<viewport>-design-0
        Given I open page "/motorcycle/adventure/africa-twin/trims?modelid=CRF1100LDN" on "<viewport>"
        And Hidden element with selector is "header"
        And Hidden element with selector is ".mod-sub-navigation"
        When I scroll to bottom and all elements are loaded in 1000 ms

        When Replace content "__MD27SpecificationsModule.center11" with element selector is ".mod-specifications .row .col .text-sm:eq(0)"
        When Replace content "__MD27SpecificationsModule.center12" with element selector is ".mod-specifications .row .col .text-sm:eq(1)"
        When Replace content "__MD27SpecificationsModule.center13" with element selector is ".mod-specifications .row .col .text-sm:eq(2)"
        When Replace content "__MD27SpecificationsModule.center14" with element selector is ".mod-specifications .row .col .text-sm:eq(3)"
        When Replace content "__MD27SpecificationsModule.center15" with element selector is ".mod-specifications .row .col .text-sm:eq(4)"
        When Replace content "__MD27SpecificationsModule.right11" with element selector is ".mod-specifications .row .col h3:eq(0)"
        When Replace content "__MD27SpecificationsModule.right12" with element selector is ".mod-specifications .row .col h3:eq(1)"
        When Replace content "__MD27SpecificationsModule.right13" with element selector is ".mod-specifications .row .col h3:eq(2)"
        When Replace content "__MD27SpecificationsModule.right14" with element selector is ".mod-specifications .row .col h3:eq(3)"
        When Replace content "__MD27SpecificationsModule.right15" with element selector is ".mod-specifications .row .col h3:eq(4)"

        When Replace content "__MD27SpecificationsModule.left1" with element selector is ".mod-specifications .content-show-more h4:eq(0)"
        When Replace content "__MD27SpecificationsModule.center11" with element selector is ".mod-specifications .content-show-more tbody:eq(0) th:eq(0)"
        When Replace content "__MD27SpecificationsModule.center12" with element selector is ".mod-specifications .content-show-more tbody:eq(0) th:eq(1)"
        When Replace content "__MD27SpecificationsModule.center13" with element selector is ".mod-specifications .content-show-more tbody:eq(0) th:eq(2)"
        When Replace content "__MD27SpecificationsModule.center14" with element selector is ".mod-specifications .content-show-more tbody:eq(0) th:eq(3)"
        When Replace content "__MD27SpecificationsModule.center15" with element selector is ".mod-specifications .content-show-more tbody:eq(0) th:eq(4)"
        When Replace content "__MD27SpecificationsModule.center16" with element selector is ".mod-specifications .content-show-more tbody:eq(0) th:eq(5)"
        When Replace content "__MD27SpecificationsModule.right11" with element selector is ".mod-specifications .content-show-more tbody:eq(0) td:eq(0)"
        When Replace content "__MD27SpecificationsModule.right12" with element selector is ".mod-specifications .content-show-more tbody:eq(0) td:eq(1)"
        When Replace content "__MD27SpecificationsModule.right13" with element selector is ".mod-specifications .content-show-more tbody:eq(0) td:eq(2)"
        When Replace content "__MD27SpecificationsModule.right14" with element selector is ".mod-specifications .content-show-more tbody:eq(0) td:eq(3)"
        When Replace content "__MD27SpecificationsModule.right15" with element selector is ".mod-specifications .content-show-more tbody:eq(0) td:eq(4)"
        When Replace content "__MD27SpecificationsModule.right16" with element selector is ".mod-specifications .content-show-more tbody:eq(0) td:eq(5)"

        When Replace content "__MD27SpecificationsModule.left2" with element selector is ".mod-specifications .content-show-more h4:eq(1)"
        When Replace content "__MD27SpecificationsModule.center21" with element selector is ".mod-specifications .content-show-more tbody:eq(1) th:eq(0)"
        When Replace content "__MD27SpecificationsModule.center22" with element selector is ".mod-specifications .content-show-more tbody:eq(1) th:eq(1)"
        When Replace content "__MD27SpecificationsModule.right21" with element selector is ".mod-specifications .content-show-more tbody:eq(1) td:eq(0)"
        When Replace content "__MD27SpecificationsModule.right22" with element selector is ".mod-specifications .content-show-more tbody:eq(1) td:eq(1)"

        When Replace content "__MD27SpecificationsModule.left3" with element selector is ".mod-specifications .content-show-more h4:eq(2)"
        When Replace content "__MD27SpecificationsModule.center31" with element selector is ".mod-specifications .content-show-more tbody:eq(2) th:eq(0)"
        When Replace content "__MD27SpecificationsModule.center32" with element selector is ".mod-specifications .content-show-more tbody:eq(2) th:eq(1)"
        When Replace content "__MD27SpecificationsModule.center33" with element selector is ".mod-specifications .content-show-more tbody:eq(2) th:eq(2)"
        When Replace content "__MD27SpecificationsModule.center34" with element selector is ".mod-specifications .content-show-more tbody:eq(2) th:eq(3)"
        When Replace content "__MD27SpecificationsModule.center35" with element selector is ".mod-specifications .content-show-more tbody:eq(2) th:eq(4)"
        When Replace content "__MD27SpecificationsModule.center36" with element selector is ".mod-specifications .content-show-more tbody:eq(2) th:eq(5)"
        When Replace content "__MD27SpecificationsModule.right31" with element selector is ".mod-specifications .content-show-more tbody:eq(2) td:eq(0)"
        When Replace content "__MD27SpecificationsModule.right32" with element selector is ".mod-specifications .content-show-more tbody:eq(2) td:eq(1)"
        When Replace content "__MD27SpecificationsModule.right33" with element selector is ".mod-specifications .content-show-more tbody:eq(2) td:eq(2)"
        When Replace content "__MD27SpecificationsModule.right34" with element selector is ".mod-specifications .content-show-more tbody:eq(2) td:eq(3)"
        When Replace content "__MD27SpecificationsModule.right35" with element selector is ".mod-specifications .content-show-more tbody:eq(2) td:eq(4)"
        When Replace content "__MD27SpecificationsModule.right36" with element selector is ".mod-specifications .content-show-more tbody:eq(2) td:eq(5)"

        When Replace content "__MD27SpecificationsModule.left4" with element selector is ".mod-specifications .content-show-more h4:eq(3)"
        When Replace content "__MD27SpecificationsModule.center41" with element selector is ".mod-specifications .content-show-more tbody:eq(3) th:eq(0)"
        When Replace content "__MD27SpecificationsModule.center42" with element selector is ".mod-specifications .content-show-more tbody:eq(3) th:eq(1)"
        When Replace content "__MD27SpecificationsModule.center43" with element selector is ".mod-specifications .content-show-more tbody:eq(3) th:eq(2)"
        When Replace content "__MD27SpecificationsModule.center44" with element selector is ".mod-specifications .content-show-more tbody:eq(3) th:eq(3)"
        When Replace content "__MD27SpecificationsModule.right41" with element selector is ".mod-specifications .content-show-more tbody:eq(3) td:eq(0)"
        When Replace content "__MD27SpecificationsModule.right42" with element selector is ".mod-specifications .content-show-more tbody:eq(3) td:eq(1)"
        When Replace content "__MD27SpecificationsModule.right43" with element selector is ".mod-specifications .content-show-more tbody:eq(3) td:eq(2)"
        When Replace content "__MD27SpecificationsModule.right44" with element selector is ".mod-specifications .content-show-more tbody:eq(3) td:eq(3)"

        When Replace content "__MD27SpecificationsModule.left5" with element selector is ".mod-specifications .content-show-more h4:eq(4)"
        When Replace content "__MD27SpecificationsModule.center51" with element selector is ".mod-specifications .content-show-more tbody:eq(4) th:eq(0)"
        When Replace content "__MD27SpecificationsModule.center52" with element selector is ".mod-specifications .content-show-more tbody:eq(4) th:eq(1)"
        When Replace content "__MD27SpecificationsModule.center53" with element selector is ".mod-specifications .content-show-more tbody:eq(4) th:eq(2)"
        When Replace content "__MD27SpecificationsModule.right51" with element selector is ".mod-specifications .content-show-more tbody:eq(4) td:eq(0)"
        When Replace content "__MD27SpecificationsModule.right52" with element selector is ".mod-specifications .content-show-more tbody:eq(4) td:eq(1)"
        When Replace content "__MD27SpecificationsModule.right53" with element selector is ".mod-specifications .content-show-more tbody:eq(4) td:eq(2)"

        When Replace content "__MD27SpecificationsModule.left6" with element selector is ".mod-specifications .content-show-more h4:eq(5)"
        When Replace content "__MD27SpecificationsModule.center61" with element selector is ".mod-specifications .content-show-more tbody:eq(5) th:eq(0)"
        When Replace content "__MD27SpecificationsModule.center62" with element selector is ".mod-specifications .content-show-more tbody:eq(5) th:eq(1)"
        When Replace content "__MD27SpecificationsModule.right61" with element selector is ".mod-specifications .content-show-more tbody:eq(5) td:eq(0)"
        When Replace content "__MD27SpecificationsModule.right62" with element selector is ".mod-specifications .content-show-more tbody:eq(5) td:eq(1)"

        When Replace content "__MD27SpecificationsModule.show" with element selector is ".mod-specifications .content-show-more .btn-outline-primary .text"
        When Replace content "__MD27SpecificationsModule.down" with element selector is ".mod-specifications .content-show-more .btn-text .text"

        Then Compare module ".mod-specifications" with id "<Id>" and position 0

        @Specifications-module-1920x1080-design-0
        Examples:
            | Id                                       | viewport  |
            | Specifications-module-1920x1080-design-0 | 1920x1080 |

        @Specifications-module-1440x900-design-0
        Examples:
            | Id                                      | viewport |
            | Specifications-module-1440x900-design-0 | 1440x900 |

        @Specifications-module-1280x720-design-0
        Examples:
            | Id                                      | viewport |
            | Specifications-module-1280x720-design-0 | 1280x720 |

        @Specifications-module-1024x768-design-0
        Examples:
            | Id                                      | viewport |
            | Specifications-module-1024x768-design-0 | 1024x768 |

        @Specifications-module-768x1024-design-0
        Examples:
            | Id                                      | viewport |
            | Specifications-module-768x1024-design-0 | 768x1024 |

        @Specifications-module-414x736-design-0
        Examples:
            | Id                                     | viewport |
            | Specifications-module-414x736-design-0 | 414x736  |