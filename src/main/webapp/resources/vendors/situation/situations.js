var vm = new Vue({
    el: "#missileData",
    data: {
        armyBaseWithMissile: [],
        enemyBaseWithMissile: [],
    },
    mounted: function () {
        this.$nextTick(function () {
        })
        this.getmessileData();
    },
    methods: {
        getmessileData: function () {
            var _this = this;
            $.get("http://192.168.1.102:8080/Situation7/5", function (data) {
                _this.armyBaseWithMissile = data.armyBaseWithMissile;
                _this.enemyBaseWithMissile = data.enemyBaseWithMissile;
                !function () {
                    var infoWindow, map, level = 5,
                        center = {lng: 112.71997, lat: 39.433821},
                        features = [{
                            type: "Marker",
                            name: "敌方",
                            desc: "阵营1",
                            color: "red",
                            icon: "cir",
                            offset: {x: -9, y: -31},
                            lnglat: {lng: _this.enemyBaseWithMissile[0].l, lat: _this.enemyBaseWithMissile[0].b}
                        },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营2",
                                color: "red",
                                icon: "cir",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.enemyBaseWithMissile[1].l, lat: _this.enemyBaseWithMissile[1].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营3",
                                color: "red",
                                icon: "cir",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.enemyBaseWithMissile[2].l, lat: _this.enemyBaseWithMissile[2].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营4",
                                color: "red",
                                icon: "cir",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.enemyBaseWithMissile[3].l, lat: _this.enemyBaseWithMissile[3].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营5",
                                color: "red",
                                icon: "cir",
                                offset: {x: -12, y: -26},
                                lnglat: {lng: _this.enemyBaseWithMissile[4].l, lat: _this.enemyBaseWithMissile[4].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营6",
                                color: "red",
                                icon: "cir",
                                offset: {x: -12, y: -26},
                                lnglat: {lng: _this.enemyBaseWithMissile[5].l, lat: _this.enemyBaseWithMissile[5].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营7",
                                color: "red",
                                icon: "cir",
                                offset: {x: -12, y: -26},
                                lnglat: {lng: _this.enemyBaseWithMissile[6].l, lat: _this.enemyBaseWithMissile[6].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营8",
                                color: "red",
                                icon: "cir",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.enemyBaseWithMissile[7].l, lat: _this.enemyBaseWithMissile[7].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营9",
                                color: "red",
                                icon: "cir",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.enemyBaseWithMissile[8].b, lat: _this.enemyBaseWithMissile[8].b}
                            },
                            {
                                type: "Marker",
                                name: "敌方",
                                desc: "阵营10",
                                color: "red",
                                icon: "cir",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.enemyBaseWithMissile[9].l, lat: _this.enemyBaseWithMissile[9].b}
                            },

                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营1",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[0].l, lat: _this.armyBaseWithMissile[0].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营2",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[1].l, lat: _this.armyBaseWithMissile[1].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营3",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[2].l, lat: _this.armyBaseWithMissile[2].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营4",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[3].l, lat: _this.armyBaseWithMissile[3].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营5",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -12, y: -26},
                                lnglat: {lng: _this.armyBaseWithMissile[4].l, lat: _this.armyBaseWithMissile[4].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营6",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -12, y: -26},
                                lnglat: {lng: _this.armyBaseWithMissile[5].l, lat: _this.armyBaseWithMissile[5].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营7",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -12, y: -26},
                                lnglat: {lng: _this.armyBaseWithMissile[6].l, lat: _this.armyBaseWithMissile[6].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营8",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[7].l, lat: _this.armyBaseWithMissile[7].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营9",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[8].l, lat: _this.armyBaseWithMissile[8].b}
                            },
                            {
                                type: "Marker",
                                name: "我方",
                                desc: "阵营10",
                                color: "blue",
                                icon: "flg",
                                offset: {x: -9, y: -31},
                                lnglat: {lng: _this.armyBaseWithMissile[9].l, lat: _this.armyBaseWithMissile[9].b}
                            }];

                    function loadFeatures() {
                        for (var feature, data, i = 0, len = features.length, j, jl, path; i < len; i++) {
                            data = features[i];
                            switch (data.type) {
                                case "Marker":
                                    feature = new AMap.Marker({
                                        map: map,
                                        position: new AMap.LngLat(data.lnglat.lng, data.lnglat.lat),
                                        zIndex: 3,
                                        extData: data,
                                        offset: new AMap.Pixel(data.offset.x, data.offset.y),
                                        title: data.name,
                                        content: '<div class="icon icon-' + data.icon + ' icon-' + data.icon + '-' + data.color + '"></div>'
                                    });
                                    break;
                                case "Polyline":
                                    for (j = 0, jl = data.lnglat.length, path = []; j < jl; j++) {
                                        path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                                    }
                                    feature = new AMap.Polyline({
                                        map: map,
                                        path: path,
                                        extData: data,
                                        zIndex: 2,
                                        strokeWeight: data.strokeWeight,
                                        strokeColor: data.strokeColor,
                                        strokeOpacity: data.strokeOpacity
                                    });
                                    break;
                                case "Polygon":
                                    for (j = 0, jl = data.lnglat.length, path = []; j < jl; j++) {
                                        path.push(new AMap.LngLat(data.lnglat[j].lng, data.lnglat[j].lat));
                                    }
                                    feature = new AMap.Polygon({
                                        map: map,
                                        path: path,
                                        extData: data,
                                        zIndex: 1,
                                        strokeWeight: data.strokeWeight,
                                        strokeColor: data.strokeColor,
                                        strokeOpacity: data.strokeOpacity,
                                        fillColor: data.fillColor,
                                        fillOpacity: data.fillOpacity
                                    });
                                    break;
                                default:
                                    feature = null;
                            }
                            if (feature) {
                                AMap.event.addListener(feature, "click", mapFeatureClick);
                            }
                        }
                    }

                    function mapFeatureClick(e) {
                        if (!infoWindow) {
                            infoWindow = new AMap.InfoWindow({autoMove: true});
                        }
                        var extData = e.target.getExtData();
                        infoWindow.setContent("<h5>" + extData.name + "</h5><div>" + extData.desc + "</div>");
                        infoWindow.open(map, e.lnglat);
                    }

                    map = new AMap.Map("mapContainer", {center: new AMap.LngLat(center.lng, center.lat), level: level});
                    new AMap.TileLayer.Satellite({map: map, zIndex: 1});
                    loadFeatures();

                    map.on('complete', function () {
                        map.plugin(["AMap.ToolBar", "AMap.OverView", "AMap.Scale"], function () {
                            map.addControl(new AMap.ToolBar);
                            map.addControl(new AMap.OverView({isOpen: true}));
                            map.addControl(new AMap.Scale);
                        });
                    })
                }();


            })
        },
    },
});
/*
 var army = [{l:"",b:""}];
 var enarmy = [{l:"",b:""}];

 for (var i = 0 ;i < 10; i++) {
 army[i].l = vm.armyBaseWithMissile[i].l;
 army[i].b = vm.armyBaseWithMissile[i].b;
 enarmy[i].l = vm.enemyBaseWithMissile[i].l;
 enarmy[i].b = vm.enemyBaseWithMissile[i].b;
 console.log(army[i].l)
 }*/






