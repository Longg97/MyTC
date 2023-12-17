const { offSCroll, scrollDownToBottom } = require('../../../helpers/support.js')
Given(`Navigate to page with URL {string} and scroll to Accessories Module ​`, (URL) => {
    cy.visitWithAuth(`${URL}`)
    offSCroll()
    scrollDownToBottom()
    cy.get('.mod-accessories').should('be.visible').scrollIntoView()
})
Given(`I want to Hover Accessory Image`, () => {
    cy.get(`.mod-accessories .swiper-wrapper`).find(`.swiper-slide`).each(($el) => {
        cy.get($el).realHover({ scrollBehavior: false }).wait(500)
        cy.wrap($el).find('.text').within(($el) => {
            cy.log($el.text())
            cy.window().then((win) => {
                const before = win.getComputedStyle($el[0], '::before')
                const opacity = parseFloat(before.getPropertyValue('opacity'))
                expect(opacity).to.equal(1)
            })
        })
    })
})
Given(`Click on each card: will send the reader to the Dreamshop address with status {int}`, (int) => {
    cy.get(`.mod-accessories .swiper-wrapper`).find(`.swiper-slide`).each(($el) => {
        cy.get($el).realClick({ scrollBehavior: false })
        cy.url().should('eq', 'https://dreamshop.honda.com/s/category/powersports/0ZG6g000001QujwGAC').wait(100000)
        cy.request('https://dreamshop.honda.com/s/category/powersports/0ZG6g000001QujwGAC').should((response) => {
            expect(response.status).to.eq(int);
        })
    })
})
Given(`Click Red Button: will send the reader to the specified URL address with status {int}`, (int) => {
    cy.get('.mod-accessories .mb-20 .hidden').realClick({ scrollBehavior: false })
    cy.url().should('eq', 'https://hondaps-redesign.sc.gravity.codes/motorcycle/adventure/africa-twin/trims/accessories?model=CRF1100LDN')
    cy.request('https://hondaps-redesign.sc.gravity.codes/motorcycle/adventure/africa-twin/trims/accessories?model=CRF1100LDN').should((response) => {
        expect(response.status).to.eq(int);
    })
})