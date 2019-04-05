const {back} = require('androidjs');
const http = require('http').createServer();
const io = require("socket.io")(http);
const publicIp = require('public-ip');
const ip_npm = require('ip');

var localtunnel = require('localtunnel');

var tunnel = localtunnel(3001, function(err, tunnel) {
    if (err) throw err;
    console.log(tunnel.url);
    ip = tunnel.url;
});

tunnel.on('close', function() {
    console.log('tunnel, closed');
});



http.listen(3001);


let ip = undefined;
ip = ip_npm.address();
// (async () => {
//     ip = await publicIp.v4();
// })();

// MY CHAT APP
back.on('get-ip', function () {
    console.log('ip request');
    return ip;
});


io.on('connection', function (socket) {
    console.log('a user2 connected');

    socket.emit('hide-modal');
    front.send('hide-modal');

    socket.on('msg', (text) => {
        console.log('msg from second user', text);
        back.send('msg', text);
    });

    back.on('msg', (text)=>{
        socket.emit('msg', text);
    });

    socket.on('disconnect', function () {
        console.log('user2 disconnected');
        front.send('open-modal');
    });
});