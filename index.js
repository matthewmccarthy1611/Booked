document.addEventListener("DOMContentLoaded", () => {
    getBooks();
})

// document.getElementById('new-book-btn').addEventListener("click", () => {
//     addBook = !addBook
//     if (addBook){
//         addBookForm.style.display = 'block'
//     }
// })

function getBooks(){
    return fetch('http://localhost:3000/books')
        .then(resp => resp.json())
        .then(books => books.slice(1).forEach(book => renderBooks(book)))
}

// function postBook(new_book){
//     fetch('http://localhost:3000/books', {
//         method: 'POST',
//         headers: {
//             'Content-Type': 'application/json',
//             'Accept': "application/json"
//         },
//         body: JSON.stringify({
//             "title": new_book.title.value,
//             "author": new_book.author.value,
//             "page_count": new_book.author.value,
//             "img": new_book.img.value
//         })
//         })
//     .then(res => res.json())
//     .then((book) => {
//     renderBooks(book)
//     })
// }

function renderBooks(book) {
    console.log(book)
    const booksContainer = document.getElementById('books-container')
    let h2 = document.createElement('h2')
    h2.innerText = book['title']

    let p = document.createElement('p')
    p.innerText = book['author']

    let img = document.createElement('img')

    if(book['img'] != ""){
        img.setAttribute('src', book['img'])
        img.setAttribute('class', 'book-image')
    }

    let divCard = document.createElement('div')
    divCard.setAttribute('class', 'card')

    divCard.append(h2, p, img)
    booksContainer.append(divCard)
}

function googleBooksSearch(titleSearch) {
    return fetch(`https://www.googleapis.com/books/v1/volumes?q=${search}&key=AIzaSyBVOEuQ0f8FopsXl0HthBSJ1GIBIbI0C2Y`)
        .then(response => response.json())
        .then(books => renderBooks(books))
}

const titleSearch = document.querySelector('.search-box')
let filteredTitles = []

titleSearch.addEventListener('input', e => {
    e.preventDefault()
    const input = e.target.value.toLowerCase()
    let searchResult = filteredTitles.filter( filteredTitle => {
        return filteredTitle.name.toLowerCase().includes(input)
    })

    renderBooks(searchResult)
})