import 'package:flutter/material.dart';

class Ice {
  int iceId;
  String iceName;
  int icePrice;
  String iceDescriptions;
  String iceImage;
  String iceBrand;
  Color iceColor;

  Ice(
      {required this.iceId,
        required this.iceName,
        required this.iceDescriptions,
        required this.iceBrand,
        required this.iceImage,
        required this.icePrice,
        required this.iceColor
       });
}

var iceList = [
  Ice(
      iceId: 1,
      iceName: 'Rainbow',
      icePrice: 3550,
      iceDescriptions:
      'The Cascade 4 was created to be versatile bikes for riders who are looking for a bike to commute to work during the weekdays, and planning to go for recreational riding on the weekends. The Cascade is built with a lightweight and durable AL6 frame with modern geometry for a more comfortable ride. The component spec includes: 27.5” wheels for less rolling resistance, a 100mm travel suspension fork to smooth out the bumps while riding down fire roads, and disc brakes to keep riders in control. The new Cascade 4 is a reliable companion for day-to-day use and sport.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/max_paddle_pop/indonesia/static_not_in-use_products_/paddle_pop-rainbow-1759802-png.png.ulenscale.450x450.png',
      iceBrand: 'Paddle Pop',
      iceColor: Color.fromARGB(100, 56, 101, 100)),

  Ice(
      iceId: 2,
      iceName: 'Oreo Chocolate',
      icePrice: 30000,
      iceDescriptions:
      'The Cascade 3 was created to be versatile bikes for riders who are looking for a bike to commute to work during the weekdays, and planning to go for recreational riding on the weekends. The Cascade is built with a lightweight and durable AL6 frame with modern geometry for a more comfortable ride. The component spec includes: 27.5” wheels for less rolling resistance, a 100mm travel suspension fork to smooth out the bumps while riding down fire roads, and disc brakes to keep riders in control. The new Cascade 3 is a reliable companion for day-to-day use and sport.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/heart/indonesia/pack_shot/walls_oreo_chocolate-2189397-png.png.ulenscale.450x450.png',
      iceBrand: 'Paddle Pop',
      iceColor: Color.fromARGB(1000, 227, 232, 192)),
  Ice(
      iceId: 3,
      iceName: 'Trico',
      icePrice: 2800,
      iceDescriptions:
      'The Cascade 2 was created to be versatile bikes for riders who are looking for a bike to commute to work during the weekdays, and planning to go for recreational riding on the weekends. The Cascade is built with a lightweight and durable AL6 frame with modern geometry for a more comfortable ride. The component spec includes: 27.5” wheels for less rolling resistance, a 100mm travel suspension fork to smooth out the bumps while riding down fire roads, and disc brakes to keep riders in control. The new Cascade 2 is a reliable companion for day-to-day use and sport.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/max_paddle_pop/indonesia/static_not_in-use_products_/paddle_pop-trico-1759804-png.png.ulenscale.450x450.png',
      iceBrand: 'Paddle Pop',
      iceColor: Color.fromARGB(100, 13, 70, 149)),
  Ice(
      iceId: 4,
      iceName: 'Choco Magma',
      icePrice: 4800,
      iceDescriptions:
      'The Premier series was created for riders who want a versatile mountain bike. Built with a lightweight and durable AL6 frame with modern geometry for a more comfortable leisure ride, the Premier will keep riders enthusiastic about riding for years to come. The Premier series fits the rider and sets them up for optimal efficiency and power transfer for day to day ride and sports.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/max_paddle_pop/indonesia/static_not_in-use_products_/paddle_pop-choco_magma-1759794-png.png.ulenscale.450x450.png',
      iceBrand: 'Paddle Pop',
      iceColor: Color.fromARGB(1000, 223, 223, 207)),
  Ice(
      iceId: 5,
      iceName: 'Monkey Banana',
      icePrice: 4200,
      iceDescriptions:
      'The Premier series was created for riders who want a versatile mountain bike. Built with a lightweight and durable AL6 frame with modern geometry for a more comfortable leisure ride, the Premier will keep riders enthusiastic about riding for years to come. The Premier series fits the rider and sets them up for optimal efficiency and power transfer for day to day ride and sports.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/max_paddle_pop/indonesia/pack_shot/wrapper-walls-monkey-banana-1421329.png.ulenscale.450x450.png',
      iceBrand: 'Paddle Pop',
      iceColor: Color.fromARGB(1000, 223, 223, 207)),
  Ice(
      iceId: 6,
      iceName: 'Stawberry Chesscake',
      icePrice: 10000,
      iceDescriptions:
      'The Xtrada 7 is designed for riders who want to ride on a wide variety of terrain. The ALX super light 6061 hydro formed aluminum frame uses heat treated, hydro formed and butted tubing to give an optimal strength to weight ratio. The tapered head tube provides stable, front-end precision and the new Boost hub spacing on this frame allows for a stiffer wheel with more tyre clearance. The Boost system has also allowed for shorter chain stays, which makes the back of the bike a lot easier to flick around corners.The Xtrada 7 utilises Polygon’s new Wheel Fit Size System whereby each frame size is paired with the wheel size that best fits the rider and sets them up for optimal efficiency and power transfer. Frame S, M, L feature 27.5” wheels and frame M, L, XL come with 29” wheels. The Xtrada 7 is a true cross country mountain bike with a geometry built for speed and stability coupled with tough, trail-ready components. It is perfect for hitting the local single track or an all-day mountain adventure.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/heart/indonesia/pack_shot/walls_selection_cheesecake-2189391-png.png.ulenscale.450x450.png',
      iceBrand: 'Walls',
      iceColor: Color.fromARGB(1000, 222, 188, 48)),
  Ice(
      iceId: 7,
      iceName: 'Feast Wich',
      icePrice: 7500,
      iceDescriptions:
      'The Xtrada 6 is designed for riders who want to ride on a wide variety of terrain. The ALX super light 6061 hydro formed aluminum frame uses heat treated, hydro formed and butted tubing to give an optimal strength to weight ratio. The tapered head tube provides stable, front-end precision and the new Boost hub spacing on this frame allows for a stiffer wheel with more tyre clearance. The Boost system has also allowed for shorter chain stays, which makes the back of the bike a lot easier to flick around corners.The Xtrada 6 utilises Polygon’s new Wheel Fit Size System whereby each frame size is paired with the wheel size that best fits the rider and sets them up for optimal efficiency and power transfer. Frame S, M, L feature 27.5” wheels and frame M, L, XL come with 29” wheels. The Xtrada 6 is a true cross country mountain bike with a geometry built for speed and stability coupled with tough, trail-ready components. It is perfect for hitting the local single track or an all-day mountain adventure.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/heart/indonesia/digital_and_online/feastwich-38713723-png.png.ulenscale.450x450.png',
      iceBrand: 'Walls',
      iceColor: Color.fromARGB(1000, 128, 128, 128)),
  Ice(
      iceId: 8,
      iceName: 'Cornetto Daifuku',
      icePrice: 10000,
      iceDescriptions:
      'Strattos S3 dengan semi carbon fork dan alloy frame yang ringan serta performa maksimal, cocok untuk olahraga rutin dan everyday commuters. Ride all day, experience more.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/cornetto/indonesia/digital_and_online/02_product_shot_daifuku-37511620-png.png.ulenscale.450x450.png',
      iceBrand: 'Walls',
      iceColor: Color.fromARGB(100, 255, 255, 0)),
  Ice(
      iceId: 9,
      iceName: 'Cornetto Boba Cheese',
      icePrice: 10000,
      iceDescriptions:
      'The new Strattos Disc brakes series offers an all-rounder road bikes to inspire you to turn every inch of pedal movement into pure speed. With technical parameters surpassing UCI standards and regulations, featuring a geometry favored by riders who have powerful pedaling style and also equipped with disc brakes for powerful and fade-free braking in all conditions. These agile carbon and alloy road bikes are made to fulfill your need for maximum performance either on your local lunch ride or when sprinting for the podium.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/cornetto/indonesia/digital_and_online/01_product_shot_boba-37511514-png.png.ulenscale.450x450.png',
      iceBrand: 'Walls',
      iceColor: Color.fromARGB(1000, 170, 170, 170)),
  Ice(
      iceId: 10,
      iceName: 'Shaki Shake',
      icePrice: 8000,
      iceDescriptions:
      'Strattos S5 dengan full carbon fork yang ringan dan dapat diandalkan. Disertai alloy frame yang ringan dan performa maksimal, serta perancangan desain yang cocok untuk olahraga rutin dan everyday commuters. Ride all day, experience more.',
      iceImage:
      'https://asset-apac.unileversolutions.com/content/dam/unilever/max_paddle_pop/indonesia/static_not_in-use_products_/paddle_pop-shaky_shake-1759803-png.png.ulenscale.450x450.png',
      iceBrand: 'Paddle Pop',
      iceColor: Color.fromARGB(100, 128, 0, 0)),
];
