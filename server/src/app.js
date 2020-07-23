let express= require('express')
let bodyParser= require('body-parser')
let cors = require('cors')
const {sequelize} = require('./models')

const config = require('./config/config')

const app= express()

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({extended:true}))
app.use(cors())

require('./routes')(app)

let port = process.env.PORT || config.port

sequelize.sync({force: false}).then(() => {
    app.listen(port, function () {
        console.log('Server running on ' + port)
    })
})

app.get('/status', function(req, res){
    res.send('Hello nodejs server')
})

app.post('/hello', function (req, res) {
    res.send('OK you post - ' + req.body.name)
})

app.get('/hello/:person', function(req,res) {
    console.log('hello -'+ req.params.person)
    res.send('sey hello with '+ req.params.person)
})

// get user by id
app.get('/user/:userId', function(req, res) {
    res.send('ดูข้อมูลผู้ใช้งาน: ' + req.params.userId)
})

// get all user
app.get('/users', function(req, res) {
    res.send('เรียกข้อมูลผู้ใช้งานทั้งหมด')
})

// get lastest user
app.get('/userlastest', function(req, res) {
    res.send('เรียกข้อมูลผู้ใช้งานลำดับสุดท้าย ' + JSON.stringify(req.body))
})

// create user
app.post('/user/', function(req, res) {
    res.send('ทําการสร้างผู้ใช้งาน: '+ JSON.stringify(req.body)
    )
})

// edit user
app.put('/user/:userId', function(req, res) {
    res.send('ทําการแก้ไขผุ้ใช้งาน: '+ req.params.userId+ ' : '+JSON.stringify(req.body))
})

// delete user
app.delete('/user/:userId', function(req, res) {
    res.send('ทําการลบผุ้ใช้งาน: '+ req.params.userId+ ' : '+ JSON.stringify(req.body))
})

