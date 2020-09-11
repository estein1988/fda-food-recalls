const searchParams = new URLSearchParams(window.location.search)
const recallNumber = searchParams.get('recall_id')

const recallId = document.querySelector('#recall')

fetch(`http://localhost:3000/recalls/${recallNumber}`)
    .then(response => response.json())
    .then(recall => {
        const recallCard = document.createElement('div')
        const recallingID = document.createElement('h3')
        const numberRecall = document.createElement('div')
        const eventId = document.createElement('div')
        const classification = document.createElement('div')
        const recallReportDate = document.createElement('div')
        const centerClassificationDate  = document.createElement('div')
        const terminationDate  = document.createElement('div')

        const companyData = document.createElement('h3')
        const recallingFirm  = document.createElement('div')
        const address = document.createElement('div')
        const voluntaryMandated = document.createElement('div')
        const initialFirmNotification = document.createElement('div')
        
        const productInformation = document.createElement('h3')
        const distributionPattern = document.createElement('div')
        const reasonForRecall = document.createElement('div')
        const productType = document.createElement('div')
        const productDescription = document.createElement('div')
        const codeInfo = document.createElement('div')
        const productQuantity = document.createElement('div')
        const status = document.createElement('div')

        recallingID.textContent = `Recall ID: ${recall.id}`
        numberRecall.textContent = `Recall Number: ${recall.recall_number}`
        eventId.textContent = `Event ID: ${recall.event_id}`
        classification.textContent = `Classification`
        recallReportDate.textContent = `Report Date: ${recall.report_date}`
        centerClassificationDate.textContent = `Center Classification Date: ${recall.center_classification_date}`
        terminationDate.textContent = `Termination Date: ${recall.termination_date}`
        companyData.textContent = `Company Information`
        recallingFirm.textContent = `Name: ${recall.recalling_firm}`
        address.textContent = `Address: ${recall.address_1} ${recall.address_2} ${recall.city}, ${recall.state} ${recall.postal_code}` 
        voluntaryMandated.textContent = recall.voluntary_mandated
        initialFirmNotification.textContent = `Initial firm notification ${recall.initial_firm_notification}`
        
        productInformation.textContent = `Product Information`       
        distributionPattern.textContent = `Distribution Pattern: ${recall.distribution_pattern}`
        reasonForRecall.textContent = `Reason for recall: ${recall.reason_for_recall}`
        productType.textContent = `Product Type: ${recall.product_type}`
        productDescription.textContent = `Product Description: ${recall.product_description}`
        codeInfo.textContent = `Product Code ${recall.code_info}`
        productQuantity.textContent = `Product Quantity: ${recall.product_quantity}`
        status.textContent = `Status: ${recall.status}`

        recallId.appendChild(recallCard)
        recallCard.append(recallingID, numberRecall, eventId, classification, recallReportDate, centerClassificationDate, terminationDate, companyData, recallingFirm, address, voluntaryMandated, initialFirmNotification, productInformation, distributionPattern, reasonForRecall, productType, productDescription, codeInfo, productQuantity, status)
    })