const searchParams = new URLSearchParams(window.location.search)
const recallNumber = searchParams.get('recall_number')

fetch(`http://localhost:3000/recall_number?recall_number=${recallNumber}`)
    .then(response => response.json())
    .then(handleRecall)

const recallList = document.querySelector('#recall')

function handleRecall(recalls) {
    recalls.forEach(recall => {
        const recallCard = document.createElement('div')
        const recallingID = document.createElement('h3')
        const recallReportDate = document.createElement('p')
        const recallPostalCode = document.createElement('p')
        const classification  = document.createElement('p')
        const centerClassificationDate  = document.createElement('p')
        const terminationDate  = document.createElement('p')
        const recallInitiationDate  = document.createElement('p')
        const numberRecall = document.createElement('p')
        const city = document.createElement('p')
        const moreCodeInfo = document.createElement('p')
        const eventId = document.createElement('p')
        const distributionPattern = document.createElement('p')
        const openFda = document.createElement('p')
        const recallingFirm  = document.createElement('p')
        const voluntaryMandated = document.createElement('p')
        const state = document.createElement('p')
        const reasonForRecall = document.createElement('p')
        const initialFirmNotification = document.createElement('p')
        const status = document.createElement('p')
        const productType = document.createElement('p')
        const country = document.createElement('p')
        const productDescription = document.createElement('p')
        const codeInfo = document.createElement('p')
        const address1 = document.createElement('p')
        const address2 = document.createElement('p')
        const productQuantity = document.createElement('p')

        recallingID.textContent = recall.id
        recallReportDate.textContent = recall.reason_for_recall
        recallPostalCode.textContent = recall.product_description
        classification.textContent = recall.classification
        centerClassificationDate.textContent = recall.center_classification_date
        terminationDate.textContent = recall.termination_date
        recallInitiationDate.textContent = recall.recall_initiation_date
        numberRecall.textContent = recall.recall_number
        city.textContent = recall.city
        moreCodeInfo.textContent = recall.more_code_info
        eventId.textContent = recall.event_id
        distributionPattern.textContent = recall.distribution_pattern
        openFda.textContent = recall.open_fda
        recallingFirm.textContent = recall.recalling_firm
        voluntaryMandated.textContent = recall.voluntary_mandated
        state.textContent = recall.state
        reasonForRecall.textContent = recall.reason_for_recall
        initialFirmNotification.textContent = recall.initial_firm_notification
        status.textContent = recall.status
        productType.textContent = recall.produc_type
        country.textContent = recall.country
        productDescription.textContent = recall.product_description
        codeInfo.textContent = recall.code_info
        address1.textContent = recall.address_1
        address2.textContent = recall.address_2
        productQuantity.textContent = recall.product_quantity

        recallList.appendChild(recallCard)
        recallCard.append(recallingID, recallReportDate, recallPostalCode, recallPostalCode, classification, centerClassificationDate, terminationDate, recallInitiationDate, numberRecall, city, moreCodeInfo, eventId, distributionPattern, openFda, recallingFirm, voluntaryMandated, state, reasonForRecall, initialFirmNotification, status, productType, country, productDescription, codeInfo, address1, address2, productQuantity)
    })
}