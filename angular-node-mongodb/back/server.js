// express 라이브러리 사용( node js에서 서버를 쉽게 구성할 수 있게 하는 라이브러리)
const express = require('express');
const app = express();
// 서버생성코드
const http = require('http');
const server = http.createServer(app);
// fs 모듈 file system으로 파일 처리와 관련된 전반적인 작업을 하는 코드
// path 모듈 파일 경로와 관련된 모듈이다. 
const fs = require('fs');
const path = require('path');
// cors 이슈 해결에 필요
const cors = require('cors');
// 몽구스 몽고 db모듈
const mongoose = require('mongoose');

//데이터 스키마
const User = require('./models/signup');

// mongoDB주소
const db_url = 'mongodb://localhost:27017/login?w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&directConnection=true&ssl=false';
//서버포트
const port = 3000;

//미들웨어(정적파일처리)
app.use(express.static(path.join(__dirname + '/public')));
//json파일 미들웨어
app.use(express.urlencoded({ extended: true}));
app.use(express.json());
// cors 이슈 해결하는데 필요한 미들웨어
app.use(cors());

// app.post에 로그를 주석처리한다. 그리고 User객체에 req.body를 넣어주고 signupUser에 저장한다. 그리고 save가 성공적으로 되면 res.send로 result: ‘done’을 보낸다
app.post('/api/post/signup', (req,res)=>{
    // console.log(req.body);
    const signupUser = new User({
        id : req.body.id,
        password : req.body.password,
        name : req.body.name,
        email : req.body.email,
    })
    signupUser.save().then((login) => {
        res.send({
            result: 'done'
        })
    })
    .catch((err) => {
        res.status(500).send(
            err
        );
    });
})


// 몽고 db실행
// db.url, {}는 옵션이다. {}안에 옵션을 이용해 버전 오류를 없앤다.
mongoose
.connect(db_url,{ useNewUrlParser: true, useUnifiedTopology: true, useFindAndModify:false })
.then(() => console.log('Successfully connected to mongodb'))
.catch(e => console.error(e));

// 서버실행4
server.listen(port, ()=>{
    console.log(`Server is running ${port}`);
})

