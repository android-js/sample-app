var mp3Duration = require('mp3-duration');
var convert = require('convert-seconds');
const path = require('path');
const fs = require('fs');

const {back} = require('androidjs');


// let __dir = '/media/devesh/Data/Songs/';
let __dir = undefined;


async function buildList() {

    const items = fs.readdirSync(__dir);

    for (let i = 0; i < items.length; i++) {

        let item = {
            track: undefined,
            name: undefined,
            duration: undefined,
            file: undefined
        };

        item.track = i;
        item.name = items[i];
        item.duration = undefined;
        item.file = 'file://' + path.join(__dir, items[i]);


        if (path.parse(items[i]).ext === '.mp3') {
            mp3Duration(path.join(__dir, items[i]), function (err, duration) {
                if (err) return console.log(err.message);
                let t = convert(duration);
                item.duration = t.hours + ':' + t.minutes + ':' + t.seconds;
                console.log(item);
                back.send('playListSong', item);
            });
        }
    }
}

back.on('getList', (dir) => {
    __dir = dir;
    buildList();
});
