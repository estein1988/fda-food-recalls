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

let states = ["AL", "AK"]

function populateStates(states) {
    states.forEach(state => {
        const stateName = document.createElement('li')
        stateName.innerHTML = `<a href='show.html?state=${state}'>${state}</a>`
        console.log(stateName)
        mainList.appendChild(stateName)
    })
    }

populateStates(states)