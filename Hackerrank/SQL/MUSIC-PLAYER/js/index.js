const songs = [
  {
    title: "Peaceful Morning",
    artist: "Acoustic Session",
    src: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
  },
  {
    title: "Evening Breeze",
    artist: "Calm Strings",
    src: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-2.mp3"
  }
];

let current = 0;
let playing = false;

const audio = document.getElementById("audio");
const title = document.getElementById("title");
const artist = document.getElementById("artist");
const playBtn = document.getElementById("playBtn");
const progress = document.getElementById("progress");
const queueList = document.getElementById("queueList");

songs.forEach((s, i) => {
  const li = document.createElement("li");
  li.textContent = s.title;
  li.onclick = () => playFromCard(i);
  queueList.appendChild(li);
});

function loadSong(i) {
  audio.src = songs[i].src;
  title.textContent = songs[i].title;
  artist.textContent = songs[i].artist;
}

loadSong(current);

function togglePlay() {
  playing ? audio.pause() : audio.play();
}

audio.onplay = () => {
  playing = true;
  playBtn.textContent = "⏸";
};

audio.onpause = () => {
  playing = false;
  playBtn.textContent = "▶";
};

function nextSong() {
  current = (current + 1) % songs.length;
  loadSong(current);
  audio.play();
}

function prevSong() {
  current = (current - 1 + songs.length) % songs.length;
  loadSong(current);
  audio.play();
}

function playFromCard(i) {
  current = i;
  loadSong(current);
  audio.play();
}

audio.ontimeupdate = () => {
  progress.value = (audio.currentTime / audio.duration) * 100 || 0;
};

progress.oninput = () => {
  audio.currentTime = (progress.value / 100) * audio.duration;
};

function volumeUp() {
  audio.volume = Math.min(1, audio.volume + 0.1);
}

function volumeDown() {
  audio.volume = Math.max(0, audio.volume - 0.1);
}
