const searchParams = new URLSearchParams(window.location.search)
const user_id = searchParams.get('user_id')

fetch(`http://localhost:3000/users/${user_id}`)

    .then(response => response.json())
    .then(user => {
        user.save_recalls.map (save_recall => {
            console.log(save_recall)
        const userInfoList = document.querySelector('#user-info')
        const userInfo = document.createElement('li')
        userInfo.innerHTML = `<a href='recalls.html?recall_id=${save_recall.recall_id}'>${save_recall.recall_id}</a>`
        userInfoList.appendChild(userInfo)
        })
    })

    // 'http://localhost:3001/show_card.html?recall_number=F-2061-2014'
    // 'http://localhost:3001/show_card.html?recall_number=140073'