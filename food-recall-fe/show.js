const searchParams = new URLSearchParams(window.location.search)
const state = searchParams.get('state')
const search_term = searchParams.get("search_term")

const recallList = document.querySelector('#recallCompanyList')

let url = `http://localhost:3000/state?state=${state}`

if (search_term) {
    url = `${url}?search_term=${search_term}`
}

fetch(url)
    .then(response => response.json())
    .then(handleStates)

function handleStates(recalls) {
    const companies = new Set();
        recalls.forEach(recall => {
            companies.add(recall.recalling_firm)
        })

    companies.forEach(company => {

        const recallCard = document.createElement('div')
        const recallingFirm = document.createElement('h3')
        const recallDescription = document.createElement('p')

        recallingFirm.innerHTML = `<a href='recalling_firm.html?recalling_firm=${company}'>${company}</a>`
        // recallDescription.textContent = `${recall.address_1}, ${recall.city}, ${recall.state}`

        recallList.appendChild(recallCard)
        recallCard.append(recallingFirm, recallDescription)
    })
}


