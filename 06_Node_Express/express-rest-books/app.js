const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')

const app = express()
const port = 3000

// Array för böcker
let books = []

app.use(cors());
app.use(express.static('public'))

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

app.post('/books', (req, res) => {
    const book = req.body

    console.log(book)
    books.push(book)

    res.send('Du har lagt till en bok.')
})

app.get('/books', (req, res) => {
    res.json(books)
})

app.get('/books/:isbn', (req, res) => {
    const isbn = req.params.isbn

    for (let book of books) {
        if (book.bokIsbn === isbn) {
            res.json(book)
            return
        }
    }
    res.status(404).send('Vi kan inte hitta boken med det ISBN-numret')
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))