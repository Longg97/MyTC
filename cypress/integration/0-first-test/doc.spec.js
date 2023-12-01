describe('Testcase', () => {
    it('Câu lệnh cơ bản', () => {
        cy.visit('https://www.saucedemo.com/')
        cy.get('.login_logo').should('be.visible')
        const username = 'standard_user'
        cy.get('[data-test="username"]').type(`${username}{enter}`)
        cy.get('@sort_product').select(option)
        cy.get('[data-test="login-button"]').click()
        cy.then(() => {
            cy.go('back');
        })
        cy.get('[data-test="product_sort_container"]').as('sort_product')
        cy.get('@sort_product').find('option').should('have.length', 4)
        cy.get('@products').each(($product, index, $products) => {
            cy.wrap($product).should('be.visible')
            cy.log(`Product Name: ${productName}`)
        })
    })
})
