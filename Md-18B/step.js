const { offSCroll, scrollDownToBottom } = require('../../../helpers/support.js')
let positionArrow
Given(`Navigate to page with URL {string} and scroll to New Features Module`, (URL) => {
    cy.visitWithAuth(`${URL}`)
    offSCroll()
    scrollDownToBottom()
    cy.get('.mod-additional-features-black').should('be.visible').scrollIntoView()
})
Given(`I want to hover arrow button`, () => {
    cy.get('.mod-additional-features-black .hidden .absolute')
        .invoke('position')
        .its('left')
        .then((leftValue) => {
            positionArrow = leftValue
            cy.log(`position Arrow: ${positionArrow}`)
        })
    cy.get('.mod-additional-features-black .container.mb-25 .hidden .icon-arrow-right:not(.absolute)').should('be.visible')
    cy.get('.mod-additional-features-black .container.mb-25 .hidden').realHover()
})
Then(`Arrow moving`, () => {
    cy.get('.mod-additional-features-black .container.mb-25 .hidden .icon-arrow-right:not(.absolute)').should('not.be.visible')
    cy.get('.mod-additional-features-black .container.mb-25 .hidden .absolute')
        .invoke('position')
        .its('left')
        .should('not.equal', positionArrow)
})
Given(`Click Arrow Button: will send the reader to the specified URL address with status {int}`, (int) => {
    cy.get(`.mod-additional-features-black .container.mb-25 .hidden a`).then((el) => {
        cy.get(el).should('have.attr', 'href')
        cy.request(el.attr('href')).then((response) => {
            expect(response.status).to.eq(int);
        })
    })
})
Given(`Hover image: see image zoom in`, () => {
    cy.get('.mod-additional-features-black .init-opacity .swiper-wrapper')
        .find('.swiper-slide')
        .each(($span, index) => {
            if (index == 3) {
                cy.get('.icon-arrow-right.text-black').realClick({ scrollBehavior: false }).wait(1000)
                cy.wrap($span).realHover({ scrollBehavior: false }).wait(1000)
                cy.wrap($span).find('img').should('have.css', 'transform', 'matrix(1.1, 0, 0, 1.1, 0, 0)')
            } else {
                cy.wrap($span).realHover({ scrollBehavior: false }).wait(1000)
                cy.wrap($span).find('img').should('have.css', 'transform', 'matrix(1.1, 0, 0, 1.1, 0, 0)')
            }
        })
    cy.get('.icon-arrow-left.text-black').realClick({ scrollBehavior: false }).wait(1000)
})
Given(`I want to hover icon {string}`, (icon) => {
    cy.get(`.mod-additional-features-black .swiper-button-${icon}`).realHover({ scrollBehavior: false })
})
Then(`Arrow {string} of icon {string} change to Red color`, (arrow, icon) => {
    cy.get(`.mod-additional-features-black .swiper-button-${icon} .icon-arrow-${arrow}`).should('have.css', 'color', 'rgb(222, 28, 33)');
})
Given(`I want to click icon {string}`, (icon) => {
    cy.get(`.mod-additional-features-black .swiper-button-${icon}`).realClick({ scrollBehavior: false })
})
Then(`Item 1 hide, show content items 4`, () => {
    cy.get(`.mod-additional-features-black .swiper-wrapper`).should('have.css', 'transform', 'matrix(1, 0, 0, 1, -428, 0)')
})
Then(`Item previous show, icon last hide`, () => {
    cy.get(`.mod-additional-features-black .swiper-wrapper`).should('have.css', 'transform', 'matrix(1, 0, 0, 1, 0, 0)')
})