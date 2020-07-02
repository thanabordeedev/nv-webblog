let express= require('express')

const app= express()

app.get('/hello/:person', function(req,res) {
    console.log('hello -'+ req.params.person)
    res.send('sey hello with '+ req.params.person)
})

let port = 8081
app.listen(port, function() {
    console.log('server running on '+ port)
})