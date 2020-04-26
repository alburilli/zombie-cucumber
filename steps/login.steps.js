
const { client } = require('nightwatch-api')
const { When, Then } = require('cucumber')

When('eu faço login com {string} e {string}', function (email, pass) {
    let login = client.page.login()

    return login.with(email, pass)
});

Then('devo ver {string} no menu lateral da área logada', function (userName) {
    let sidebar = client.page.sidebar()

    return sidebar.expectLoggedUser(userName)
});

Then('devo ver a mensagem de alerta {string} {string}', function (expectMessage, typeMessage) {
    let login = client.page.login()

    switch (typeMessage) {
        case 'info':
            login.expectAlertInfo(expectMessage)
            break;
        case 'danger':
            login.expectAlertDanger(expectMessage)
            break;
    }
})

