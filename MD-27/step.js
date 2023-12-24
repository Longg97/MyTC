const { offSCroll, scrollDownToBottom } = require('../../../helpers/support.js')
Given(`Navigate to page with URL {string} and scroll to Specifications module`, (URL) => {
    cy.visitWithAuth(`${URL}`)
    offSCroll()
    scrollDownToBottom()
    cy.get('.mod-specifications .content-show-more .container').should('be.visible').scrollIntoView({ duration: 1000, offset: { top: -400, left: 0 } })
})
Given(`Hover Show {string} Specs CTA`, (string) => {
    if (string == 'Less')
        cy.get('.mod-specifications .content-show-more .button-show-less').realHover({ scrollBehavior: false }).wait(500)
    else {
        cy.get('.mod-specifications .text-center .button-show-more').realHover({ scrollBehavior: false }).wait(500)
    }
})
Then(`Text color change to white, background red of {string}`, (btn) => {
    if (btn == 'button-show-less') {
        cy.get('.mod-specifications .content-show-more .button-show-less').should('have.css', 'background-color', 'rgb(222, 28, 33)')
        cy.get('.mod-specifications .content-show-more .button-show-less').should('have.css', 'color', 'rgb(255, 255, 255)')
    }
    else {
        cy.get('.mod-specifications .text-center .button-show-more').should('have.css', 'background-color', 'rgb(222, 28, 33)')
        cy.get('.mod-specifications .text-center .button-show-more').should('have.css', 'color', 'rgb(255, 255, 255)')
    }
})
Given(`Click Show {string} Specs CTA`, (string) => {
    if (string == 'Less') {
        cy.get('.mod-specifications .content-show-more .button-show-less').realClick({ scrollBehavior: false })
        cy.get('.mod-specifications').should('be.visible').scrollIntoView({ duration: 1000, offset: { top: -400, left: 0 } })
    }
    else {
        cy.get('.mod-specifications .text-center .button-show-more').realClick({ scrollBehavior: false })
        cy.get('.mod-specifications .content-show-more .container').should('be.visible').scrollIntoView({ duration: 1000, offset: { top: -400, left: 0 } })
    }
})
Then(`{string} content`, (string) => {
    if (string == 'Collapse')
        cy.get('.mod-specifications .content-show-more').should('not.be.visible')
    else
        cy.get('.mod-specifications .content-show-more').should('be.visible')
})
Given(`Hover Text Link: Text Underlined`, () => {
    cy.get(`.mod-specifications .content-show-more a`).then((el) => {
        cy.get(el).realHover({ scrollBehavior: false }).wait(500)
        cy.wrap(el).find('.text').within((el) => {
            cy.log(el.text())
            cy.window().then((win) => {
                const before = win.getComputedStyle(el[0], '::before')
                const opacity = parseFloat(before.getPropertyValue('opacity'))
                expect(opacity).to.equal(1)
            })
        })
    })
})
Given(`Click Download Link: Will send the reader to the PDF specs file of the current trim with status {int} and open new tab`, (int) => {
    cy.get(`.mod-specifications .content-show-more a`).then((el) => {
        cy.get(el).should('have.attr', 'href')
        cy.request(el.attr('href')).then((response) => {
            expect(response.status).to.eq(int);
        })
    })
})