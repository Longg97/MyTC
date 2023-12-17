const { offSCroll, scrollDownToBottom} = require('../../../helpers/support.js')
let currentImgSrc
Given(`Navigate to page with URL {string} and scroll to Expanding Gallery module`, (URL) => {
    cy.visitWithAuth(`${URL}`)
    offSCroll()
    scrollDownToBottom()
    cy.get('.mod-expanding-gallery').should('be.visible').scrollIntoView().wait(2000)
})

Given(`I want to hover icon {string}`, (icon) => {
    cy.get(`.mod-expanding-gallery .swiper-button-${icon}`).realHover({scrollBehavior : false})
})
Then(`Arrow {string} of icon {string} change to Red color`, (arrow, icon) => {
    cy.get(`.mod-expanding-gallery .swiper-button-${icon} .icon-arrow-${arrow}`).should('have.css', 'color', 'rgb(222, 28, 33)');
})
Given(`I want to click icon {string}`, (icon) => {
    cy.get('.mod-expanding-gallery .swiper-slide-active img').invoke('attr', 'src').then((src) => {
        currentImgSrc = src;
    })
    cy.get(`.mod-expanding-gallery .swiper-button-${icon}`).realClick({scrollBehavior : false})
})
Given(`I click dots slide`, () => {
    cy.get('.mod-expanding-gallery .swiper-pagination')
    .find('span')
    .each(($span, index, $spans) => {
        if (index >= 1 && index < $spans.length - 1) {
            const isActive = $span.hasClass('swiper-pagination-bullet-active');
            if (!isActive) {
                cy.get('.mod-expanding-gallery .swiper-slide-active img').invoke('attr', 'src').then((src) => {
                    currentImgSrc = src;
                })
                cy.wrap($span).should('be.visible').realClick({scrollBehavior : false}).then(() => {
                    cy.get('.mod-expanding-gallery .swiper-slide-active img')
                    .invoke('attr', 'src')
                    .should('not.equal', currentImgSrc)
                })
            }
        }
    })
})

Then(`Image background change`, () => {
    cy.get('.mod-expanding-gallery .swiper-slide-active img')
        .invoke('attr', 'src')
        .should('not.equal', currentImgSrc)
})