let aText
Given(`Navigate to page with URL {string} and scroll to Features Module`, (URL) => {
    cy.visitWithAuth(`${URL}`).wait(2000)
    cy.realPress('PageDown')
    cy.get('.mod-features').should('be.visible').scrollIntoView()
})
And(`Hidden element with selector is {string}`, function (selector) {
    Cypress.$(selector).css('visibility', 'hidden')
})
Given(`Hover Feature Category: Text change to white color`, () => {
    cy.get('.mod-features .container').eq(0).find('.col').eq(0).find('a').each((el) => {
        cy.get(el).realHover({ scrollBehavior: false }).wait(500)
        cy.get(el).should('have.css', 'color', 'rgb(255, 255, 255)')
    })
})
Given(`Click on each Feature Category: Page auto scrolls to the Feature Items of the designated Feature Category displaying the first Feature Item of the list`, () => {
    cy.get('.mod-features .container').eq(0).find('.col').eq(0).find('a').each((el) => {
        cy.get(el).realClick({ scrollBehavior: false }).wait(500)
        cy.get(el).invoke('attr', 'data-tab').then((value) => {
            aText = value
            cy.log(`Data feature: ${aText}`)
            cy.get('.mod-features .container.anima-bottom-v1').find('.col').eq(1).find(`[data-tab="${aText}"][data-feature="0"]`)
                .should('have.css', 'color', 'rgb(255, 255, 255)')
        })
    })
})
Given(`Scroll Down page: see each Feature Item and its Feature Category highlighted`, () => {
    cy.get('.mod-features .container').eq(0).find('.col').eq(0).find('a').each((el, outerIndex) => {
        cy.get(el).realClick({ scrollBehavior: false }).wait(500)
        cy.get(el).invoke('attr', 'data-tab').then((value) => {
            aText = value
            cy.log(`Data feature: ${aText}`).then(() => {
                cy.get('.mod-features .container.anima-bottom-v1').find('.col').eq(1).find(`[data-tab="${aText}"]`).each((span, innerIndex) => {
                    switch (outerIndex) {
                        case 0:
                            if (innerIndex < 9) {
                                if ((innerIndex >= 4 && innerIndex <= 6) || innerIndex == 8) {
                                    cy.get('body').realType('{downarrow}')
                                }
                                else {
                                    cy.get(span).should('have.css', 'color', 'rgb(255, 255, 255)')
                                    cy.get('body').realType('{downarrow}')
                                }
                            }
                            break
                        case 1:
                            if (innerIndex < 8) {
                                if (innerIndex == 7) {
                                    cy.get('body').realType('{downarrow}')
                                }
                                else {
                                    cy.get(span).should('have.css', 'color', 'rgb(255, 255, 255)')
                                    cy.get('body').realType('{downarrow}')
                                }
                            }
                            break
                        case 2:
                            if (innerIndex < 10) {
                                if (innerIndex >= 6 && innerIndex <= 9) {
                                    cy.get('body').realType('{downarrow}')
                                }
                                else {
                                    cy.get(span).should('have.css', 'color', 'rgb(255, 255, 255)')
                                    cy.get('body').realType('{downarrow}')
                                }
                            }
                            break
                        case 3:
                            if (innerIndex < 11) {
                                if (innerIndex >= 7 && innerIndex <= 10) {
                                    cy.get('body').realType('{downarrow}')
                                }
                                else {
                                    cy.get(span).should('have.css', 'color', 'rgb(255, 255, 255)')
                                    cy.get('body').realType('{downarrow}')
                                }
                            }
                            break
                        case 4:
                            if (innerIndex >= 5 && innerIndex <= 8) {
                                cy.get('body').realType('{downarrow}')
                            }
                            else {
                                cy.get(span).should('have.css', 'color', 'rgb(255, 255, 255)')
                                cy.get('body').realType('{downarrow}')
                            }
                            break
                        default:
                            break
                    }
                })
            })
        })
    })
})