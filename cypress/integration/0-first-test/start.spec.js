var loginPage = require('../../../guru99/pages/LoginPage')

describe('Test: login successful', () =>{
    it('visit page then input account info', ()=>{
        loginPage.login()
        cy.contains("Welcome To Manager's Page of Guru99 Bank")
    })
})