const searchParams = new URLSearchParams(window.location.search)
const companies = searchParams.get('recalling_firm')

fetch(`http://localhost:3000/recalling_firm?recalling_firm=${companies}`)
    .then(response => response.json())
    .then(handleCompanies)

const recallList = document.querySelector('#companyList')

function handleCompanies(recalls) {
    recalls.forEach(recall => {
        const recallCard = document.createElement('div')
        const recallingFirm = document.createElement('h3')
        const recallDescription = document.createElement('p')
        const recallProductDescription = document.createElement('p')

        recallingFirm.innerHTML = `<a href='show_card.html?recall_number=${recall.recall_number}'>${recall.recall_number}</a>`
        recallDescription.textContent = recall.reason_for_recall
        recallProductDescription.textContent = recall.product_description

        recallList.appendChild(recallCard)
        recallCard.append(recallingFirm, recallDescription, recallProductDescription)
    })
}
