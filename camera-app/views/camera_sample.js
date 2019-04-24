navigator.getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
window.URL = window.URL || window.webkitURL;

const video = document.getElementById('video');
const button = document.getElementById('start');
const stop = document.getElementById('stop');
const preview = document.getElementById('preview')
const screenshot = document.getElementById('screenshot');
const previewScreenshot = document.getElementById('previewScreenshot');
const audio = document.getElementById('audio');

//var stream = null;


window.onload = function(){
    app.camera.getDevices(function(devices1){
        app.microphone.getDevices(function(devices2){
            app.camera.init(video, {video: {deviceId : {exact : devices1[1]}}, audio: {deviceId:{exact:devices2[2]}}});
        })
    })
}

button.addEventListener('click', function(){
    app.camera.startRecording({mimeType: 'video/webm;codecs=vp9', bitsPerSecond: 100000});
//    app.microphone.getDevices(function(devices){
//        app.microphone.startRecording({audio:{deviceId:{exact: devices[1]}}});
//    });
//    app.microphone.startRecording();
})

stop.addEventListener('click', function(){
//    app.microphone.stopRecording();
//    app.microphone.previewRecording(audio, { type: 'audio/webm' });
//    app.microphone.saveRecording('/storage/emulated/0/', 'newAudio1.webm', { type: 'audio/webm' });
    app.camera.stopRecording();
    app.camera.previewRecording(preview, {type: 'video/webm'});
    app.camera.saveRecording('/storage/emulated/0/', 'newVideo1.webm', {type:'video/webm'})
//    app.microphone.stopRecording();
//    app.microphone.previewRecording();
})

const canvas = document.createElement('canvas');

//screenshot.addEventListener('click', function(){

//      app.camera.takePhoto(video, previewScreenshot);
//      app.camera.savePhoto('/storage/emulated/0/', 'test.webp');
//    canvas.width = video.videoWidth;
//    canvas.height = video.videoHeight;
//    canvas.getContext('2d').drawImage(video, 0, 0);
//    previewScreenshot.src = canvas.toDataURL('image/webp');


//})
//function gotDevices(mediaDevices) {
//  select.innerHTML = '';
//  select.appendChild(document.createElement('option'));
//  let count = 1;
//  mediaDevices.forEach(mediaDevice => {
//    if (mediaDevice.kind === 'videoinput') {
//      const option = document.createElement('option');
//      option.value = mediaDevice.deviceId;
//      const label = mediaDevice.label || `Camera ${count++}`;
//      const textNode = document.createTextNode(label);
//      option.appendChild(textNode);
//      select.appendChild(option);
//    }
//  });
//}
//
//function stopMediaTracks(stream) {
//  stream.getTracks().forEach(track => {
//    track.stop();
//  });
//}
//
//button.addEventListener('click', event => {
//  if (typeof window.stream !== 'undefined') {
//    stopMediaTracks(window.stream);
//  }
//  const videoConstraints = {};
//  if (select.value === '') {
//    videoConstraints.facingMode = {exact: 'environment'};
//  } else {
//    videoConstraints.deviceId = { exact: select.value };
//  }
//  const constraints = {
//    video: videoConstraints,
//    audio: false
//  };
//
//  navigator.mediaDevices
//    .getUserMedia(constraints)
//    .then(stream => {
//      window.stream = stream;
//      video.srcObject = stream;
//      return navigator.mediaDevices.enumerateDevices();
//    })
//    .then(gotDevices)
//    .catch(error => {
//      console.error(error);
//    });
//});
//
////window.onload = function(){
////      console.log(doc)
////      androidjs.camera.init(document.querySelector('#video'), {video:true, audio:false});
////    var video = document.querySelector('#video');
////    console.log(video);
////    //stream = null;
////
////    if (!navigator.getUserMedia) {
////        document.getElementById("error").innerHTML = "Your mobile is not supported";
////        console.error('getUserMedia not supported');
////    }
////    navigator.getUserMedia({ video: true , audio: false}, function (s) {
////        window.stream = s;
////        video.src = window.URL.createObjectURL(s);
////        console.log('Started');
////        document.getElementById("error").innerHTML = "Started";
////    }, function (error) {
////        document.getElementById("error").innerHTML = "Error Starting camera. Denied";
////        console.error('Error starting camera. Denied.');
////    });
////}
//
////var recordedChunks = []
////
////
////function startRecording() {
////
////  var options = {mimeType: 'video/webm;codecs=vp9', bitsPerSecond: 100000};
////  recorder = new MediaRecorder(window.stream, options);
////  recorder.ondataavailable = handleDataAvailable;
////  recorder.start();
////}
////
////function handleDataAvailable(event) {
////  if (event.data.size > 0) {
////    recordedChunks.push(event.data);
////  } else {
////    // ...
////  }
////}
////
////ul = document.getElementById('ul');
////preview = document.getElementById('preview')
////function stopRecording() {
//////  recorder.ondataavailable = e => {
//////    ul.style.display = 'block';
//////    var a = document.createElement('a'),
//////      li = document.createElement('li');
//////    a.download = ['video_', (new Date() + '').slice(4, 28), '.webm'].join('');
//////    a.href = URL.createObjectURL(e.data);
//////    preview.src = URL.createObjectURL(e.data);
//////    preview.play();
//////    a.textContent = a.download;
//////    li.appendChild(a);
//////    ul.appendChild(li);
//////  };
////  recorder.stop();
////  var superBuffer = new Blob(recordedChunks, {type: 'video/webm'});
////    preview.src = window.URL.createObjectURL(superBuffer);
////}
