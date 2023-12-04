describe('Test: login successful', () => {
    it('Truy cập Page Login', () => {
        cy.visit('https://www.saucedemo.com/')
    })

    it('Xác định các thành phần hiển thị', () => {
        cy.get('.login_logo').should('be.visible')
        cy.get('.login_wrapper').should('be.visible')
        cy.get('.login_credentials_wrap').should('be.visible')
        cy.get('.login_wrapper-inner').should('be.visible')
        cy.get('.login_credentials_wrap-inner').should('be.visible')
        cy.get('form').should('be.visible')
        cy.get('[data-test="username"]').should('be.visible')
        cy.get('[data-test="password"]').should('be.visible')
        cy.get('.error-message-container').should('be.visible')
        cy.get('[data-test="login-button"]').should('be.visible')
        cy.get('#login_credentials').should('be.visible')
        cy.get('.login_password').should('be.visible')
    })

    it('Login and Check', () => {
        const username = 'standard_user'
        const password = 'secret_sauce'

        // Điền thông tin đăng nhập
        cy.get('[data-test="username"]').type(`${username}{enter}`)
        cy.get('[data-test="password"]').type(`${password}{enter}`)
        cy.get('[data-test="login-button"]').click()

    })

    it('Check page "Swag Labs"', () => {
        cy.login()

        // Check Header
        cy.get('.primary_header').should('be.visible')
        cy.get('.header_secondary_container').should('be.visible')
        cy.get('.header_label').should('be.visible')

        // Click menu ẩn
        cy.get('.primary_header').click(30, 30)

        // Check menu items
        cy.get('#inventory_sidebar_link').click()

        // Check cart hiển thị
        cy.get('.shopping_cart_link').click()

        // Trở lại thao tác trước đó (ví dụ: quay lại trang trước đó)
        cy.then(() => {
            cy.go('back');
        }) 
    })

    it('Check product section', () => {

        // Lấy dropdown chứa tùy chọn sắp xếp
        cy.get('[data-test="product_sort_container"]').as('sort_product')

        // Kiểm tra sự hiển thị và số lượng tùy chọn
        cy.get('@sort_product').should('be.visible')
        cy.get('@sort_product').find('option').should('have.length', 4)

        // Kiểm tra từng tùy chọn
        const sortOptions = ['Price (low to high)', 'Price (high to low)', 'Name (A to Z)', 'Name (Z to A)']
        sortOptions.forEach(option => {
            cy.get('@sort_product').select(option)
            // Kiểm tra xem danh sách sản phẩm có được sắp xếp đúng không
            // Kiểm tra giao diện người dùng sau khi chọn tùy chọn sắp xếp
        })
    })

    it('Check các product', () => {
        cy.login()

        // Lấy danh sách sản phẩm và đặt tên là 'productList'
        cy.get('.inventory_list').as('productList')

        // Kiểm tra sự hiển thị của danh sách sản phẩm
        cy.get('@productList').should('be.visible')

        // Lấy danh sách các sản phẩm trong danh sách
        cy.get('@productList').find('.inventory_item').as('products')

        // Kiểm tra số lượng sản phẩm
        cy.get('@products').should('have.length.greaterThan', 0)

        // Lặp qua từng sản phẩm để kiểm tra thông tin và thứ tự
        cy.get('@products').each(($product, index, $products) => {
            // Kiểm tra sự hiển thị của sản phẩm
            cy.wrap($product).should('be.visible')

            // Kiểm tra thông tin khác của sản phẩm (tên, giá, ...)
            const productName = $product.find('.inventory_item_name').text()
            const productDescription = $product.find('.inventory_item_desc').text()
            const productPrice = $product.find('.inventory_item_price').text()

            // Thực hiện kiểm tra thông tin sản phẩm ở đây, ví dụ:
            cy.log(`Product Name: ${productName}`)
            cy.log(`Product Description: ${productDescription}`)
            cy.log(`Product Price: ${productPrice}`)

            // Lấy giá trị động của data-test từ sản phẩm hiện tại
            const addToCartDataTest = $product.find('[data-test^="add-to-cart-"]').attr('data-test')

            // Thực hiện click vào nút "Add to Cart" cho sản phẩm hiện tại
            cy.wrap($product).find(`[data-test="${addToCartDataTest}"]`).should('be.visible')

            // Kiểm tra thứ tự của sản phẩm
            if (index < $products.length - 1) {
                const currentProduct = $products.eq(index)
                const nextProduct = $products.eq(index + 1)

                // So sánh thông tin để đảm bảo thứ tự đúng
                // Ví dụ: expect(currentProduct.find('.inventory_item_price').text()).to.be.lessThan(nextProduct.find('.inventory_item_price').text())
            }
        })

        cy.get('.shopping_cart_link').click()
    })

    it('Check footer', () => {
        cy.login()

        cy.get('.footer').should('be.visible')
        cy.get('.social_twitter > a').should('be.visible')
        cy.get('.social_facebook > a').should('be.visible')
        cy.get('.social_linkedin > a').should('be.visible')
        cy.get('.footer_copy').should('be.visible')
    })

    it('Check product function', () => {
        cy.login()

        let productsCount = 0; // Biến để lưu số lượng sản phẩm

        // Lấy danh sách sản phẩm và đặt tên là 'productList'
        cy.get('.inventory_list').as('productList')

        // Kiểm tra sự hiển thị của danh sách sản phẩm
        cy.get('@productList').should('be.visible')

        // Lấy danh sách các sản phẩm trong danh sách
        cy.get('@productList').find('.inventory_item').as('products')

        // Kiểm tra số lượng sản phẩm
        cy.get('@products').should('have.length.greaterThan', 0)

        // Lặp qua từng sản phẩm để kiểm tra thông tin và thứ tự
        cy.get('@products').each(($product, index, $products) => {
            // Lấy giá trị động của data-test từ sản phẩm hiện tại
            const addToCartDataTest = $product.find('[data-test^="add-to-cart-"]').attr('data-test')

            // Thực hiện click vào nút "Add to Cart" cho sản phẩm hiện tại
            if(index < 4) {
                cy.wrap($product).find(`[data-test="${addToCartDataTest}"]`).click()
                productsCount++
            }

            // Kiểm tra thứ tự của sản phẩm
            if (index < $products.length - 1) {
                const currentProduct = $products.eq(index)
                const nextProduct = $products.eq(index + 1)

                // So sánh thông tin để đảm bảo thứ tự đúng
                // Ví dụ: expect(currentProduct.find('.inventory_item_price').text()).to.be.lessThan(nextProduct.find('.inventory_item_price').text())
            }
        });

        cy.get('@products').its('length').then((length) => {
            cy.wrap(length).should('exist'); // Chắc chắn giá trị tồn tại
            cy.wrap(length).should('be.gte', 0); // Chắc chắn giá trị không âm
            cy.wrap(length.toString()).as('productsCount'); // Lưu giá trị vào biến productsCount
        }).then(() => {
            // Kiểm tra số lượng sản phẩm trong giỏ hàng
            cy.get('.shopping_cart_badge').should('have.text', productsCount);
        });

        // Chuyển đến trang giỏ hàng
        cy.get('.shopping_cart_link').click();
    });

})