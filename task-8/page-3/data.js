
function getRandomJson() {
    var cdata = [{
        "_id": "585b544f5c86b6c8537c34d6",
        "pizza": "Pepperoni",
        "sold": Math.floor(Math.random() * (100 - 20 + 1)) + 20,
    }, {/* w w  w . d  em o  2s .c o m*/
        "_id": "585b54505c86b6c8537c34d7",
        "pizza": "Farmhouse",
        "sold": Math.floor(Math.random() * (80 - 1 + 1)) + 1,
    }, {
        "_id": "585b54515c86b6c8537c34d8",
        "pizza": "Veggie Paradise",
        "sold": Math.floor(Math.random() * (90 - 20 + 1)) + 20,
    }, {
        "_id": "585b54525c86b6c8537c34d9",
        "pizza": "Peppy Panner",
        "sold": Math.floor(Math.random() * (50 - 40 + 1)) + 40,
    }, {
        "_id": "585b54535c86b6c8537c34da",
        "pizza": "VEGGIE PARADISE",
        "sold": Math.floor(Math.random() * (85 - 20 + 1)) + 20,
    }];
    return cdata;
}

const jsonData = getRandomJson();
const barColors =["red", "green", "blue", "yellow", "white"];
const xaxs = [];
const stats = [];
for (const data of pizza_data) {
    xaxs.push(data.pizza);
    stats.push(data.sold);
}

const myChart = new Chart("myChart", {type: "bar",
  data: {
    labels: xaxs,
    datasets: [{backgroundColor: barColors,data: stats,},],},
  options: {
    title: {display: true,text: "Pizza Sales on any Random Day",},},
});