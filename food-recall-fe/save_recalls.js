fetch(`http://localhost:3000/users`)
    .then(response => response.json())
    .then(users => {
        const userList = document.querySelector('#username-list')
        users.map( user => {
            const userOption = document.createElement('li')
            userOption.innerHTML = `<a href='show_user.html?user_id=${user.id}'>${user.username}</a>`
            userList.appendChild(userOption)
        })
    })

