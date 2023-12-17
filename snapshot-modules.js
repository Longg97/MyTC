// https://docs.cypress.io/api/commands/viewport#Usage
const {
  scrollDownToBottom,
  loopWaitImageComplete,
  loopWaitElHide,
  loopWaitElShow,
  optimizeBeforeSnapshot,
  offAnimationAndScroll
} = require('../../helpers/support')
import {
  mobileToogle,
  productNav,
  productSubNav,
  motorcycleNav,
  accessoriesNav,
  accessoriesSubNav,
  shoppingToolsNav,
  shoppingToolsSubNav,
  experienceHondaNav,
  experienceHondaSubNav,
  riderEducationNav,
  riderEducationSubNav,
  ownerSupportNav,
  ownerSupportSubNav
} from './selectorNavigation'
import { getData } from '../../helpers/scripts.js'
const viewport = {
  viewportWidth: Cypress.config('viewportWidth'),
  viewportHeight: Cypress.config('viewportHeight')
}

Given('I open page {string} on {string}', (page, size) => {
  size = size.split("x")
  if (size.length > 1) {
    cy.viewport(Number(size[0]), Number(size[1]))
    viewport.viewportWidth = Number(size[0])
    viewport.viewportHeight = Number(size[1])
  } else {
    cy.viewport(size[0])
  }
  cy.visit(page)
  cy.window().then((win) => {
    const jQuery = win.$ || win.jQuery
    jQuery('video').each(function (index, videoElement) {
      videoElement.pause();
      jQuery(videoElement).on('play', function () {
        setTimeout(function () {
          videoElement.pause();
        }, 100);
      });
    });
  })
})
When('I scroll to bottom and all elements are loaded in {int} ms', (duration) => {
  cy.scrollTo(0, 500, { duration: 1000 }).scrollTo(0, 0);
  offAnimationAndScroll()
  scrollDownToBottom()
  cy.realPress('Home').wait(duration)
})

And('I want waiting {int} ms', (time) => {
  cy.wait(time)
})

And('I click {string}', (string) => {
  cy.get(`${string}`).realClick({ force: true })
})

And('I click button {string} to go to section', (string) => {
  cy.get(`${string}`).realClick({ force: true })
})

When(`Replace content {string} with element selector is {string}`, function (content, selector) {
  Cypress.$(selector).each((index, element) => {
    element.innerHTML = getData(content)
    cy.log(element)
  })
})

And(`Hidden element with selector is {string}`, function (selector) {
  Cypress.$(selector).css('visibility', 'hidden')
})

And(`Set height of viewport after replace content by selector {string}`, function (selector) {
  cy.viewport(viewport.viewportWidth, Cypress.$(`${selector}`).get(0).offsetHeight).wait(1000)
})

Then(`Compare module {string} with id {string} and position {int}`, (nameModule, Id, position) => {
  const option = {
    mobileToogle,
    productNav,
    productSubNav,
    motorcycleNav,
    accessoriesNav,
    accessoriesSubNav,
    shoppingToolsNav,
    shoppingToolsSubNav,
    experienceHondaNav,
    experienceHondaSubNav,
    riderEducationNav,
    riderEducationSubNav,
    ownerSupportNav,
    ownerSupportSubNav
  }
  const selector = option[nameModule] || nameModule
  loopWaitElShow(selector)
  cy.get(selector).scrollIntoView({ duration: 1000, offset: { top: -100, left: 0 } })
  cy.get(selector).then(($el) => {
    $el.find('img')?.each((_, img) => {
      const src = Cypress.$(img).attr('src');
      loopWaitImageComplete(`img[src="${src}"]`);
    })
  })
  optimizeBeforeSnapshot()

  cy.get(selector).each((element, index) => {
    if (index === position) {
      const name = `${Id}`
      cy.wrap(element).matchImageSnapshot(name, { capture: 'runner', scale: false, })
    }
  })
})

And(`I click to {string}`, (selector) => {
  loopWaitElShow(selector)
  cy.get(selector).realClick()
  cy.wait(2000)
})

Given(`Disabled all youtube video`, () => cy.get('iframe').then($iframes => $iframes.remove()))

Given(`I click {string} menu`, (menuName) => {
  const option = {
    mobileToogle,
    productNav,
    productSubNav,
    motorcycleNav,
    accessoriesNav,
    accessoriesSubNav,
    shoppingToolsNav,
    shoppingToolsSubNav,
    experienceHondaNav,
    experienceHondaSubNav,
    riderEducationNav,
    riderEducationSubNav,
    ownerSupportNav,
    ownerSupportSubNav
  }
  if (option[menuName]) {
    loopWaitElShow(option[menuName])
    cy.wait(1000).get(option[menuName]).eq(0).realClick().wait(2000)
  }
})


Given (`Scroll normal to bottom`, () => cy.realPress('End').wait(1000))

When(`I click slide {int} snapshot`, (int) => {
  cy.get(`.swiper-pagination-bullet[aria-label="Go to slide ${int}"]`).click({ force : true })
})

<<<<<<< HEAD
And(`Remove padding-top of element {string}`, (element) => {
  cy.get(`${element}`).invoke(`css`, `padding-top`, `0`)
})

And(`Click {string}`, (element) => {
  cy.get(`${element}`).click({ force : true })
=======
And(`Add css {string} and remove css {string} of element {string}`, (css1, css2, element) => {
  cy.get(`${element}`).invoke(`addClass`, `${css1}`)
  cy.get(`${element}`).invoke(`removeClass`, `${css2}`)
>>>>>>> 08ce854f4f8148e3a5aec0b457cb003397e8b5e2
})