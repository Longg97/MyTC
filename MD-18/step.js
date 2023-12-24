const { offSCroll, scrollDownToBottom } = require('../../../helpers/support.js')
let positionArrow
Given(`Navigate to page with URL {string} and scroll to Additional Features`, (URL) => {
    cy.visitWithAuth(`${URL}`)
    offSCroll()
    scrollDownToBottom()
    cy.get('.mod-additional-features-white').should('be.visible').scrollIntoView()
})
Given(`I want to hover arrow button`, () => {
    cy.get('.mod-additional-features-white .hidden .absolute')
        .invoke('position')
        .its('left')
        .then((leftValue) => {
            positionArrow = leftValue;
            cy.log(`position Arrow: ${positionArrow}`)
        })
    cy.get('.mod-additional-features-white .hidden .icon-arrow-right:not(.absolute)').should('be.visible')
    cy.get('.mod-additional-features-white .container.mb-25 .hidden').realHover()
})
Then(`Arrow moving`, () => {
    cy.get('.mod-additional-features-white .hidden .icon-arrow-right:not(.absolute)').should('not.be.visible')
    cy.get('.mod-additional-features-white .hidden .absolute')
        .invoke('position')
        .its('left')
        .should('not.equal', positionArrow)
})
Given(`Click Arrow Button: will send the reader to the specified URL address with status {int}`, (int) => {
    cy.get('.mod-additional-features-white .hidden a').realClick({ scrollBehavior: false })
    cy.get(`.mod-additional-features-black .container.mb-25 .hidden a`).then((el) => {
        cy.get(el).should('have.attr', 'href')
        cy.request(el.attr('href')).then((response) => {
            expect(response.status).to.eq(int);
        })
    })
})
Given(`Hover image: see image zoom in`, () => {s
    cy.get('.mod-additional-features-white .container.overflow-hidden .swiper-wrapper')
        .find('.swiper-slide')
        .each(($span) => {
            cy.wrap($span).realHover({ scrollBehavior: false }).wait(1000)
            cy.wrap($span).find('img').should('have.css', 'transform', 'matrix(1.1, 0, 0, 1.1, 0, 0)')
        })
})