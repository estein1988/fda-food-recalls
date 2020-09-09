const searchParams = new URLSearchParams(window.location.search)
const user_id = searchParams.get('user_id')
fetch(`http://localhost:3000/save_recalls?user_id=${user_id}`)
    .then(response => response.json())
    .then(savedRecalls => {
        console.log(savedRecalls)
        const savedRecallsList = document.querySelector('#user-info')
        savedRecalls.forEach(savedRecall => {
            const recall = document.createElement('li')
            recall.textContent = savedRecall.recall_id
            savedRecallsList.appendChild(recall)
        })
    })

