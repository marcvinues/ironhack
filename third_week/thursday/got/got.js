var fs = require('fs');

function fileActions(err, file){
    var episodeArray = [];
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    var sorted_episodes = [];
    for(var e in episodes){
        var n = episodes[e].episode_number;
        sorted_episodes[n] = episodes[e];
    }
    // filter_episodes(sorted_episodes);
    var filtred = sorted_episodes.filter(filter_episodes);
    print(filtred);
}

function print(sorted_episodes){
     for (var i in sorted_episodes){
         var ratings = sorted_episodes[i].rating;
         var stars = "*".repeat(Math.round(ratings));

         console.log("Title: " + sorted_episodes[i].title + " - Episode :#"+ sorted_episodes[i].episode_number +"\nDescription: " + sorted_episodes[i].description + "\nRating: " + sorted_episodes[i].rating + " "+stars);
    }
}
function filter_episodes(sorted_episodes){
    return sorted_episodes.rating >= 8.8;
}

fs.readFile("./gotepisodes.json", 'utf8', fileActions);
