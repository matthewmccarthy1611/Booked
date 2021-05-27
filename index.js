document.addEventListener("DOMContentLoaded", () => {
    getBooks();
})
function getBooks(){
    return fetch('http://localhost:3000/books')
        .then(resp => resp.json())
        .then(books => books.forEach(book => renderBooks(book)))
}

// getBooks().then(books => books.forEach(book => renderBooks(book)))

function renderBooks(book) {
    console.log(book)
    const booksContainer = document.getElementById('books-container')
    let h2 = document.createElement('h2')
    h2.innerText = book['title']

    let p = document.createElement('p')
    p.innerText = book['author']

    let divCard = document.createElement('div')
    divCard.setAttribute('class', 'card')

    divCard.append(h2, p)
    booksContainer.append(divCard)
}