document.addEventListener("DOMContentLoaded", () => {
    renderBooks;
})

let getBooks = () => {
    return fetch('https://localhost:3000/books')
        .then(resp => resp.json())
        .then(books => {
            books.map(book => renderBooks(book))
        })
}

let renderBooks = (book) => {
    
}