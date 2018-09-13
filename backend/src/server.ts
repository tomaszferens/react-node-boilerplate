import express from 'express'

const app = express()
const port = process.env.PORT || 8000

app.listen(port, () => {
    // tslint:disable-next-line
    console.log(`Listening at http://localhost:${port}/`)
})
