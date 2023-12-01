var loginPageUI = require('../ui/LoginPageUI')
var infos = require("../utils/Infos")

export function login(){
    cy.visit(infos.URL)
    cy.get(loginPageUI.txtUsername).type(infos.USERNAME)
    cy.get(loginPageUI.txtPassword).type(infos.PASSWORD)
    cy.get(loginPageUI.btnLogin).click()
}