const searchParams = new URLSearchParams(window.location.search)
const state = searchParams.get('state')

fetch(`http://localhost:3000/state?state=${state}`)
    .then(response => response.json())
    .then(handleStates)

const recallList = document.querySelector('#recallList')

function handleStates(recalls) {
    recalls.forEach(recall => {
        const recallCard = document.createElement('div')
        const recallingFirm = document.createElement('h3')
        const recallDescription = document.createElement('p')

        recallingFirm.textContent = recall.recalling_firm
        recallDescription.textContent = recall.product_description

        recallList.appendChild(recallCard)
        recallCard.append(recallingFirm, recallDescription)
    })
}