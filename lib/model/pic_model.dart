class Pic_Model{
  String ?img;

  String ?time;

  String ?name;

  String ?date;

  String ?chip_title;
 
 Pic_Model({
  this.img,
  this.time,
  this.name,
  this.date,
  this.chip_title
 });

}

class Pic_Model2{
  String ? img;
  Pic_Model2({
    this.img
  });
}

List <Pic_Model> pic_list=[

  Pic_Model(name: "Michale Simpson",chip_title: "Join the call", time: "8.30 AM",date: "Dec:7", img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg" ),
  Pic_Model(name: "Cat Brown",chip_title: "waiting for Call",  time: "8.30 AM",date:"Dec:8",img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg" ),
  Pic_Model( name: "Michale Simpson",chip_title: "waiting for call", time: "8.30 AM",date:"Dec:8",img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg" ),
];

List<Pic_Model2> pic_list2=[

  Pic_Model2(img:"https://cdn.pixabay.com/photo/2014/03/25/17/00/plus-297823_1280.png"),
  Pic_Model2(img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg"),
  Pic_Model2(img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg"),
  Pic_Model2(img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg"),
  Pic_Model2(img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg"),
  Pic_Model2(img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg"),
  Pic_Model2(img:"https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg"),
];