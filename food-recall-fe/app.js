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
        const recallDescription = document.createElement('h2')
        const recallingFirm = document.createElement('h3')
        recallDescription.innerHTML = `<a href='show_card.html?recall_number=${recall.recall_number}'>${recall.recall_number}</a>`
        recallingFirm.textContent = recall.recalling_firm
        formResults.appendChild(recallCard)
        recallCard.append(recallDescription, recallingFirm)
    })
}

const mainList = document.getElementById('stateList')

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

