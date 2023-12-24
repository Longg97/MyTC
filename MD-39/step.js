const { offSCroll, scrollDownToBottom } = require('../../../helpers/support.js')
let originalColorName
Given(`Navigate to page with URL {string} and scroll to Category Intro Module`, (URL) => {
    cy.visitWithAuth(`${URL}`)
    offSCroll()
    scrollDownToBottom()
    cy.get('.mod-category-models').should('be.visible').scrollIntoView()
})
Given(`Hover Each Trim Card: See change changes the background to white`, () => {
    cy.get(`.mod-category-models`).find(`.js-model-item`).each((el) => {
        cy.get(el).should('not.have.css', 'background-color', 'rgb(255, 255, 255)')
        cy.get(el).realHover({ scrollBehavior: false }).wait(1000)
        cy.get(el).should('have.css', 'background-color', 'rgb(255, 255, 255)')
    })
})
Given(`Hover Color Icons: Circle outline`, () => {
    cy.get(`.mod-category-models .col`).find(`.color-option:not(.checked)`).each((el) => {
        cy.get(el).should('not.have.css', 'border-color', 'rgb(34, 34, 34)')
        cy.get(el).realHover({ scrollBehavior: false }).wait(1000)
        cy.get(el).should('have.css', 'border-color', 'rgb(34, 34, 34)')
    })
})
Given(`Click Color Icons: See tick sign and Circle outline for Color Icon; Changes Color Name; Changes Trim Image color to selected color; Changes Trim Image color to selected color`, () => {
    cy.get(`.mod-category-models .col`).each((el) => {
        cy.get(el).find('.js-color-name').invoke('text').then((text) => {
            originalColorName = text
            cy.log(`Original Color Name: ${originalColorName}`)
        })
        cy.get(el).find(`.color-option`).each(($span, index) => {
            if (index == 1) {
                cy.get($span).realClick({ scrollBehavior: false }).wait(1000)
                cy.get($span).should('have.css', 'border-color', 'rgb(34, 34, 34)')
                cy.get($span).find('.icomoon').should('have.css', 'opacity', '1')
            }
        })
        cy.get(el).find('.js-color-name').invoke('text').then((currentColorName) => {
            cy.wrap(currentColorName).should('not.equal', originalColorName)
        })
        cy.get(el).find('.js-model-thumb').each(($span, index) => {
            if (index == 1) {
                cy.get($span).should('be.visible')
            }
            else {
                cy.get($span).should('not.be.visible')
            }
        })
    })
})
Given(`Hover Red Button: Text underline`, () => {
    cy.get('.mod-category-models .col').each((el) => {
        cy.wrap(el).find('.justify-center .text').each((span) => {
            cy.get(span).realHover({ scrollBehavior: false }).wait(500).then(() => {
                cy.log(span.text())
                cy.window().then((win) => {
                    const before = win.getComputedStyle(span[0], '::before')
                    const opacity = parseFloat(before.getPropertyValue('opacity'))
                    expect(opacity).to.equal(1)
                })
            })
        })
    })
})
Given(`Click Red Button: Will send the reader to the specified URL address with status {int}`, (int) => {
    cy.get(`.mod-category-models .col .justify-center a`).each((el) => {
        cy.get(el).should('have.attr', 'href')
        cy.request(el.attr('href')).then((response) => {
            expect(response.status).to.eq(int);
        })
    })
})
Given(`Click Base ...*: See tooltip`, () => {
    cy.get(`.mod-category-models .col`).each((el) => {
        cy.get(el).find(`.model-price`).realClick({ scrollBehavior: false }).wait(1000)
        cy.get(el).find(`.wrap-tooltip`).should('be.visible')
    })
})