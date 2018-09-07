var myChart = echarts.init(document.getElementById('main'));

var geoCoordMap = {
    '1base_0': [112.13039541423717, 41.086800413550378],
    '1base_1': [112.39844529660478, 36.700474186787787],
    '1base_2': [117.910088546946, 40.247265396041591],
    '1base_3': [108.79623449425317, 38.553297720401225],
    '1base_4': [103.19964187938167, 38.518472011132644],
    '1base_5': [105.26430875368148, 30.872636325460263],
    '1base_6': [124.12748478011511, 39.509346174191073],
    '1base_7': [130.03595061349387, 32.197883666568934],
    '1base_8': [110.8597113351978, 37.840329437635198],
    '1base_9': [120.67581989495554, 33.067290684310613],

    '2base_0': [105.52666056811864, 40.981144337632337],
    '2base_1': [88.35687043256182, 41.606441189779559],
    '2base_2': [84.679145219431931, 43.245772969533284],
    '2base_3': [95.481135995466673, 46.184568275829641],
    '2base_4': [80.36362428405215, 39.478457232754117],
    '2base_5': [74.413850942583778, 49.221026361716312],
    '2base_6': [79.899425459570068, 43.525867237380005],
    '2base_7': [94.538396084001945, 44.122091668818385],
    '2base_8': [87.882145866097986, 40.621334226855829],
    '2base_9': [71.548083242725895, 42.843024307757716]
};

// 我方
var BJData = [
    [{name: '1base_0'}, {name: '2base_9', value: 95}],
    [{name: '1base_0'}, {name: '2base_9', value: 90}],
    [{name: '1base_0'}, {name: '2base_9', value: 80}],
    [{name: '1base_0'}, {name: '2base_9', value: 70}]
];

// 敌方
var SHData = [
    [{name: '2base_9'}, {name: '1base_1', value: 60}],
    [{name: '2base_5'}, {name: '1base_1', value: 50}],
    [{name: '2base_5'}, {name: '1base_1', value: 40}],
    [{name: '2base_5'}, {name: '1base_1', value: 30}]
];

// 被拦截
var GZData = [
    [{name: '1base_2'}, {name: '2base_6', value: 20}],
    [{name: '1base_2'}, {name: '2base_6', value: 10}],
    [{name: '1base_2'}, {name: '2base_6', value: 10}],
    [{name: '1base_2'}, {name: '2base_6', value: 10}]
];


// var planePath = 'path://M1705.06,1318.313v-89.254l-319.9-221.799l0.073-208.063c0.521-84.662-26.629-121.796-63.961-121.491c-37.332-0.305-64.482,36.829-63.961,121.491l0.073,208.063l-319.9,221.799v89.254l330.343-157.288l12.238,241.308l-134.449,92.931l0.531,42.034l175.125-42.917l175.125,42.917l0.531-42.034l-134.449-92.931l12.238-241.308L1705.06,1318.313z';
var planePath = 'arrow';

var convertData = function (data) {
    var res = [];
    for (var i = 0; i < data.length; i++) {
        var dataItem = data[i];
        var fromCoord = geoCoordMap[dataItem[0].name];
        var toCoord = geoCoordMap[dataItem[1].name];
        if (fromCoord && toCoord) {
            res.push({
                fromName: dataItem[0].name,
                toName: dataItem[1].name,
                coords: [fromCoord, toCoord]
            });
        }
    }
    return res;
};

// 导弹颜色
var color = ['#c80f0f', '#1c52ff', '#49e936'];
var series = [];
[['我方', BJData], ['敌方', SHData], ['被拦截', GZData]].forEach(function (item, i) {
    series.push({
            name: item[0] + ' Top10',
            type: 'lines',
            coordinateSystem: 'bmap',
            zlevel: 1,
            effect: {
                show: true,
                period: 6,
                trailLength: 0.7,
                color: '#fff',
                symbolSize: 3
            },
            lineStyle: {
                normal: {
                    color: color[i],
                    width: 0,
                    curveness: 0.2
                }
            },
            data: convertData(item[1])
        },

        {
            name: item[0] + ' Top10',
            type: 'lines',
            coordinateSystem: 'bmap',
            zlevel: 2,
            effect: {
                show: true,
                period: 6,
                trailLength: 0,
                // 飞行器图标
                symbol: planePath,
                symbolSize: 15
            },
            lineStyle: {
                normal: {
                    color: color[i],
                    width: 1,
                    opacity: 0.4,
                    curveness: 0.2
                }
            },
            data: convertData(item[1])
        },
        {
            name: item[0] + ' Top10',
            type: 'effectScatter',
            coordinateSystem: 'bmap',
            zlevel: 2,
            rippleEffect: {
                brushType: 'stroke'
            },
            label: {
                normal: {
                    show: true,
                    position: 'right',
                    formatter: '{b}'
                }
            },
            symbolSize: function (val) {
                return val[2] / 8;
            },
            itemStyle: {
                normal: {
                    color: color[i]
                }
            },
            data: item[1].map(function (dataItem) {
                return {
                    name: dataItem[1].name,
                    value: geoCoordMap[dataItem[1].name].concat([dataItem[1].value])
                };
            })
        });
});

option = {
    backgroundColor: '#404a59',
    title: {
        text: '模拟打击',
        // subtext: '数据纯属虚构',
        left: 'center',
        textStyle: {
            color: '#08090b'
        }
    },
    tooltip: {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        top: 'top',
        left: 'right',
        // data: ['battle1 Top10', 'battle2 Top10', 'battle3 Top10'],
        data: ['a Top10', 'b Top10', 'c Top10'],
        textStyle: {
            color: '#08090b'
        },
        selectedMode: 'single'
    },
    dataRange: {
        min: 0,
        max: 100,
        x: 'right',
        calculable: true,
        color: ['#ff3333', 'orange', 'yellow', 'lime', 'aqua'],
        textStyle: {
            color: '#fff'
        }
    },

    // 百度地图
    bmap: {
        mapType: BMAP_HYBRID_MAP,
        center: [115.97, 29.71],
        zoom: 5,
        roam: true,
        addControl: true
    },

    // geo: {
    //     map: 'world',
    //     center: [115.97, 29.71],
    //     zoom: 5,
    //     label: {
    //         emphasis: {
    //             show: false
    //         }
    //     },
    //     roam: true,
    //     itemStyle: {
    //         normal: {
    //             areaColor: '#323c48',
    //             borderColor: '#404a59'
    //         },
    //         emphasis: {
    //             areaColor: '#2a333d'
    //         }
    //     }
    // },

    series: series
};


myChart.setOption(option);