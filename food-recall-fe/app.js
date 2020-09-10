const searchParams = new URLSearchParams(window.location.search)
const search_term = searchParams.get("search_term")

let url = 'http://localhost:3000/recalls'
const formResults = document.querySelector('#formresults')

if (search_term) {
    url = `${url}?search_term=${search_term}`
    fetchRecalls()
}

function fetchRecalls() {
    fetch(url)
    .then(response => response.json())
    .then(handleRecalls)
}

function handleRecalls(recalls) {
    recalls.forEach(recall => {
        const recallCard = document.createElement('div')
        const recallingFirm = document.createElement('h3')
        const recallDescription = document.createElement('p')

        // recallingFirm.innerHTML = `<a href='recalling_firm.html?recalling_firm=${company}'>${recall.id}</a>`
        recallDescription.textContent = `${recall.address_1}, ${recall.city}, ${recall.state}`

        formResults.appendChild(recallCard)
        recallCard.append(recallingFirm, recallDescription)
    })
}

const mainList = document.getElementById('stateList')



// const states = results.state

// function renderList(states) {
//     heroines.forEach(heroine => {
//         const name = document.createElement('h3')
//         const super_name = document.createElement('li')

//         name.innerHTML = `<a href='show.html?id=${heroine.id}'>${heroine.name}</a>`
//         super_name.textContent = heroine.super_name

//         mainList.append(name, super_name)
//     })
// }

// fetch('http://localhost:3000/recalls')
//     .then(response => response.json())
//     .then(recalls => {
//         const stateDropdown = document.querySelector('#state-field')
//         recalls.state.forEach(state => {
//             const stateOption = document.createElement('option')
//             stateOption.textContent = recall.state
//             stateOption.value = recall.state
//             stateDropdown.appendChild(stateOption)
//         })

let states = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL", "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA", "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE", "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK", "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA", "WV", "WI", "WY"]

function populateStates(states) {
    states.forEach(state => {
        const stateName = document.createElement('li')
        stateName.innerHTML = `<a href='show.html?state=${state}'>${state}</a>`
        console.log(stateName)
        mainList.appendChild(stateName)
    })
}

populateStates(states)

fetch('http://localhost:3000/users')
    .then(response => response.json())
    .then(users => {
        const usernameField = document.querySelector('#username-field')
    })