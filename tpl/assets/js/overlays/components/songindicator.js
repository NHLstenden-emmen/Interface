const thumbPath = "./tpl/assets/images/countdown/thumbs/";
const thumbFormat = ".png";

class SongIndicator {
    constructor() {
        let songIndicator = document.createElement('div');
        songIndicator.classList.add('closed');
        songIndicator.setAttribute('id', 'songIndicator');
        songIndicator.innerHTML = `
                <svg version="1.1" viewBox="3.25 8 50 10.5">
                    <g transform="translate(0 -270.5)">
                        <g stroke-linecap="round">
                            <g stroke-linejoin="round" style="overflow:hidden;">
                                <clipPath id="playcaseClip">
                                    <rect x="15" y="278.5" width="100" height="25"/>
                                </clipPath>
                                <g id="clipped" clip-path="url(#playcaseClip)">
                                    <g id="right-wing">
                                        <defs>
                                            <linearGradient id="grad" x1="0%" y1="0%" x2="100%" y2="0%">
                                              <stop class="playcase-stop" offset="0%" />
                                              <stop class="playcase-stop" offset="15%" style="stop-opacity:0" />
                                              <stop class="playcase-stop" offset="85%" style="stop-opacity:0" />
                                              <stop class="playcase-stop" offset="100%" />
                                            </linearGradient>
                                        </defs>
                                        <rect class="playcase" x="-13" y="279.41" width="31" height="8.7035"/>
                                        <image id="art" x="-10" y="279.41" width="8.7035" height="8.7035" preserveAspectRatio="xMidYMid slice"/>
                                        <rect x="-10.1" y="279.41" width="8.9035" height="8.7035" fill="url(#grad)"/>
                                        <path class="playcase"  d="m17.836 279.42 4.4387 4.3907-4.4107 4.3128"/>
                                        <clipPath id="textClip">
                                            <path d="m17.836 279.42 4.4387 4.3907-4.4107 4.3128 -20 0 0 -8.7035"/>
                                        </clipPath>
                                        <g clip-path="url(#textClip)">
                                            <text id="title" x="-1" y="283.5"/>
                                            <text id="artist" x="-1" y="285.5"/>
                                        </g>
                                        <path d="m17.836 279.42 4.4387 4.3907-4.4107 4.3128" stroke="#341963" stroke-width="1.753" fill="none"/>
                                    </g>
                                </g>
                                    <path d="m8.8509 279.41-4.6672 4.2634 4.4805 4.4496" fill="none" stroke="#341963" stroke-width="1.753"/>
                                    <path d="m5.9221 283.69 4.4805 4.4496c1.9347-0.28567 3.9323-0.33321 5.867-0.0315l4.4107-4.3128-4.4387-4.3907c-1.8111 0.31945-3.9509 0.40781-5.6522 0.022z" fill="#5f3fa2" stroke="#5f3fa2" stroke-width="1.7043"/>
                            </g>
                                <path d="m10.898 283.76h5.3267" fill="none" stroke="#fff" stroke-width="4.3485"/>
                        </g>
                    </g>
                    <circle id="left-eye" cx="10.91" cy="13.229" r=".7269" fill="#281552" style="paint-order:stroke fill markers"/>
                    <circle id="right-eye" cx="16.177" cy="13.229" r=".7269" fill="#281552" style="paint-order:stroke fill markers"/>
                </svg>
            `;
        document.body.appendChild(songIndicator);

        this.songIndicator = songIndicator;
        this.art = songIndicator.querySelector('#art');
        this.song = songIndicator.querySelector('#title');
        this.artist = songIndicator.querySelector('#artist');
        this.wing = songIndicator.querySelector('#right-wing');
    }

    showNewSong(song) {
        this.close();
        setTimeout(() => { this.updateSongData(song) }, 1500);
        setTimeout(() => { this.open() }, 3000);
    }

    close() {
        this.songIndicator.classList.add('closed');
    }

    updateSongData(song) {
        this.song.innerHTML = song.Title;
        this.artist.innerHTML = song.Artist;
        this.art.setAttribute("href", thumbPath + song.SongID + thumbFormat);
        //this.setAverageColor(this.wing,thumbPath + song.SongID + thumbFormat);
    }

    open() {
        this.songIndicator.classList.remove('closed');
    }

    setAverageColor(element, url) {
        let img = new Image();
        img.src = url;
        img.onload = () => {
            console.log("thumb loaded");
            let cnvs = document.createElement('canvas'), ctx = cnvs.getContext('2d');
            cnvs.width = img.width;
            cnvs.height = img.height;
            ctx.drawImage(img, 0, 0, img.width, img.height);
            let imgData = ctx.getImageData(0, 0, img.width, img.height).data;
            const data_length = imgData.length / 4;
            let pixel_count = 0, rgb_sums = [0, 0, 0];
            for (let j = 0; j < data_length; j += 4) {
                rgb_sums[0] += imgData[j * 4];
                rgb_sums[1] += imgData[j * 4 + 1];
                rgb_sums[2] += imgData[j * 4 + 2];
                pixel_count++;
            }
            rgb_sums[0] = Math.floor(rgb_sums[0] / pixel_count);
            rgb_sums[1] = Math.floor(rgb_sums[1] / pixel_count);
            rgb_sums[2] = Math.floor(rgb_sums[2] / pixel_count);

            element.style.setProperty('--accentcolor', 'rgb(' + rgb_sums.join(',') + ')');

            rgb_sums = rgb_sums.map(sum => sum-127);
            if(rgb_sums.map(sum => sum < 0).includes(true)) {
                rgb_sums = rgb_sums.map(sum => sum+255);
            }
            element.style.setProperty('--overlaying-accentcolor', 'rgb(' + rgb_sums.join(',') + ')');
        }
        console.log(img);
    }
}