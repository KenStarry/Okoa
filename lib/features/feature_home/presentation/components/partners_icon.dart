import 'package:flutter/material.dart';
import 'package:get/get.dart';

//Copy this CustomPainter code to the Bottom of the File
class PartnersIcon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.5505743);
    path_0.lineTo(size.width, size.height * 0.5505743);
    path_0.cubicTo(
        size.width,
        size.height * 0.5515457,
        size.width * 0.9994302,
        size.height * 0.5523333,
        size.width * 0.9987273,
        size.height * 0.5523333);
    path_0.lineTo(0, size.height * 0.5523333);
    path_0.lineTo(0, size.height * 0.5488153);
    path_0.lineTo(size.width * 0.9987273, size.height * 0.5488153);
    path_0.cubicTo(size.width * 0.9994302, size.height * 0.5488153, size.width,
        size.height * 0.5496028, size.width, size.height * 0.5505743);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffe6e6e6).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.3283867, size.height * 0.07123716),
        size.width * 0.03774285, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3483869, size.height * 0.1344094);
    path_2.lineTo(size.width * 0.2987072, size.height * 0.1540275);
    path_2.lineTo(size.width * 0.2916101, size.height * 0.1760979);
    path_2.lineTo(size.width * 0.2756417, size.height * 0.2815451);
    path_2.lineTo(size.width * 0.2756417, size.height * 0.4482989);
    path_2.cubicTo(
        size.width * 0.2756417,
        size.height * 0.4482989,
        size.width * 0.2561247,
        size.height * 0.5071532,
        size.width * 0.2667703,
        size.height * 0.5586507);
    path_2.cubicTo(
        size.width * 0.2781495,
        size.height * 0.6136966,
        size.width * 0.3182242,
        size.height * 0.5487258,
        size.width * 0.3483869,
        size.height * 0.5561405);
    path_2.cubicTo(
        size.width * 0.3785495,
        size.height * 0.5635552,
        size.width * 0.4264549,
        size.height * 0.5709120,
        size.width * 0.4264549,
        size.height * 0.5709120);
    path_2.lineTo(size.width * 0.3980665, size.height * 0.3918969);
    path_2.lineTo(size.width * 0.3909694, size.height * 0.1736456);
    path_2.lineTo(size.width * 0.3483869, size.height * 0.1344094);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xffe6e6e6).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.3390118, size.height * 0.08831994);
    path_3.lineTo(size.width * 0.3313383, size.height * 0.08301710);
    path_3.cubicTo(
        size.width * 0.3313383,
        size.height * 0.08301710,
        size.width * 0.3294199,
        size.height * 0.05915429,
        size.width * 0.3255832,
        size.height * 0.05385145);
    path_3.cubicTo(
        size.width * 0.3217464,
        size.height * 0.04854861,
        size.width * 0.3217464,
        size.height * 0.04589717,
        size.width * 0.3217464,
        size.height * 0.04589717);
    path_3.lineTo(size.width * 0.3275015, size.height * 0.03529147);
    path_3.cubicTo(
        size.width * 0.3275015,
        size.height * 0.03529147,
        size.width * 0.2987260,
        size.height * 0.05650287,
        size.width * 0.2929708,
        size.height * 0.04324575);
    path_3.cubicTo(
        size.width * 0.2872157,
        size.height * 0.02998864,
        size.width * 0.2948892,
        size.height * 0.02468580,
        size.width * 0.2948892,
        size.height * 0.02468580);
    path_3.lineTo(size.width * 0.2852974, size.height * 0.01408010);
    path_3.cubicTo(
        size.width * 0.2852974,
        size.height * 0.01408010,
        size.width * 0.2968076,
        size.height * 0.02468580,
        size.width * 0.2987260,
        size.height * 0.01673152);
    path_3.cubicTo(
        size.width * 0.3006443,
        size.height * 0.008777240,
        size.width * 0.3121545,
        size.height * 0.003380444,
        size.width * 0.3121545,
        size.height * 0.003380444);
    path_3.cubicTo(
        size.width * 0.3121545,
        size.height * 0.003380444,
        size.width * 0.3372897,
        size.height * 0.01124077,
        size.width * 0.3352732,
        size.height * 0.003380444);
    path_3.cubicTo(
        size.width * 0.3332566,
        size.height * -0.004479877,
        size.width * 0.3409301,
        size.height * 0.003474402,
        size.width * 0.3428485,
        size.height * 0.006125821);
    path_3.cubicTo(
        size.width * 0.3447669,
        size.height * 0.008777240,
        size.width * 0.3620322,
        size.height * 0.03529147,
        size.width * 0.3639506,
        size.height * 0.03264006);
    path_3.cubicTo(
        size.width * 0.3658689,
        size.height * 0.02998864,
        size.width * 0.3754608,
        size.height * 0.03794289,
        size.width * 0.3735424,
        size.height * 0.04059433);
    path_3.cubicTo(
        size.width * 0.3716241,
        size.height * 0.04324577,
        size.width * 0.3716241,
        size.height * 0.04589717,
        size.width * 0.3735424,
        size.height * 0.04854861);
    path_3.cubicTo(
        size.width * 0.3754608,
        size.height * 0.05120005,
        size.width * 0.3869710,
        size.height * 0.08036571,
        size.width * 0.3773792,
        size.height * 0.09097138);
    path_3.cubicTo(
        size.width * 0.3677873,
        size.height * 0.1015771,
        size.width * 0.3543587,
        size.height * 0.1148342,
        size.width * 0.3562771,
        size.height * 0.1254399);
    path_3.cubicTo(
        size.width * 0.3581955,
        size.height * 0.1360456,
        size.width * 0.3562771,
        size.height * 0.09097138,
        size.width * 0.3390117,
        size.height * 0.08831996);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.1529574, size.height * 0.2196581);
    path_4.cubicTo(
        size.width * 0.1432701,
        size.height * 0.2081163,
        size.width * 0.1397266,
        size.height * 0.1918524,
        size.width * 0.1450421,
        size.height * 0.1833328);
    path_4.cubicTo(
        size.width * 0.1503576,
        size.height * 0.1748132,
        size.width * 0.1625175,
        size.height * 0.1772647,
        size.width * 0.1722071,
        size.height * 0.1888124);
    path_4.cubicTo(
        size.width * 0.1761235,
        size.height * 0.1933519,
        size.width * 0.1791964,
        size.height * 0.1991216,
        size.width * 0.1811686,
        size.height * 0.2056389);
    path_4.lineTo(size.width * 0.2217670, size.height * 0.2552584);
    path_4.lineTo(size.width * 0.2045137, size.height * 0.2810938);
    path_4.lineTo(size.width * 0.1663226, size.height * 0.2294349);
    path_4.cubicTo(
        size.width * 0.1613665,
        size.height * 0.2276980,
        size.width * 0.1567835,
        size.height * 0.2243455,
        size.width * 0.1529574,
        size.height * 0.2196581);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.2920360, size.height * 0.1769414);
    path_5.lineTo(size.width * 0.3187785, size.height * 0.1735812);
    path_5.lineTo(size.width * 0.3422311, size.height * 0.3281726);
    path_5.cubicTo(
        size.width * 0.3466999,
        size.height * 0.3576295,
        size.width * 0.3327292,
        size.height * 0.3863883,
        size.width * 0.3113108,
        size.height * 0.3918223);
    path_5.lineTo(size.width * 0.2920360, size.height * 0.3967124);
    path_5.lineTo(size.width * 0.1691853, size.height * 0.2472135);
    path_5.lineTo(size.width * 0.1871338, size.height * 0.2058594);
    path_5.lineTo(size.width * 0.2777305, size.height * 0.2844057);
    path_5.lineTo(size.width * 0.2920360, size.height * 0.1769414);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Color(0xffe6e6e6).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.2323325, size.height * 0.8644282);
    path_6.cubicTo(
        size.width * 0.2323325,
        size.height * 0.8644282,
        size.width * 0.2111217,
        size.height * 0.9188721,
        size.width * 0.2126367,
        size.height * 0.9167781);
    path_6.cubicTo(
        size.width * 0.2141518,
        size.height * 0.9146841,
        size.width * 0.2399078,
        size.height * 0.9272481,
        size.width * 0.2399078,
        size.height * 0.9272481);
    path_6.lineTo(size.width * 0.2550584, size.height * 0.8728042);
    path_6.lineTo(size.width * 0.2323325, size.height * 0.8644282);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.2010258, size.height * 0.4833298);
    path_7.cubicTo(
        size.width * 0.2010258,
        size.height * 0.4833298,
        size.width * 0.1901681,
        size.height * 0.5433162,
        size.width * 0.1912634,
        size.height * 0.5407710);
    path_7.cubicTo(
        size.width * 0.1923588,
        size.height * 0.5382259,
        size.width * 0.2195601,
        size.height * 0.5416372,
        size.width * 0.2195601,
        size.height * 0.5416372);
    path_7.lineTo(size.width * 0.2245442, size.height * 0.4837133);
    path_7.lineTo(size.width * 0.2010258, size.height * 0.4833298);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.3898987, size.height * 0.4732434);
    path_8.cubicTo(
        size.width * 0.3419648,
        size.height * 0.4825503,
        size.width * 0.2986691,
        size.height * 0.4744358,
        size.width * 0.2633912,
        size.height * 0.4362058);
    path_8.cubicTo(
        size.width * 0.2633912,
        size.height * 0.4362058,
        size.width * 0.2376352,
        size.height * 0.5555636,
        size.width * 0.2846021,
        size.height * 0.5681276);
    path_8.cubicTo(
        size.width * 0.3315689,
        size.height * 0.5806916,
        size.width * 0.3838385,
        size.height * 0.5590972,
        size.width * 0.3898987,
        size.height * 0.5381573);
    path_8.cubicTo(
        size.width * 0.3959589,
        size.height * 0.5172173,
        size.width * 0.3898987,
        size.height * 0.4732434,
        size.width * 0.3898987,
        size.height * 0.4732434);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.3005102, size.height * 0.5109353);
    path_9.lineTo(size.width * 0.2482406, size.height * 0.6812035);
    path_9.lineTo(size.width * 0.2239997, size.height * 0.8780392);
    path_9.lineTo(size.width * 0.2558159, size.height * 0.8885092);
    path_9.lineTo(size.width * 0.3127261, size.height * 0.7073784);
    path_9.lineTo(size.width * 0.3898987, size.height * 0.5339693);
    path_9.lineTo(size.width * 0.3005102, size.height * 0.5109353);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.2936924, size.height * 0.4623808);
    path_10.cubicTo(
        size.width * 0.2936924,
        size.height * 0.4623808,
        size.width * 0.2815719,
        size.height * 0.3325529,
        size.width * 0.2588461,
        size.height * 0.3241769);
    path_10.cubicTo(
        size.width * 0.2477671,
        size.height * 0.3200936,
        size.width * 0.2374082,
        size.height * 0.3204892,
        size.width * 0.2297004,
        size.height * 0.3219672);
    path_10.cubicTo(
        size.width * 0.2219317,
        size.height * 0.3234569,
        size.width * 0.2157387,
        size.height * 0.3316604,
        size.width * 0.2143803,
        size.height * 0.3423366);
    path_10.lineTo(size.width * 0.1937283, size.height * 0.5046533);
    path_10.lineTo(size.width * 0.2229320, size.height * 0.5046533);
    path_10.lineTo(size.width * 0.2323325, size.height * 0.4606794);
    path_10.lineTo(size.width * 0.2573310, size.height * 0.5210127);
    path_10.lineTo(size.width * 0.2936924, size.height * 0.4623808);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);

    Path path_11 = Path();
    path_11.moveTo(size.width * 0.2194545, size.height * 0.5252007);
    path_11.lineTo(size.width * 0.1905789, size.height * 0.5210127);
    path_11.lineTo(size.width * 0.1861232, size.height * 0.5440466);
    path_11.cubicTo(
        size.width * 0.1861232,
        size.height * 0.5440466,
        size.width * 0.1391563,
        size.height * 0.6026786,
        size.width * 0.1633973,
        size.height * 0.6068666);
    path_11.cubicTo(
        size.width * 0.1876383,
        size.height * 0.6110546,
        size.width * 0.2103641,
        size.height * 0.5880206,
        size.width * 0.2103641,
        size.height * 0.5880206);
    path_11.lineTo(size.width * 0.2437104, size.height * 0.5615818);
    path_11.cubicTo(
        size.width * 0.2437104,
        size.height * 0.5615818,
        size.width * 0.2308175,
        size.height * 0.5140763,
        size.width * 0.2217271,
        size.height * 0.5140763);
    path_11.cubicTo(
        size.width * 0.2126367,
        size.height * 0.5140763,
        size.width * 0.2194545,
        size.height * 0.5252007,
        size.width * 0.2194545,
        size.height * 0.5252007);
    path_11.close();

    Paint paint_11_fill = Paint()..style = PaintingStyle.fill;
    paint_11_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_11, paint_11_fill);

    Path path_12 = Path();
    path_12.moveTo(size.width * 0.2346051, size.height * 0.9178251);
    path_12.lineTo(size.width * 0.2057295, size.height * 0.9136371);
    path_12.lineTo(size.width * 0.2012738, size.height * 0.9366711);
    path_12.cubicTo(
        size.width * 0.2012738,
        size.height * 0.9366711,
        size.width * 0.1543069,
        size.height * 0.9953030,
        size.width * 0.1785479,
        size.height * 0.9994910);
    path_12.cubicTo(
        size.width * 0.2027888,
        size.height * 1.003679,
        size.width * 0.2255147,
        size.height * 0.9806451,
        size.width * 0.2255147,
        size.height * 0.9806451);
    path_12.lineTo(size.width * 0.2588610, size.height * 0.9542063);
    path_12.cubicTo(
        size.width * 0.2588610,
        size.height * 0.9542063,
        size.width * 0.2565735,
        size.height * 0.9046068,
        size.width * 0.2474831,
        size.height * 0.9046068);
    path_12.cubicTo(
        size.width * 0.2383927,
        size.height * 0.9046068,
        size.width * 0.2346051,
        size.height * 0.9178251,
        size.width * 0.2346051,
        size.height * 0.9178251);
    path_12.close();

    Paint paint_12_fill = Paint()..style = PaintingStyle.fill;
    paint_12_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_12, paint_12_fill);

    Path path_13 = Path();
    path_13.moveTo(size.width * 0.3808118, size.height * 0.6008270);
    path_13.cubicTo(
        size.width * 0.3773302,
        size.height * 0.6173307,
        size.width * 0.3683470,
        size.height * 0.6282254,
        size.width * 0.3607481,
        size.height * 0.6251612);
    path_13.cubicTo(
        size.width * 0.3531493,
        size.height * 0.6220971,
        size.width * 0.3498135,
        size.height * 0.6062364,
        size.width * 0.3532980,
        size.height * 0.5897275);
    path_13.cubicTo(
        size.width * 0.3546244,
        size.height * 0.5831065,
        size.width * 0.3570788,
        size.height * 0.5770208,
        size.width * 0.3604558,
        size.height * 0.5719796);
    path_13.lineTo(size.width * 0.3758464, size.height * 0.5023105);
    path_13.lineTo(size.width * 0.3993472, size.height * 0.5129895);
    path_13.lineTo(size.width * 0.3816797, size.height * 0.5805372);
    path_13.cubicTo(
        size.width * 0.3825670,
        size.height * 0.5872992,
        size.width * 0.3822694,
        size.height * 0.5942567,
        size.width * 0.3808118,
        size.height * 0.6008270);
    path_13.close();

    Paint paint_13_fill = Paint()..style = PaintingStyle.fill;
    paint_13_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_13, paint_13_fill);

    Path path_14 = Path();
    path_14.moveTo(size.width * 0.3970782, size.height * 0.1739489);
    path_14.lineTo(size.width * 0.3848243, size.height * 0.1691722);
    path_14.lineTo(size.width * 0.3848243, size.height * 0.1691723);
    path_14.cubicTo(
        size.width * 0.3732694,
        size.height * 0.2009473,
        size.width * 0.3683007,
        size.height * 0.2365215,
        size.width * 0.3704682,
        size.height * 0.2719578);
    path_14.lineTo(size.width * 0.3765161, size.height * 0.3708370);
    path_14.lineTo(size.width * 0.3565605, size.height * 0.5446340);
    path_14.lineTo(size.width * 0.3956735, size.height * 0.5586197);
    path_14.lineTo(size.width * 0.4264958, size.height * 0.3405122);
    path_14.lineTo(size.width * 0.3970782, size.height * 0.1739489);
    path_14.close();

    Paint paint_14_fill = Paint()..style = PaintingStyle.fill;
    paint_14_fill.color = Color(0xffe6e6e6).withOpacity(1.0);
    canvas.drawPath(path_14, paint_14_fill);

    Path path_15 = Path();
    path_15.moveTo(size.width * 0.1585169, size.height * 0.4456772);
    path_15.cubicTo(
        size.width * 0.1579802,
        size.height * 0.4434076,
        size.width * 0.1539131,
        size.height * 0.4444068,
        size.width * 0.1535226,
        size.height * 0.4423768);
    path_15.cubicTo(
        size.width * 0.1531335,
        size.height * 0.4403541,
        size.width * 0.1570362,
        size.height * 0.4386581,
        size.width * 0.1600294,
        size.height * 0.4329580);
    path_15.cubicTo(
        size.width * 0.1605692,
        size.height * 0.4319301,
        size.width * 0.1639707,
        size.height * 0.4254523,
        size.width * 0.1626661,
        size.height * 0.4227277);
    path_15.cubicTo(
        size.width * 0.1601933,
        size.height * 0.4175634,
        size.width * 0.1429883,
        size.height * 0.4304257,
        size.width * 0.1388585,
        size.height * 0.4232078);
    path_15.cubicTo(
        size.width * 0.1379521,
        size.height * 0.4216238,
        size.width * 0.1375792,
        size.height * 0.4189044,
        size.width * 0.1348792,
        size.height * 0.4138435);
    path_15.cubicTo(
        size.width * 0.1338050,
        size.height * 0.4118302,
        size.width * 0.1331159,
        size.height * 0.4108582,
        size.width * 0.1322926,
        size.height * 0.4108870);
    path_15.cubicTo(
        size.width * 0.1311242,
        size.height * 0.4109277,
        size.width * 0.1307062,
        size.height * 0.4129478,
        size.width * 0.1288700,
        size.height * 0.4166070);
    path_15.cubicTo(
        size.width * 0.1261162,
        size.height * 0.4220948,
        size.width * 0.1251224,
        size.height * 0.4214058,
        size.width * 0.1233083,
        size.height * 0.4259022);
    path_15.cubicTo(
        size.width * 0.1219616,
        size.height * 0.4292400,
        size.width * 0.1218021,
        size.height * 0.4313728,
        size.width * 0.1208309,
        size.height * 0.4314985);
    path_15.cubicTo(
        size.width * 0.1194567,
        size.height * 0.4316764,
        size.width * 0.1188888,
        size.height * 0.4275206,
        size.width * 0.1172096,
        size.height * 0.4273594);
    path_15.cubicTo(
        size.width * 0.1154961,
        size.height * 0.4271949,
        size.width * 0.1137814,
        size.height * 0.4313013,
        size.width * 0.1129314,
        size.height * 0.4345095);
    path_15.cubicTo(
        size.width * 0.1113363,
        size.height * 0.4405300,
        size.width * 0.1123240,
        size.height * 0.4451316,
        size.width * 0.1125430,
        size.height * 0.4497176);
    path_15.cubicTo(
        size.width * 0.1127810,
        size.height * 0.4547014,
        size.width * 0.1122222,
        size.height * 0.4619969,
        size.width * 0.1083043,
        size.height * 0.4713608);
    path_15.lineTo(size.width * 0.07134949, size.height * 0.5527374);
    path_15.cubicTo(
        size.width * 0.07928590,
        size.height * 0.5361481,
        size.width * 0.1018143,
        size.height * 0.4909106,
        size.width * 0.1108909,
        size.height * 0.4743173);
    path_15.cubicTo(
        size.width * 0.1135112,
        size.height * 0.4695272,
        size.width * 0.1163270,
        size.height * 0.4647172,
        size.width * 0.1206610,
        size.height * 0.4638123);
    path_15.cubicTo(
        size.width * 0.1248336,
        size.height * 0.4629411,
        size.width * 0.1299106,
        size.height * 0.4657943,
        size.width * 0.1369970,
        size.height * 0.4656282);
    path_15.cubicTo(
        size.width * 0.1378246,
        size.height * 0.4656089,
        size.width * 0.1401278,
        size.height * 0.4655143,
        size.width * 0.1406881,
        size.height * 0.4638270);
    path_15.cubicTo(
        size.width * 0.1411513,
        size.height * 0.4624321,
        size.width * 0.1400012,
        size.height * 0.4612193,
        size.width * 0.1404196,
        size.height * 0.4599081);
    path_15.cubicTo(
        size.width * 0.1409807,
        size.height * 0.4581494,
        size.width * 0.1435054,
        size.height * 0.4589039,
        size.width * 0.1469461,
        size.height * 0.4577359);
    path_15.cubicTo(
        size.width * 0.1493722,
        size.height * 0.4569122,
        size.width * 0.1510205,
        size.height * 0.4555513,
        size.width * 0.1524380,
        size.height * 0.4543810);
    path_15.cubicTo(
        size.width * 0.1528653,
        size.height * 0.4540282,
        size.width * 0.1592313,
        size.height * 0.4486984,
        size.width * 0.1585169,
        size.height * 0.4456772);
    path_15.lineTo(size.width * 0.1585169, size.height * 0.4456772);
    path_15.close();

    Paint paint_15_fill = Paint()..style = PaintingStyle.fill;
    paint_15_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_15, paint_15_fill);

    Path path_16 = Path();
    path_16.moveTo(size.width * 0.06172547, size.height * 0.4646768);
    path_16.cubicTo(
        size.width * 0.06076468,
        size.height * 0.4643859,
        size.width * 0.05994601,
        size.height * 0.4674332,
        size.width * 0.05911247,
        size.height * 0.4671124);
    path_16.cubicTo(
        size.width * 0.05828190,
        size.height * 0.4667928,
        size.width * 0.05880571,
        size.height * 0.4636560,
        size.width * 0.05764518,
        size.height * 0.4599808);
    path_16.cubicTo(
        size.width * 0.05743591,
        size.height * 0.4593181,
        size.width * 0.05611702,
        size.height * 0.4551415,
        size.width * 0.05477306,
        size.height * 0.4552404);
    path_16.cubicTo(
        size.width * 0.05222568,
        size.height * 0.4554278,
        size.width * 0.05182901,
        size.height * 0.4708101,
        size.width * 0.04807427,
        size.height * 0.4715290);
    path_16.cubicTo(
        size.width * 0.04725027,
        size.height * 0.4716868,
        size.width * 0.04617694,
        size.height * 0.4711551,
        size.width * 0.04360075,
        size.height * 0.4715265);
    path_16.cubicTo(
        size.width * 0.04257587,
        size.height * 0.4716742,
        size.width * 0.04203189,
        size.height * 0.4718612,
        size.width * 0.04180452,
        size.height * 0.4724280);
    path_16.cubicTo(
        size.width * 0.04148192,
        size.height * 0.4732323,
        size.width * 0.04207863,
        size.height * 0.4740988,
        size.width * 0.04284826,
        size.height * 0.4764001);
    path_16.cubicTo(
        size.width * 0.04400247,
        size.height * 0.4798516,
        size.width * 0.04347104,
        size.height * 0.4803269,
        size.width * 0.04454433,
        size.height * 0.4828549);
    path_16.cubicTo(
        size.width * 0.04534108,
        size.height * 0.4847315,
        size.width * 0.04605240,
        size.height * 0.4854551,
        size.width * 0.04581683,
        size.height * 0.4861501);
    path_16.cubicTo(
        size.width * 0.04548351,
        size.height * 0.4871337,
        size.width * 0.04384390,
        size.height * 0.4863198,
        size.width * 0.04330215,
        size.height * 0.4874124);
    path_16.cubicTo(
        size.width * 0.04274933,
        size.height * 0.4885273,
        size.width * 0.04371280,
        size.height * 0.4908753,
        size.width * 0.04460681,
        size.height * 0.4923775);
    path_16.cubicTo(
        size.width * 0.04628451,
        size.height * 0.4951967,
        size.width * 0.04820359,
        size.height * 0.4958544,
        size.width * 0.04989532,
        size.height * 0.4970290);
    path_16.cubicTo(
        size.width * 0.05173379,
        size.height * 0.4983056,
        size.width * 0.05416329,
        size.height * 0.5007896,
        size.width * 0.05635802,
        size.height * 0.5061492);
    path_16.lineTo(size.width * 0.07459311, size.height * 0.5546974);
    path_16.cubicTo(
        size.width * 0.07099197,
        size.height * 0.5445271,
        size.width * 0.06142779,
        size.height * 0.5161924,
        size.width * 0.05815424,
        size.height * 0.5052475);
    path_16.cubicTo(
        size.width * 0.05720923,
        size.height * 0.5020880,
        size.width * 0.05631363,
        size.height * 0.4987900,
        size.width * 0.05724282,
        size.height * 0.4955890);
    path_16.cubicTo(
        size.width * 0.05813735,
        size.height * 0.4925070,
        size.width * 0.06061544,
        size.height * 0.4898863,
        size.width * 0.06260113,
        size.height * 0.4850313);
    path_16.cubicTo(
        size.width * 0.06283305,
        size.height * 0.4844643,
        size.width * 0.06346401,
        size.height * 0.4828746,
        size.width * 0.06302652,
        size.height * 0.4820077);
    path_16.cubicTo(
        size.width * 0.06266483,
        size.height * 0.4812911,
        size.width * 0.06190231,
        size.height * 0.4817213,
        size.width * 0.06155740,
        size.height * 0.4810591);
    path_16.cubicTo(
        size.width * 0.06109476,
        size.height * 0.4801710,
        size.width * 0.06209117,
        size.height * 0.4786761,
        size.width * 0.06266909,
        size.height * 0.4760051);
    path_16.cubicTo(
        size.width * 0.06307661,
        size.height * 0.4741216,
        size.width * 0.06306893,
        size.height * 0.4726109,
        size.width * 0.06306233,
        size.height * 0.4713116);
    path_16.cubicTo(
        size.width * 0.06306033,
        size.height * 0.4709199,
        size.width * 0.06300447,
        size.height * 0.4650638,
        size.width * 0.06172550,
        size.height * 0.4646766);
    path_16.lineTo(size.width * 0.06172550, size.height * 0.4646767);
    path_16.close();

    Paint paint_16_fill = Paint()..style = PaintingStyle.fill;
    paint_16_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_16, paint_16_fill);

    Path path_17 = Path();
    path_17.moveTo(size.width * 0.07991773, size.height * 0.4765222);
    path_17.lineTo(size.width * 0.08049090, size.height * 0.4692081);
    path_17.lineTo(size.width * 0.08084246, size.height * 0.4687486);
    path_17.cubicTo(
        size.width * 0.08246892,
        size.height * 0.4666240,
        size.width * 0.08348640,
        size.height * 0.4643732,
        size.width * 0.08386808,
        size.height * 0.4620567);
    path_17.cubicTo(
        size.width * 0.08392882,
        size.height * 0.4616884,
        size.width * 0.08397584,
        size.height * 0.4613158,
        size.width * 0.08402398,
        size.height * 0.4609365);
    path_17.cubicTo(
        size.width * 0.08421432,
        size.height * 0.4594326,
        size.width * 0.08445060,
        size.height * 0.4575631,
        size.width * 0.08549671,
        size.height * 0.4556214);
    path_17.cubicTo(
        size.width * 0.08608216,
        size.height * 0.4545395,
        size.width * 0.08763084,
        size.height * 0.4520944,
        size.width * 0.08922807,
        size.height * 0.4529485);
    path_17.cubicTo(
        size.width * 0.08965917,
        size.height * 0.4531718,
        size.width * 0.08995013,
        size.height * 0.4535581,
        size.width * 0.09015227,
        size.height * 0.4539676);
    path_17.cubicTo(
        size.width * 0.09020301,
        size.height * 0.4538965,
        size.width * 0.09025501,
        size.height * 0.4538257,
        size.width * 0.09031060,
        size.height * 0.4537488);
    path_17.cubicTo(
        size.width * 0.09100054,
        size.height * 0.4528221,
        size.width * 0.09148319,
        size.height * 0.4524826,
        size.width * 0.09194812,
        size.height * 0.4521557);
    path_17.cubicTo(
        size.width * 0.09230537,
        size.height * 0.4519041,
        size.width * 0.09267427,
        size.height * 0.4516453,
        size.width * 0.09329855,
        size.height * 0.4509552);
    path_17.cubicTo(
        size.width * 0.09357243,
        size.height * 0.4506526,
        size.width * 0.09379173,
        size.height * 0.4503802,
        size.width * 0.09397653,
        size.height * 0.4501515);
    path_17.cubicTo(
        size.width * 0.09453698,
        size.height * 0.4494598,
        size.width * 0.09525384,
        size.height * 0.4486499,
        size.width * 0.09623578,
        size.height * 0.4489707);
    path_17.cubicTo(
        size.width * 0.09727669,
        size.height * 0.4493639,
        size.width * 0.09763358,
        size.height * 0.4507363,
        size.width * 0.09787035,
        size.height * 0.4516448);
    path_17.cubicTo(
        size.width * 0.09829319,
        size.height * 0.4532653,
        size.width * 0.09842344,
        size.height * 0.4543797,
        size.width * 0.09850960,
        size.height * 0.4551188);
    path_17.cubicTo(
        size.width * 0.09854063,
        size.height * 0.4553888,
        size.width * 0.09857661,
        size.height * 0.4556929,
        size.width * 0.09860384,
        size.height * 0.4557917);
    path_17.cubicTo(
        size.width * 0.09883167,
        size.height * 0.4565853,
        size.width * 0.1016916,
        size.height * 0.4567906,
        size.width * 0.1027678,
        size.height * 0.4568764);
    path_17.cubicTo(
        size.width * 0.1051867,
        size.height * 0.4570578,
        size.width * 0.1072798,
        size.height * 0.4572148,
        size.width * 0.1077831,
        size.height * 0.4595039);
    path_17.cubicTo(
        size.width * 0.1081443,
        size.height * 0.4611416,
        size.width * 0.1073916,
        size.height * 0.4629279,
        size.width * 0.1054813,
        size.height * 0.4649541);
    path_17.cubicTo(
        size.width * 0.1048862,
        size.height * 0.4655845,
        size.width * 0.1042913,
        size.height * 0.4660196,
        size.width * 0.1037731,
        size.height * 0.4663445);
    path_17.cubicTo(
        size.width * 0.1040919,
        size.height * 0.4667611,
        size.width * 0.1043458,
        size.height * 0.4673276,
        size.width * 0.1043614,
        size.height * 0.4680993);
    path_17.lineTo(size.width * 0.1043614, size.height * 0.4680993);
    path_17.cubicTo(
        size.width * 0.1043964,
        size.height * 0.4699257,
        size.width * 0.1030410,
        size.height * 0.4713273,
        size.width * 0.1003330,
        size.height * 0.4722721);
    path_17.cubicTo(
        size.width * 0.09966008,
        size.height * 0.4725095,
        size.width * 0.09875493,
        size.height * 0.4728237,
        size.width * 0.09757047,
        size.height * 0.4727443);
    path_17.cubicTo(
        size.width * 0.09701266,
        size.height * 0.4727062,
        size.width * 0.09652402,
        size.height * 0.4725881,
        size.width * 0.09610743,
        size.height * 0.4724778);
    path_17.cubicTo(
        size.width * 0.09604531,
        size.height * 0.4728059,
        size.width * 0.09593141,
        size.height * 0.4731469,
        size.width * 0.09572607,
        size.height * 0.4734706);
    path_17.cubicTo(
        size.width * 0.09512337,
        size.height * 0.4744242,
        size.width * 0.09415000,
        size.height * 0.4746667,
        size.width * 0.09282879,
        size.height * 0.4741292);
    path_17.cubicTo(
        size.width * 0.09137018,
        size.height * 0.4735674,
        size.width * 0.09021771,
        size.height * 0.4728034,
        size.width * 0.08920079,
        size.height * 0.4721318);
    path_17.cubicTo(
        size.width * 0.08831251,
        size.height * 0.4715470,
        size.width * 0.08754661,
        size.height * 0.4710468,
        size.width * 0.08690396,
        size.height * 0.4709102);
    path_17.cubicTo(
        size.width * 0.08570866,
        size.height * 0.4706792,
        size.width * 0.08459406,
        size.height * 0.4716992,
        size.width * 0.08326019,
        size.height * 0.4730567);
    path_17.lineTo(size.width * 0.07991779, size.height * 0.4765222);
    path_17.lineTo(size.width * 0.07991776, size.height * 0.4765222);
    path_17.close();

    Paint paint_17_fill = Paint()..style = PaintingStyle.fill;
    paint_17_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_17, paint_17_fill);

    Path path_18 = Path();
    path_18.moveTo(size.width * 0.08945694, size.height * 0.4348627);
    path_18.lineTo(size.width * 0.08419268, size.height * 0.4359516);
    path_18.lineTo(size.width * 0.08378193, size.height * 0.4355981);
    path_18.cubicTo(
        size.width * 0.08188249,
        size.height * 0.4339626,
        size.width * 0.08004919,
        size.height * 0.4331732,
        size.width * 0.07833108,
        size.height * 0.4332505);
    path_18.cubicTo(
        size.width * 0.07805792,
        size.height * 0.4332628,
        size.width * 0.07778528,
        size.height * 0.4332944,
        size.width * 0.07750754,
        size.height * 0.4333263);
    path_18.cubicTo(
        size.width * 0.07640677,
        size.height * 0.4334532,
        size.width * 0.07503845,
        size.height * 0.4336115,
        size.width * 0.07341415,
        size.height * 0.4327055);
    path_18.cubicTo(
        size.width * 0.07250848,
        size.height * 0.4321972,
        size.width * 0.07040444,
        size.height * 0.4307470,
        size.width * 0.07059704,
        size.height * 0.4283950);
    path_18.cubicTo(
        size.width * 0.07064399,
        size.height * 0.4277620,
        size.width * 0.07084052,
        size.height * 0.4272750,
        size.width * 0.07107589,
        size.height * 0.4269009);
    path_18.cubicTo(
        size.width * 0.07101319,
        size.height * 0.4268511,
        size.width * 0.07095047,
        size.height * 0.4267996,
        size.width * 0.07088256,
        size.height * 0.4267448);
    path_18.cubicTo(
        size.width * 0.07005902,
        size.height * 0.4260574,
        size.width * 0.06969900,
        size.height * 0.4254982,
        size.width * 0.06935228,
        size.height * 0.4249596);
    path_18.cubicTo(
        size.width * 0.06908560,
        size.height * 0.4245458,
        size.width * 0.06881089,
        size.height * 0.4241182,
        size.width * 0.06816956,
        size.height * 0.4234586);
    path_18.cubicTo(
        size.width * 0.06788832,
        size.height * 0.4231692,
        size.width * 0.06764206,
        size.height * 0.4229452,
        size.width * 0.06743508,
        size.height * 0.4227562);
    path_18.cubicTo(
        size.width * 0.06680883,
        size.height * 0.4221824,
        size.width * 0.06606020,
        size.height * 0.4214293,
        size.width * 0.06603566,
        size.height * 0.4200352);
    path_18.cubicTo(
        size.width * 0.06604684,
        size.height * 0.4185438,
        size.width * 0.06691677,
        size.height * 0.4177186,
        size.width * 0.06749254,
        size.height * 0.4171716);
    path_18.cubicTo(
        size.width * 0.06851945,
        size.height * 0.4161953,
        size.width * 0.06926633,
        size.height * 0.4157384,
        size.width * 0.06976175,
        size.height * 0.4154357);
    path_18.cubicTo(
        size.width * 0.06994283,
        size.height * 0.4153258,
        size.width * 0.07014652,
        size.height * 0.4152005,
        size.width * 0.07020879,
        size.height * 0.4151391);
    path_18.cubicTo(
        size.width * 0.07070642,
        size.height * 0.4146332,
        size.width * 0.07012465,
        size.height * 0.4107576,
        size.width * 0.06991174,
        size.height * 0.4092972);
    path_18.cubicTo(
        size.width * 0.06942515,
        size.height * 0.4060173,
        size.width * 0.06900407,
        size.height * 0.4031791,
        size.width * 0.07047854,
        size.height * 0.4019255);
    path_18.cubicTo(
        size.width * 0.07153310,
        size.height * 0.4010273,
        size.width * 0.07297415,
        size.height * 0.4015806,
        size.width * 0.07487676,
        size.height * 0.4036205);
    path_18.cubicTo(
        size.width * 0.07546888,
        size.height * 0.4042561,
        size.width * 0.07592429,
        size.height * 0.4049411,
        size.width * 0.07628316,
        size.height * 0.4055516);
    path_18.cubicTo(
        size.width * 0.07649384,
        size.height * 0.4050198,
        size.width * 0.07682593,
        size.height * 0.4045364,
        size.width * 0.07736203,
        size.height * 0.4043200);
    path_18.lineTo(size.width * 0.07736203, size.height * 0.4043200);
    path_18.cubicTo(
        size.width * 0.07863146,
        size.height * 0.4038100,
        size.width * 0.07995612,
        size.height * 0.4052665,
        size.width * 0.08130423,
        size.height * 0.4086472);
    path_18.cubicTo(
        size.width * 0.08164109,
        size.height * 0.4094866,
        size.width * 0.08209058,
        size.height * 0.4106170,
        size.width * 0.08233544,
        size.height * 0.4122207);
    path_18.cubicTo(
        size.width * 0.08245024,
        size.height * 0.4129761,
        size.width * 0.08249154,
        size.height * 0.4136593,
        size.width * 0.08252001,
        size.height * 0.4142443);
    path_18.cubicTo(
        size.width * 0.08276539,
        size.height * 0.4142441,
        size.width * 0.08303295,
        size.height * 0.4143099,
        size.width * 0.08331160,
        size.height * 0.4145023);
    path_18.cubicTo(
        size.width * 0.08413182,
        size.height * 0.4150662,
        size.width * 0.08454845,
        size.height * 0.4163060,
        size.width * 0.08450737,
        size.height * 0.4182087);
    path_18.cubicTo(
        size.width * 0.08448419,
        size.height * 0.4203012,
        size.width * 0.08424184,
        size.height * 0.4220358,
        size.width * 0.08402977,
        size.height * 0.4235657);
    path_18.cubicTo(
        size.width * 0.08384573,
        size.height * 0.4249016,
        size.width * 0.08368995,
        size.height * 0.4260524,
        size.width * 0.08375737,
        size.height * 0.4269462);
    path_18.cubicTo(
        size.width * 0.08389888,
        size.height * 0.4286028,
        size.width * 0.08489546,
        size.height * 0.4298342,
        size.width * 0.08618388,
        size.height * 0.4312732);
    path_18.lineTo(size.width * 0.08945709, size.height * 0.4348627);
    path_18.lineTo(size.width * 0.08945695, size.height * 0.4348627);
    path_18.close();

    Paint paint_18_fill = Paint()..style = PaintingStyle.fill;
    paint_18_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_18, paint_18_fill);

    Path path_19 = Path();
    path_19.moveTo(size.width * 0.09016647, size.height * 0.4130133);
    path_19.lineTo(size.width * 0.09073965, size.height * 0.4056992);
    path_19.lineTo(size.width * 0.09109120, size.height * 0.4052397);
    path_19.cubicTo(
        size.width * 0.09271766,
        size.height * 0.4031151,
        size.width * 0.09373515,
        size.height * 0.4008644,
        size.width * 0.09411682,
        size.height * 0.3985478);
    path_19.cubicTo(
        size.width * 0.09417756,
        size.height * 0.3981795,
        size.width * 0.09422459,
        size.height * 0.3978069,
        size.width * 0.09427272,
        size.height * 0.3974276);
    path_19.cubicTo(
        size.width * 0.09446306,
        size.height * 0.3959237,
        size.width * 0.09469935,
        size.height * 0.3940543,
        size.width * 0.09574545,
        size.height * 0.3921125);
    path_19.cubicTo(
        size.width * 0.09633090,
        size.height * 0.3910306,
        size.width * 0.09787958,
        size.height * 0.3885855,
        size.width * 0.09947681,
        size.height * 0.3894396);
    path_19.cubicTo(
        size.width * 0.09990791,
        size.height * 0.3896629,
        size.width * 0.1001989,
        size.height * 0.3900492,
        size.width * 0.1004010,
        size.height * 0.3904587);
    path_19.cubicTo(
        size.width * 0.1004518,
        size.height * 0.3903876,
        size.width * 0.1005038,
        size.height * 0.3903168,
        size.width * 0.1005593,
        size.height * 0.3902399);
    path_19.cubicTo(
        size.width * 0.1012493,
        size.height * 0.3893132,
        size.width * 0.1017319,
        size.height * 0.3889737,
        size.width * 0.1021969,
        size.height * 0.3886468);
    path_19.cubicTo(
        size.width * 0.1025541,
        size.height * 0.3883952,
        size.width * 0.1029230,
        size.height * 0.3881365,
        size.width * 0.1035473,
        size.height * 0.3874463);
    path_19.cubicTo(
        size.width * 0.1038212,
        size.height * 0.3871437,
        size.width * 0.1040405,
        size.height * 0.3868714,
        size.width * 0.1042253,
        size.height * 0.3866426);
    path_19.cubicTo(
        size.width * 0.1047857,
        size.height * 0.3859509,
        size.width * 0.1055026,
        size.height * 0.3851410,
        size.width * 0.1064845,
        size.height * 0.3854618);
    path_19.cubicTo(
        size.width * 0.1075254,
        size.height * 0.3858551,
        size.width * 0.1078823,
        size.height * 0.3872274,
        size.width * 0.1081191,
        size.height * 0.3881359);
    path_19.cubicTo(
        size.width * 0.1085419,
        size.height * 0.3897564,
        size.width * 0.1086722,
        size.height * 0.3908709,
        size.width * 0.1087583,
        size.height * 0.3916100);
    path_19.cubicTo(
        size.width * 0.1087894,
        size.height * 0.3918800,
        size.width * 0.1088254,
        size.height * 0.3921840,
        size.width * 0.1088526,
        size.height * 0.3922828);
    path_19.cubicTo(
        size.width * 0.1090804,
        size.height * 0.3930765,
        size.width * 0.1119404,
        size.height * 0.3932817,
        size.width * 0.1130165,
        size.height * 0.3933675);
    path_19.cubicTo(
        size.width * 0.1154354,
        size.height * 0.3935489,
        size.width * 0.1175285,
        size.height * 0.3937059,
        size.width * 0.1180319,
        size.height * 0.3959951);
    path_19.cubicTo(
        size.width * 0.1183931,
        size.height * 0.3976327,
        size.width * 0.1176403,
        size.height * 0.3994190,
        size.width * 0.1157300,
        size.height * 0.4014452);
    path_19.cubicTo(
        size.width * 0.1151350,
        size.height * 0.4020756,
        size.width * 0.1145401,
        size.height * 0.4025107,
        size.width * 0.1140218,
        size.height * 0.4028356);
    path_19.cubicTo(
        size.width * 0.1143406,
        size.height * 0.4032522,
        size.width * 0.1145946,
        size.height * 0.4038188,
        size.width * 0.1146101,
        size.height * 0.4045904);
    path_19.lineTo(size.width * 0.1146101, size.height * 0.4045904);
    path_19.cubicTo(
        size.width * 0.1146451,
        size.height * 0.4064169,
        size.width * 0.1132897,
        size.height * 0.4078184,
        size.width * 0.1105817,
        size.height * 0.4087632);
    path_19.cubicTo(
        size.width * 0.1099088,
        size.height * 0.4090006,
        size.width * 0.1090037,
        size.height * 0.4093148,
        size.width * 0.1078192,
        size.height * 0.4092354);
    path_19.cubicTo(
        size.width * 0.1072614,
        size.height * 0.4091973,
        size.width * 0.1067728,
        size.height * 0.4090792,
        size.width * 0.1063562,
        size.height * 0.4089689);
    path_19.cubicTo(
        size.width * 0.1062941,
        size.height * 0.4092970,
        size.width * 0.1061801,
        size.height * 0.4096381,
        size.width * 0.1059748,
        size.height * 0.4099618);
    path_19.cubicTo(
        size.width * 0.1053721,
        size.height * 0.4109153,
        size.width * 0.1043987,
        size.height * 0.4111578,
        size.width * 0.1030775,
        size.height * 0.4106203);
    path_19.cubicTo(
        size.width * 0.1016189,
        size.height * 0.4100585,
        size.width * 0.1004665,
        size.height * 0.4092945,
        size.width * 0.09944953,
        size.height * 0.4086230);
    path_19.cubicTo(
        size.width * 0.09856125,
        size.height * 0.4080381,
        size.width * 0.09779535,
        size.height * 0.4075379,
        size.width * 0.09715270,
        size.height * 0.4074013);
    path_19.cubicTo(
        size.width * 0.09595741,
        size.height * 0.4071703,
        size.width * 0.09484281,
        size.height * 0.4081903,
        size.width * 0.09350893,
        size.height * 0.4095478);
    path_19.lineTo(size.width * 0.09016653, size.height * 0.4130133);
    path_19.lineTo(size.width * 0.09016650, size.height * 0.4130133);
    path_19.close();

    Paint paint_19_fill = Paint()..style = PaintingStyle.fill;
    paint_19_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_19, paint_19_fill);

    Path path_20 = Path();
    path_20.moveTo(size.width * 0.07309666, size.height * 0.5531540);
    path_20.lineTo(size.width * 0.07216594, size.height * 0.5518832);
    path_20.lineTo(size.width * 0.07218274, size.height * 0.5500763);
    path_20.lineTo(size.width * 0.07216594, size.height * 0.5518832);
    path_20.lineTo(size.width * 0.07087226, size.height * 0.5516942);
    path_20.cubicTo(
        size.width * 0.07087844,
        size.height * 0.5515261,
        size.width * 0.07086994,
        size.height * 0.5511328,
        size.width * 0.07086047,
        size.height * 0.5505186);
    path_20.cubicTo(
        size.width * 0.07081070,
        size.height * 0.5471540,
        size.width * 0.07065621,
        size.height * 0.5369137,
        size.width * 0.07168791,
        size.height * 0.5211796);
    path_20.cubicTo(
        size.width * 0.07240830,
        size.height * 0.5101962,
        size.width * 0.07361211,
        size.height * 0.4990473,
        size.width * 0.07526590,
        size.height * 0.4880370);
    path_20.cubicTo(
        size.width * 0.07692247,
        size.height * 0.4770095,
        size.width * 0.07864173,
        size.height * 0.4688044,
        size.width * 0.08002263,
        size.height * 0.4622096);
    path_20.cubicTo(
        size.width * 0.08106475,
        size.height * 0.4572356,
        size.width * 0.08211661,
        size.height * 0.4525178,
        size.width * 0.08314341,
        size.height * 0.4479224);
    path_20.cubicTo(
        size.width * 0.08588364,
        size.height * 0.4356447,
        size.width * 0.08847098,
        size.height * 0.4240469,
        size.width * 0.09007323,
        size.height * 0.4108180);
    path_20.cubicTo(
        size.width * 0.09043203,
        size.height * 0.4078650,
        size.width * 0.09117668,
        size.height * 0.4017178,
        size.width * 0.08965208,
        size.height * 0.3944624);
    path_20.cubicTo(
        size.width * 0.08876748,
        size.height * 0.3902544,
        size.width * 0.08725290,
        size.height * 0.3862935,
        size.width * 0.08514885,
        size.height * 0.3826934);
    path_20.lineTo(size.width * 0.08718529, size.height * 0.3804204);
    path_20.cubicTo(
        size.width * 0.08950702,
        size.height * 0.3843986,
        size.width * 0.09118191,
        size.height * 0.3887851,
        size.width * 0.09216432,
        size.height * 0.3934573);
    path_20.cubicTo(
        size.width * 0.09385473,
        size.height * 0.4015017,
        size.width * 0.09304339,
        size.height * 0.4081999,
        size.width * 0.09265356,
        size.height * 0.4114182);
    path_20.cubicTo(
        size.width * 0.09102277,
        size.height * 0.4248806,
        size.width * 0.08840961,
        size.height * 0.4365898,
        size.width * 0.08564243,
        size.height * 0.4489858);
    path_20.cubicTo(
        size.width * 0.08462087,
        size.height * 0.4535646,
        size.width * 0.08357238,
        size.height * 0.4582618,
        size.width * 0.08253484,
        size.height * 0.4632155);
    path_20.cubicTo(
        size.width * 0.08116642,
        size.height * 0.4697492,
        size.width * 0.07946262,
        size.height * 0.4778830,
        size.width * 0.07782761,
        size.height * 0.4887688);
    path_20.cubicTo(
        size.width * 0.07619247,
        size.height * 0.4996474,
        size.width * 0.07500409,
        size.height * 0.5106601,
        size.width * 0.07429167,
        size.height * 0.5215048);
    path_20.cubicTo(
        size.width * 0.07327365,
        size.height * 0.5370406,
        size.width * 0.07342658,
        size.height * 0.5471285,
        size.width * 0.07347665,
        size.height * 0.5504427);
    path_20.cubicTo(
        size.width * 0.07350253,
        size.height * 0.5522121,
        size.width * 0.07350812,
        size.height * 0.5525828,
        size.width * 0.07309667,
        size.height * 0.5531540);
    path_20.lineTo(size.width * 0.07309667, size.height * 0.5531540);
    path_20.close();

    Paint paint_20_fill = Paint()..style = PaintingStyle.fill;
    paint_20_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_20, paint_20_fill);

    Path path_21 = Path();
    path_21.moveTo(size.width * 0.07956239, size.height * 0.3868562);
    path_21.cubicTo(
        size.width * 0.07945768,
        size.height * 0.3868239,
        size.width * 0.07935229,
        size.height * 0.3867878,
        size.width * 0.07924677,
        size.height * 0.3867444);
    path_21.cubicTo(
        size.width * 0.07709903,
        size.height * 0.3859123,
        size.width * 0.07537623,
        size.height * 0.3834932,
        size.width * 0.07412482,
        size.height * 0.3795555);
    path_21.cubicTo(
        size.width * 0.07353910,
        size.height * 0.3777039,
        size.width * 0.07340083,
        size.height * 0.3757551,
        size.width * 0.07312514,
        size.height * 0.3718687);
    path_21.cubicTo(
        size.width * 0.07308185,
        size.height * 0.3712694,
        size.width * 0.07289071,
        size.height * 0.3682373,
        size.width * 0.07312570,
        size.height * 0.3642189);
    path_21.cubicTo(
        size.width * 0.07327858,
        size.height * 0.3615931,
        size.width * 0.07348281,
        size.height * 0.3605384,
        size.width * 0.07399983,
        size.height * 0.3597104);
    path_21.cubicTo(
        size.width * 0.07457398,
        size.height * 0.3587878,
        size.width * 0.07534750,
        size.height * 0.3582595,
        size.width * 0.07616492,
        size.height * 0.3579942);
    path_21.cubicTo(
        size.width * 0.07618703,
        size.height * 0.3576466,
        size.width * 0.07626933,
        size.height * 0.3573066,
        size.width * 0.07643258,
        size.height * 0.3569844);
    path_21.cubicTo(
        size.width * 0.07710502,
        size.height * 0.3556472,
        size.width * 0.07823060,
        size.height * 0.3561968,
        size.width * 0.07884134,
        size.height * 0.3564827);
    path_21.cubicTo(
        size.width * 0.07914905,
        size.height * 0.3566354,
        size.width * 0.07953249,
        size.height * 0.3568296,
        size.width * 0.07996382,
        size.height * 0.3569300);
    path_21.cubicTo(
        size.width * 0.08064164,
        size.height * 0.3570919,
        size.width * 0.08104639,
        size.height * 0.3569273,
        size.width * 0.08165905,
        size.height * 0.3566821);
    path_21.cubicTo(
        size.width * 0.08224527,
        size.height * 0.3564469,
        size.width * 0.08297418,
        size.height * 0.3561543,
        size.width * 0.08398165,
        size.height * 0.3561792);
    path_21.cubicTo(
        size.width * 0.08596969,
        size.height * 0.3562169,
        size.width * 0.08744133,
        size.height * 0.3574519,
        size.width * 0.08792664,
        size.height * 0.3578583);
    path_21.cubicTo(
        size.width * 0.09048240,
        size.height * 0.3599808,
        size.width * 0.09136482,
        size.height * 0.3633670,
        size.width * 0.09238600,
        size.height * 0.3672879);
    path_21.cubicTo(
        size.width * 0.09258891,
        size.height * 0.3680739,
        size.width * 0.09326233,
        size.height * 0.3709146,
        size.width * 0.09341914,
        size.height * 0.3745727);
    path_21.cubicTo(
        size.width * 0.09353234,
        size.height * 0.3772119,
        size.width * 0.09328213,
        size.height * 0.3782922,
        size.width * 0.09299522,
        size.height * 0.3790646);
    path_21.cubicTo(
        size.width * 0.09240921,
        size.height * 0.3806526,
        size.width * 0.09151189,
        size.height * 0.3813888,
        size.width * 0.08928481,
        size.height * 0.3829375);
    path_21.cubicTo(
        size.width * 0.08695812,
        size.height * 0.3845605,
        size.width * 0.08579075,
        size.height * 0.3853725,
        size.width * 0.08483360,
        size.height * 0.3857900);
    path_21.cubicTo(
        size.width * 0.08260632,
        size.height * 0.3867564,
        size.width * 0.08120772,
        size.height * 0.3873633,
        size.width * 0.07956239,
        size.height * 0.3868561);
    path_21.lineTo(size.width * 0.07956239, size.height * 0.3868562);
    path_21.close();

    Paint paint_21_fill = Paint()..style = PaintingStyle.fill;
    paint_21_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_21, paint_21_fill);

    Path path_22 = Path();
    path_22.moveTo(size.width * 0.6768273, size.height * 0.08070983);
    path_22.cubicTo(
        size.width * 0.6768273,
        size.height * 0.08070983,
        size.width * 0.6912759,
        size.height * 0.09242127,
        size.width * 0.6865373,
        size.height * 0.1040031);
    path_22.cubicTo(
        size.width * 0.6817987,
        size.height * 0.1155850,
        size.width * 0.6751926,
        size.height * 0.1313608,
        size.width * 0.6796742,
        size.height * 0.1363293);
    path_22.cubicTo(
        size.width * 0.6841559,
        size.height * 0.1412977,
        size.width * 0.6915550,
        size.height * 0.1632037,
        size.width * 0.6915550,
        size.height * 0.1632037);
    path_22.cubicTo(
        size.width * 0.6915550,
        size.height * 0.1632037,
        size.width * 0.7231371,
        size.height * 0.1571071,
        size.width * 0.7201722,
        size.height * 0.1910141);
    path_22.cubicTo(
        size.width * 0.7172072,
        size.height * 0.2249212,
        size.width * 0.7023705,
        size.height * 0.2295439,
        size.width * 0.7150873,
        size.height * 0.2444605);
    path_22.cubicTo(
        size.width * 0.7278041,
        size.height * 0.2593771,
        size.width * 0.7018706,
        size.height * 0.2772172,
        size.width * 0.7018706,
        size.height * 0.2772172);
    path_22.cubicTo(
        size.width * 0.7018706,
        size.height * 0.2772172,
        size.width * 0.6839673,
        size.height * 0.2695061,
        size.width * 0.6798827,
        size.height * 0.2457936);
    path_22.cubicTo(
        size.width * 0.6757982,
        size.height * 0.2220810,
        size.width * 0.6835239,
        size.height * 0.2639248,
        size.width * 0.6809328,
        size.height * 0.2669251);
    path_22.cubicTo(
        size.width * 0.6783418,
        size.height * 0.2699254,
        size.width * 0.6682810,
        size.height * 0.2897016,
        size.width * 0.6611620,
        size.height * 0.2634080);
    path_22.cubicTo(
        size.width * 0.6540430,
        size.height * 0.2371144,
        size.width * 0.6610925,
        size.height * 0.2269199,
        size.width * 0.6516858,
        size.height * 0.2114017);
    path_22.cubicTo(
        size.width * 0.6422791,
        size.height * 0.1958835,
        size.width * 0.6358837,
        size.height * 0.1707837,
        size.width * 0.6361639,
        size.height * 0.1663961);
    path_22.cubicTo(
        size.width * 0.6364441,
        size.height * 0.1620085,
        size.width * 0.6254038,
        size.height * 0.1219713,
        size.width * 0.6423971,
        size.height * 0.1063570);
    path_22.cubicTo(
        size.width * 0.6593905,
        size.height * 0.09074280,
        size.width * 0.6768273,
        size.height * 0.08070988,
        size.width * 0.6768273,
        size.height * 0.08070988);
    path_22.close();

    Paint paint_22_fill = Paint()..style = PaintingStyle.fill;
    paint_22_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_22, paint_22_fill);

    Path path_23 = Path();
    path_23.moveTo(size.width * 0.8191467, size.height * 0.4486033);
    path_23.cubicTo(
        size.width * 0.8275355,
        size.height * 0.4581991,
        size.width * 0.8379177,
        size.height * 0.4599948,
        size.width * 0.8423352,
        size.height * 0.4526151);
    path_23.cubicTo(
        size.width * 0.8467528,
        size.height * 0.4452353,
        size.width * 0.8435327,
        size.height * 0.4314767,
        size.width * 0.8351400,
        size.height * 0.4218790);
    path_23.cubicTo(
        size.width * 0.8318254,
        size.height * 0.4179816,
        size.width * 0.8278838,
        size.height * 0.4152379,
        size.width * 0.8236448,
        size.height * 0.4138776);
    path_23.lineTo(size.width * 0.7877294, size.height * 0.3738403);
    path_23.lineTo(size.width * 0.7744948, size.height * 0.3975352);
    path_23.lineTo(size.width * 0.8113062, size.height * 0.4344892);
    path_23.cubicTo(
        size.width * 0.8130666,
        size.height * 0.4399918,
        size.width * 0.8157551,
        size.height * 0.4448316,
        size.width * 0.8191467,
        size.height * 0.4486033);
    path_23.close();

    Paint paint_23_fill = Paint()..style = PaintingStyle.fill;
    paint_23_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_23, paint_23_fill);

    Path path_24 = Path();
    path_24.moveTo(size.width * 0.7115055, size.height * 0.2302512);
    path_24.cubicTo(
        size.width * 0.7115055,
        size.height * 0.2302512,
        size.width * 0.6833204,
        size.height * 0.2041992,
        size.width * 0.6740906,
        size.height * 0.2169737);
    path_24.cubicTo(
        size.width * 0.6648608,
        size.height * 0.2297483,
        size.width * 0.6670651,
        size.height * 0.2616555,
        size.width * 0.6670651,
        size.height * 0.2616555);
    path_24.lineTo(size.width * 0.7409782, size.height * 0.3807119);
    path_24.lineTo(size.width * 0.7995877, size.height * 0.4322024);
    path_24.lineTo(size.width * 0.8153035, size.height * 0.3981902);
    path_24.lineTo(size.width * 0.7660296, size.height * 0.3374205);
    path_24.lineTo(size.width * 0.7115055, size.height * 0.2302512);
    path_24.close();

    Paint paint_24_fill = Paint()..style = PaintingStyle.fill;
    paint_24_fill.color = Color(0xff3f3d56).withOpacity(1.0);
    canvas.drawPath(path_24, paint_24_fill);

    Path path_25 = Path();
    path_25.moveTo(size.width * 0.6701907, size.height * 0.1738182);
    path_25.lineTo(size.width * 0.6804174, size.height * 0.2240577);
    path_25.lineTo(size.width * 0.6242886, size.height * 0.2240577);
    path_25.lineTo(size.width * 0.6427713, size.height * 0.1621551);
    path_25.lineTo(size.width * 0.6701907, size.height * 0.1738182);
    path_25.close();

    Paint paint_25_fill = Paint()..style = PaintingStyle.fill;
    paint_25_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_25, paint_25_fill);

    Path path_26 = Path();
    path_26.moveTo(size.width * 0.6701907, size.height * 0.1738182);
    path_26.lineTo(size.width * 0.6804174, size.height * 0.2240577);
    path_26.lineTo(size.width * 0.6242886, size.height * 0.2240577);
    path_26.lineTo(size.width * 0.6427713, size.height * 0.1621551);
    path_26.lineTo(size.width * 0.6701907, size.height * 0.1738182);
    path_26.close();

    Paint paint_26_fill = Paint()..style = PaintingStyle.fill;
    paint_26_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_26, paint_26_fill);

    Path path_27 = Path();
    path_27.moveTo(size.width * 0.5477851, size.height * 0.5447519);
    path_27.cubicTo(
        size.width * 0.5470605,
        size.height * 0.5597687,
        size.width * 0.5520793,
        size.height * 0.5724579,
        size.width * 0.5589940,
        size.height * 0.5730936);
    path_27.cubicTo(
        size.width * 0.5659087,
        size.height * 0.5737294,
        size.width * 0.5720995,
        size.height * 0.5620721,
        size.width * 0.5728229,
        size.height * 0.5470497);
    path_27.cubicTo(
        size.width * 0.5731714,
        size.height * 0.5410544,
        size.width * 0.5724761,
        size.height * 0.5350309,
        size.width * 0.5707950,
        size.height * 0.5294831);
    path_27.lineTo(size.width * 0.5732836, size.height * 0.4658024);
    path_27.lineTo(size.width * 0.5516373, size.height * 0.4648252);
    path_27.lineTo(size.width * 0.5514821, size.height * 0.5277069);
    path_27.cubicTo(
        size.width * 0.5492825,
        size.height * 0.5328990,
        size.width * 0.5480148,
        size.height * 0.5387437,
        size.width * 0.5477851,
        size.height * 0.5447519);
    path_27.close();

    Paint paint_27_fill = Paint()..style = PaintingStyle.fill;
    paint_27_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_27, paint_27_fill);

    Path path_28 = Path();
    path_28.moveTo(size.width * 0.6129651, size.height * 0.2963661);
    path_28.cubicTo(
        size.width * 0.6129651,
        size.height * 0.2963661,
        size.width * 0.6117680,
        size.height * 0.2495315,
        size.width * 0.5988727,
        size.height * 0.2466564);
    path_28.cubicTo(
        size.width * 0.5859773,
        size.height * 0.2437814,
        size.width * 0.5685419,
        size.height * 0.2649153,
        size.width * 0.5685419,
        size.height * 0.2649153);
    path_28.lineTo(size.width * 0.5419059, size.height * 0.4174118);
    path_28.lineTo(size.width * 0.5459698, size.height * 0.5132325);
    path_28.lineTo(size.width * 0.5751223, size.height * 0.5109565);
    path_28.lineTo(size.width * 0.5819643, size.height * 0.4201738);
    path_28.lineTo(size.width * 0.6129651, size.height * 0.2963660);
    path_28.close();

    Paint paint_28_fill = Paint()..style = PaintingStyle.fill;
    paint_28_fill.color = Color(0xff3f3d56).withOpacity(1.0);
    canvas.drawPath(path_28, paint_28_fill);

    Path path_29 = Path();
    path_29.moveTo(size.width * 0.7379896, size.height * 0.8560522);
    path_29.cubicTo(
        size.width * 0.7379896,
        size.height * 0.8560522,
        size.width * 0.7592005,
        size.height * 0.9104962,
        size.width * 0.7576854,
        size.height * 0.9084022);
    path_29.cubicTo(
        size.width * 0.7561703,
        size.height * 0.9063082,
        size.width * 0.7304143,
        size.height * 0.9188721,
        size.width * 0.7304143,
        size.height * 0.9188721);
    path_29.lineTo(size.width * 0.7152637, size.height * 0.8644282);
    path_29.lineTo(size.width * 0.7379896, size.height * 0.8560522);
    path_29.close();

    Paint paint_29_fill = Paint()..style = PaintingStyle.fill;
    paint_29_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_29, paint_29_fill);

    Path path_30 = Path();
    path_30.moveTo(size.width * 0.7692963, size.height * 0.4749538);
    path_30.cubicTo(
        size.width * 0.7692963,
        size.height * 0.4749538,
        size.width * 0.7801540,
        size.height * 0.5349402,
        size.width * 0.7790587,
        size.height * 0.5323950);
    path_30.cubicTo(
        size.width * 0.7779634,
        size.height * 0.5298499,
        size.width * 0.7507620,
        size.height * 0.5332612,
        size.width * 0.7507620,
        size.height * 0.5332612);
    path_30.lineTo(size.width * 0.7457779, size.height * 0.4753373);
    path_30.lineTo(size.width * 0.7692963, size.height * 0.4749538);
    path_30.close();

    Paint paint_30_fill = Paint()..style = PaintingStyle.fill;
    paint_30_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawPath(path_30, paint_30_fill);

    Path path_31 = Path();
    path_31.moveTo(size.width * 0.6849625, size.height * 0.2073057);
    path_31.lineTo(size.width * 0.6320070, size.height * 0.2073057);
    path_31.lineTo(size.width * 0.5743632, size.height * 0.2617496);
    path_31.lineTo(size.width * 0.5576975, size.height * 0.4523034);
    path_31.lineTo(size.width * 0.5667879, size.height * 0.4899953);
    path_31.lineTo(size.width * 0.5834535, size.height * 0.5339693);
    path_31.cubicTo(
        size.width * 0.5834535,
        size.height * 0.5339693,
        size.width * 0.5667879,
        size.height * 0.4376454,
        size.width * 0.6076945,
        size.height * 0.4753374);
    path_31.cubicTo(
        size.width * 0.6486011,
        size.height * 0.5130293,
        size.width * 0.6516312,
        size.height * 0.5193113,
        size.width * 0.6516312,
        size.height * 0.5193113);
    path_31.lineTo(size.width * 0.7061734, size.height * 0.4816194);
    path_31.lineTo(size.width * 0.7266267, size.height * 0.3256166);
    path_31.lineTo(size.width * 0.7114761, size.height * 0.2397627);
    path_31.lineTo(size.width * 0.6849625, size.height * 0.2073057);
    path_31.close();

    Paint paint_31_fill = Paint()..style = PaintingStyle.fill;
    paint_31_fill.color = Color(0xff3f3d56).withOpacity(1.0);
    canvas.drawPath(path_31, paint_31_fill);

    Path path_32 = Path();
    path_32.moveTo(size.width * 0.5804234, size.height * 0.4648674);
    path_32.cubicTo(
        size.width * 0.6283573,
        size.height * 0.4741743,
        size.width * 0.6716531,
        size.height * 0.4660598,
        size.width * 0.7069309,
        size.height * 0.4278298);
    path_32.cubicTo(
        size.width * 0.7069309,
        size.height * 0.4278298,
        size.width * 0.7326869,
        size.height * 0.5471876,
        size.width * 0.6857201,
        size.height * 0.5597516);
    path_32.cubicTo(
        size.width * 0.6387532,
        size.height * 0.5723156,
        size.width * 0.5864837,
        size.height * 0.5507213,
        size.width * 0.5804234,
        size.height * 0.5297813);
    path_32.cubicTo(
        size.width * 0.5743632,
        size.height * 0.5088413,
        size.width * 0.5804234,
        size.height * 0.4648674,
        size.width * 0.5804234,
        size.height * 0.4648674);
    path_32.close();

    Paint paint_32_fill = Paint()..style = PaintingStyle.fill;
    paint_32_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_32, paint_32_fill);

    Path path_33 = Path();
    path_33.moveTo(size.width * 0.6698119, size.height * 0.5025593);
    path_33.lineTo(size.width * 0.7220815, size.height * 0.6728275);
    path_33.lineTo(size.width * 0.7463225, size.height * 0.8696632);
    path_33.lineTo(size.width * 0.7145062, size.height * 0.8801332);
    path_33.lineTo(size.width * 0.6575960, size.height * 0.6990024);
    path_33.lineTo(size.width * 0.5804234, size.height * 0.5255933);
    path_33.lineTo(size.width * 0.6698119, size.height * 0.5025593);
    path_33.close();

    Paint paint_33_fill = Paint()..style = PaintingStyle.fill;
    paint_33_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_33, paint_33_fill);

    Path path_34 = Path();
    path_34.moveTo(size.width * 0.6766297, size.height * 0.4540048);
    path_34.cubicTo(
        size.width * 0.6766297,
        size.height * 0.4540048,
        size.width * 0.6887502,
        size.height * 0.3241769,
        size.width * 0.7114761,
        size.height * 0.3158010);
    path_34.cubicTo(
        size.width * 0.7225551,
        size.height * 0.3117176,
        size.width * 0.7329139,
        size.height * 0.3121132,
        size.width * 0.7406217,
        size.height * 0.3135912);
    path_34.cubicTo(
        size.width * 0.7483904,
        size.height * 0.3150809,
        size.width * 0.7545834,
        size.height * 0.3232844,
        size.width * 0.7559418,
        size.height * 0.3339607);
    path_34.lineTo(size.width * 0.7765938, size.height * 0.4962774);
    path_34.lineTo(size.width * 0.7473901, size.height * 0.4962774);
    path_34.lineTo(size.width * 0.7379896, size.height * 0.4523034);
    path_34.lineTo(size.width * 0.7129911, size.height * 0.5126367);
    path_34.lineTo(size.width * 0.6766297, size.height * 0.4540048);
    path_34.close();

    Paint paint_34_fill = Paint()..style = PaintingStyle.fill;
    paint_34_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_34, paint_34_fill);

    Path path_35 = Path();
    path_35.moveTo(size.width * 0.7508676, size.height * 0.5168247);
    path_35.lineTo(size.width * 0.7797432, size.height * 0.5126367);
    path_35.lineTo(size.width * 0.7841989, size.height * 0.5356707);
    path_35.cubicTo(
        size.width * 0.7841989,
        size.height * 0.5356707,
        size.width * 0.8311658,
        size.height * 0.5943026,
        size.width * 0.8069248,
        size.height * 0.5984906);
    path_35.cubicTo(
        size.width * 0.7826839,
        size.height * 0.6026786,
        size.width * 0.7599580,
        size.height * 0.5796446,
        size.width * 0.7599580,
        size.height * 0.5796446);
    path_35.lineTo(size.width * 0.7266118, size.height * 0.5532058);
    path_35.cubicTo(
        size.width * 0.7266118,
        size.height * 0.5532058,
        size.width * 0.7395047,
        size.height * 0.5057003,
        size.width * 0.7485950,
        size.height * 0.5057003);
    path_35.cubicTo(
        size.width * 0.7576854,
        size.height * 0.5057003,
        size.width * 0.7508676,
        size.height * 0.5168247,
        size.width * 0.7508676,
        size.height * 0.5168247);
    path_35.close();

    Paint paint_35_fill = Paint()..style = PaintingStyle.fill;
    paint_35_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_35, paint_35_fill);

    Path path_36 = Path();
    path_36.moveTo(size.width * 0.7357170, size.height * 0.9094492);
    path_36.lineTo(size.width * 0.7645926, size.height * 0.9052612);
    path_36.lineTo(size.width * 0.7690483, size.height * 0.9282951);
    path_36.cubicTo(
        size.width * 0.7690483,
        size.height * 0.9282951,
        size.width * 0.8160152,
        size.height * 0.9869270,
        size.width * 0.7917742,
        size.height * 0.9911150);
    path_36.cubicTo(
        size.width * 0.7675333,
        size.height * 0.9953030,
        size.width * 0.7448074,
        size.height * 0.9722691,
        size.width * 0.7448074,
        size.height * 0.9722691);
    path_36.lineTo(size.width * 0.7114612, size.height * 0.9458303);
    path_36.cubicTo(
        size.width * 0.7114612,
        size.height * 0.9458303,
        size.width * 0.7137487,
        size.height * 0.8962308,
        size.width * 0.7228390,
        size.height * 0.8962308);
    path_36.cubicTo(
        size.width * 0.7319294,
        size.height * 0.8962308,
        size.width * 0.7357170,
        size.height * 0.9094492,
        size.width * 0.7357170,
        size.height * 0.9094492);
    path_36.close();

    Paint paint_36_fill = Paint()..style = PaintingStyle.fill;
    paint_36_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_36, paint_36_fill);

    Paint paint_37_fill = Paint()..style = PaintingStyle.fill;
    paint_37_fill.color = Color(0xffffb6b6).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.6568554, size.height * 0.1380172),
        size.width * 0.03380192, paint_37_fill);

    Path path_38 = Path();
    path_38.moveTo(size.width * 0.6698128, size.height * 0.08584838);
    path_38.cubicTo(
        size.width * 0.6698128,
        size.height * 0.08584838,
        size.width * 0.6754465,
        size.height * 0.1076503,
        size.width * 0.6664327,
        size.height * 0.1123221);
    path_38.cubicTo(
        size.width * 0.6574188,
        size.height * 0.1169940,
        size.width * 0.6450248,
        size.height * 0.1232231,
        size.width * 0.6461515,
        size.height * 0.1310095);
    path_38.cubicTo(
        size.width * 0.6472782,
        size.height * 0.1387959,
        size.width * 0.6427713,
        size.height * 0.1621551,
        size.width * 0.6427713,
        size.height * 0.1621551);
    path_38.cubicTo(
        size.width * 0.6427713,
        size.height * 0.1621551,
        size.width * 0.6698129,
        size.height * 0.1855143,
        size.width * 0.6517852,
        size.height * 0.2088735);
    path_38.cubicTo(
        size.width * 0.6337575,
        size.height * 0.2322326,
        size.width * 0.6202367,
        size.height * 0.2226069,
        size.width * 0.6230535,
        size.height * 0.2453285);
    path_38.cubicTo(
        size.width * 0.6258704,
        size.height * 0.2680501,
        size.width * 0.5977021,
        size.height * 0.2587064,
        size.width * 0.5977021,
        size.height * 0.2587064);
    path_38.cubicTo(
        size.width * 0.5977021,
        size.height * 0.2587064,
        size.width * 0.5875615,
        size.height * 0.2369045,
        size.width * 0.5954486,
        size.height * 0.2151026);
    path_38.cubicTo(
        size.width * 0.6033357,
        size.height * 0.1933007,
        size.width * 0.5898150,
        size.height * 0.2322326,
        size.width * 0.5864348,
        size.height * 0.2322326);
    path_38.cubicTo(
        size.width * 0.5830546,
        size.height * 0.2322326,
        size.width * 0.5661536,
        size.height * 0.2384618,
        size.width * 0.5729140,
        size.height * 0.2119880);
    path_38.cubicTo(
        size.width * 0.5796744,
        size.height * 0.1855142,
        size.width * 0.5898150,
        size.height * 0.1839570,
        size.width * 0.5898150,
        size.height * 0.1637123);
    path_38.cubicTo(
        size.width * 0.5898150,
        size.height * 0.1434677,
        size.width * 0.5965754,
        size.height * 0.1185512,
        size.width * 0.5988288,
        size.height * 0.1154367);
    path_38.cubicTo(
        size.width * 0.6010823,
        size.height * 0.1123221,
        size.width * 0.6112229,
        size.height * 0.07183286,
        size.width * 0.6315040,
        size.height * 0.07494743);
    path_38.cubicTo(
        size.width * 0.6517852,
        size.height * 0.07806200,
        size.width * 0.6698129,
        size.height * 0.08584838,
        size.width * 0.6698129,
        size.height * 0.08584838);
    path_38.close();

    Paint paint_38_fill = Paint()..style = PaintingStyle.fill;
    paint_38_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_38, paint_38_fill);

    Path path_39 = Path();
    path_39.moveTo(size.width * 0.3743753, size.height * 0.8560522);
    path_39.cubicTo(
        size.width * 0.3743753,
        size.height * 0.8560522,
        size.width * 0.3531645,
        size.height * 0.9104962,
        size.width * 0.3546795,
        size.height * 0.9084022);
    path_39.cubicTo(
        size.width * 0.3561946,
        size.height * 0.9063082,
        size.width * 0.3819506,
        size.height * 0.9188721,
        size.width * 0.3819506,
        size.height * 0.9188721);
    path_39.lineTo(size.width * 0.3971012, size.height * 0.8644282);
    path_39.lineTo(size.width * 0.3743753, size.height * 0.8560522);
    path_39.close();

    Paint paint_39_fill = Paint()..style = PaintingStyle.fill;
    paint_39_fill.color = Color(0xffa0616a).withOpacity(1.0);
    canvas.drawPath(path_39, paint_39_fill);

    Path path_40 = Path();
    path_40.moveTo(size.width * 0.5319415, size.height * 0.4648674);
    path_40.cubicTo(
        size.width * 0.4840076,
        size.height * 0.4741743,
        size.width * 0.4407119,
        size.height * 0.4660598,
        size.width * 0.4054340,
        size.height * 0.4278298);
    path_40.cubicTo(
        size.width * 0.4054340,
        size.height * 0.4278298,
        size.width * 0.3796780,
        size.height * 0.5471876,
        size.width * 0.4266449,
        size.height * 0.5597516);
    path_40.cubicTo(
        size.width * 0.4736117,
        size.height * 0.5723156,
        size.width * 0.5258813,
        size.height * 0.5507213,
        size.width * 0.5319415,
        size.height * 0.5297813);
    path_40.cubicTo(
        size.width * 0.5380018,
        size.height * 0.5088413,
        size.width * 0.5319415,
        size.height * 0.4648674,
        size.width * 0.5319415,
        size.height * 0.4648674);
    path_40.close();

    Paint paint_40_fill = Paint()..style = PaintingStyle.fill;
    paint_40_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_40, paint_40_fill);

    Path path_41 = Path();
    path_41.moveTo(size.width * 0.4425530, size.height * 0.5025593);
    path_41.lineTo(size.width * 0.3902834, size.height * 0.6728275);
    path_41.lineTo(size.width * 0.3660425, size.height * 0.8696632);
    path_41.lineTo(size.width * 0.3978587, size.height * 0.8801332);
    path_41.lineTo(size.width * 0.4547689, size.height * 0.6990024);
    path_41.lineTo(size.width * 0.5319415, size.height * 0.5255933);
    path_41.lineTo(size.width * 0.4425530, size.height * 0.5025593);
    path_41.close();

    Paint paint_41_fill = Paint()..style = PaintingStyle.fill;
    paint_41_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_41, paint_41_fill);

    Path path_42 = Path();
    path_42.moveTo(size.width * 0.3766479, size.height * 0.9094492);
    path_42.lineTo(size.width * 0.3477723, size.height * 0.9052612);
    path_42.lineTo(size.width * 0.3433166, size.height * 0.9282951);
    path_42.cubicTo(
        size.width * 0.3433166,
        size.height * 0.9282951,
        size.width * 0.2963497,
        size.height * 0.9869270,
        size.width * 0.3205907,
        size.height * 0.9911150);
    path_42.cubicTo(
        size.width * 0.3448317,
        size.height * 0.9953030,
        size.width * 0.3675575,
        size.height * 0.9722691,
        size.width * 0.3675575,
        size.height * 0.9722691);
    path_42.lineTo(size.width * 0.4009038, size.height * 0.9458303);
    path_42.cubicTo(
        size.width * 0.4009038,
        size.height * 0.9458303,
        size.width * 0.3986163,
        size.height * 0.8962308,
        size.width * 0.3895259,
        size.height * 0.8962308);
    path_42.cubicTo(
        size.width * 0.3804356,
        size.height * 0.8962308,
        size.width * 0.3766479,
        size.height * 0.9094492,
        size.width * 0.3766479,
        size.height * 0.9094492);
    path_42.close();

    Paint paint_42_fill = Paint()..style = PaintingStyle.fill;
    paint_42_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_42, paint_42_fill);

    Path path_43 = Path();
    path_43.moveTo(size.width * 0.4222689, size.height * 0.8274078);
    path_43.cubicTo(
        size.width * 0.4222689,
        size.height * 0.8274078,
        size.width * 0.4142452,
        size.height * 0.8882402,
        size.width * 0.4152189,
        size.height * 0.8856024);
    path_43.cubicTo(
        size.width * 0.4161927,
        size.height * 0.8829645,
        size.width * 0.4434968,
        size.height * 0.8839335,
        size.width * 0.4434968,
        size.height * 0.8839335);
    path_43.lineTo(size.width * 0.4457559, size.height * 0.8256851);
    path_43.lineTo(size.width * 0.4222689, size.height * 0.8274078);
    path_43.close();

    Paint paint_43_fill = Paint()..style = PaintingStyle.fill;
    paint_43_fill.color = Color(0xffa0616a).withOpacity(1.0);
    canvas.drawPath(path_43, paint_43_fill);

    Path path_44 = Path();
    path_44.moveTo(size.width * 0.4082177, size.height * 0.4620869);
    path_44.lineTo(size.width * 0.3965034, size.height * 0.6463372);
    path_44.lineTo(size.width * 0.4173807, size.height * 0.8439079);
    path_44.lineTo(size.width * 0.4499820, size.height * 0.8403011);
    path_44.lineTo(size.width * 0.4636859, size.height * 0.6437394);
    path_44.lineTo(size.width * 0.4983875, size.height * 0.4458829);
    path_44.lineTo(size.width * 0.4082177, size.height * 0.4620869);
    path_44.close();

    Paint paint_44_fill = Paint()..style = PaintingStyle.fill;
    paint_44_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_44, paint_44_fill);

    Path path_45 = Path();
    path_45.moveTo(size.width * 0.4363495, size.height * 0.8772312);
    path_45.lineTo(size.width * 0.4079475, size.height * 0.8855598);
    path_45.lineTo(size.width * 0.4088506, size.height * 0.9093701);
    path_45.cubicTo(
        size.width * 0.4088506,
        size.height * 0.9093701,
        size.width * 0.3772619,
        size.height * 0.9851683,
        size.width * 0.4012553,
        size.height * 0.9788159);
    path_45.cubicTo(
        size.width * 0.4252486,
        size.height * 0.9724635,
        size.width * 0.4417246,
        size.height * 0.9408630,
        size.width * 0.4417246,
        size.height * 0.9408630);
    path_45.lineTo(size.width * 0.4675429, size.height * 0.9014953);
    path_45.cubicTo(
        size.width * 0.4675429,
        size.height * 0.9014953,
        size.width * 0.4542958,
        size.height * 0.8552905,
        size.width * 0.4456488,
        size.height * 0.8591665);
    path_45.cubicTo(
        size.width * 0.4370019,
        size.height * 0.8630426,
        size.width * 0.4363495,
        size.height * 0.8772312,
        size.width * 0.4363495,
        size.height * 0.8772312);
    path_45.close();

    Paint paint_45_fill = Paint()..style = PaintingStyle.fill;
    paint_45_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_45, paint_45_fill);

    Path path_46 = Path();
    path_46.moveTo(size.width * 0.4355377, size.height * 0.08070983);
    path_46.cubicTo(
        size.width * 0.4355377,
        size.height * 0.08070983,
        size.width * 0.4210890,
        size.height * 0.09242127,
        size.width * 0.4258276,
        size.height * 0.1040031);
    path_46.cubicTo(
        size.width * 0.4305663,
        size.height * 0.1155850,
        size.width * 0.4371723,
        size.height * 0.1313608,
        size.width * 0.4326907,
        size.height * 0.1363293);
    path_46.cubicTo(
        size.width * 0.4282091,
        size.height * 0.1412977,
        size.width * 0.4208099,
        size.height * 0.1632037,
        size.width * 0.4208099,
        size.height * 0.1632037);
    path_46.cubicTo(
        size.width * 0.4208099,
        size.height * 0.1632037,
        size.width * 0.3892278,
        size.height * 0.1571071,
        size.width * 0.3921927,
        size.height * 0.1910141);
    path_46.cubicTo(
        size.width * 0.3951577,
        size.height * 0.2249212,
        size.width * 0.4099944,
        size.height * 0.2295439,
        size.width * 0.3972776,
        size.height * 0.2444605);
    path_46.cubicTo(
        size.width * 0.3845608,
        size.height * 0.2593771,
        size.width * 0.4104943,
        size.height * 0.2772172,
        size.width * 0.4104943,
        size.height * 0.2772172);
    path_46.cubicTo(
        size.width * 0.4104943,
        size.height * 0.2772172,
        size.width * 0.4283976,
        size.height * 0.2695061,
        size.width * 0.4324822,
        size.height * 0.2457936);
    path_46.cubicTo(
        size.width * 0.4365668,
        size.height * 0.2220810,
        size.width * 0.4288411,
        size.height * 0.2639248,
        size.width * 0.4314321,
        size.height * 0.2669251);
    path_46.cubicTo(
        size.width * 0.4340232,
        size.height * 0.2699254,
        size.width * 0.4440839,
        size.height * 0.2897016,
        size.width * 0.4512029,
        size.height * 0.2634080);
    path_46.cubicTo(
        size.width * 0.4583219,
        size.height * 0.2371144,
        size.width * 0.4512724,
        size.height * 0.2269199,
        size.width * 0.4606791,
        size.height * 0.2114017);
    path_46.cubicTo(
        size.width * 0.4700858,
        size.height * 0.1958835,
        size.width * 0.4764812,
        size.height * 0.1707837,
        size.width * 0.4762010,
        size.height * 0.1663961);
    path_46.cubicTo(
        size.width * 0.4759209,
        size.height * 0.1620085,
        size.width * 0.4869612,
        size.height * 0.1219713,
        size.width * 0.4699678,
        size.height * 0.1063570);
    path_46.cubicTo(
        size.width * 0.4529744,
        size.height * 0.09074280,
        size.width * 0.4355377,
        size.height * 0.08070988,
        size.width * 0.4355377,
        size.height * 0.08070988);
    path_46.close();

    Paint paint_46_fill = Paint()..style = PaintingStyle.fill;
    paint_46_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_46, paint_46_fill);

    Path path_47 = Path();
    path_47.moveTo(size.width * 0.4421742, size.height * 0.1738182);
    path_47.lineTo(size.width * 0.4319476, size.height * 0.2240577);
    path_47.lineTo(size.width * 0.4880764, size.height * 0.2240577);
    path_47.lineTo(size.width * 0.4695936, size.height * 0.1621551);
    path_47.lineTo(size.width * 0.4421742, size.height * 0.1738182);
    path_47.close();

    Paint paint_47_fill = Paint()..style = PaintingStyle.fill;
    paint_47_fill.color = Color(0xffa0616a).withOpacity(1.0);
    canvas.drawPath(path_47, paint_47_fill);

    Path path_48 = Path();
    path_48.moveTo(size.width * 0.4421742, size.height * 0.1738182);
    path_48.lineTo(size.width * 0.4319476, size.height * 0.2240577);
    path_48.lineTo(size.width * 0.4880764, size.height * 0.2240577);
    path_48.lineTo(size.width * 0.4695936, size.height * 0.1621551);
    path_48.lineTo(size.width * 0.4421742, size.height * 0.1738182);
    path_48.close();

    Paint paint_48_fill = Paint()..style = PaintingStyle.fill;
    paint_48_fill.color = Color(0xff000000).withOpacity(1.0);
    canvas.drawPath(path_48, paint_48_fill);

    Path path_49 = Path();
    path_49.moveTo(size.width * 0.5645798, size.height * 0.5447519);
    path_49.cubicTo(
        size.width * 0.5653044,
        size.height * 0.5597687,
        size.width * 0.5602856,
        size.height * 0.5724579,
        size.width * 0.5533709,
        size.height * 0.5730936);
    path_49.cubicTo(
        size.width * 0.5464562,
        size.height * 0.5737294,
        size.width * 0.5402654,
        size.height * 0.5620721,
        size.width * 0.5395420,
        size.height * 0.5470497);
    path_49.cubicTo(
        size.width * 0.5391935,
        size.height * 0.5410544,
        size.width * 0.5398889,
        size.height * 0.5350309,
        size.width * 0.5415700,
        size.height * 0.5294831);
    path_49.lineTo(size.width * 0.5390813, size.height * 0.4658024);
    path_49.lineTo(size.width * 0.5607276, size.height * 0.4648252);
    path_49.lineTo(size.width * 0.5608829, size.height * 0.5277069);
    path_49.cubicTo(
        size.width * 0.5630824,
        size.height * 0.5328990,
        size.width * 0.5643501,
        size.height * 0.5387437,
        size.width * 0.5645798,
        size.height * 0.5447519);
    path_49.close();

    Paint paint_49_fill = Paint()..style = PaintingStyle.fill;
    paint_49_fill.color = Color(0xffa0616a).withOpacity(1.0);
    canvas.drawPath(path_49, paint_49_fill);

    Path path_50 = Path();
    path_50.moveTo(size.width * 0.4993999, size.height * 0.2963661);
    path_50.cubicTo(
        size.width * 0.4993999,
        size.height * 0.2963661,
        size.width * 0.5005969,
        size.height * 0.2495315,
        size.width * 0.5134923,
        size.height * 0.2466564);
    path_50.cubicTo(
        size.width * 0.5263876,
        size.height * 0.2437814,
        size.width * 0.5438231,
        size.height * 0.2649153,
        size.width * 0.5438231,
        size.height * 0.2649153);
    path_50.lineTo(size.width * 0.5704590, size.height * 0.4174118);
    path_50.lineTo(size.width * 0.5663951, size.height * 0.5132325);
    path_50.lineTo(size.width * 0.5372427, size.height * 0.5109565);
    path_50.lineTo(size.width * 0.5304007, size.height * 0.4201738);
    path_50.lineTo(size.width * 0.4993999, size.height * 0.2963660);
    path_50.close();

    Paint paint_50_fill = Paint()..style = PaintingStyle.fill;
    paint_50_fill.color = Theme.of(Get.context!).primaryColor;
    canvas.drawPath(path_50, paint_50_fill);

    Path path_51 = Path();
    path_51.moveTo(size.width * 0.4274024, size.height * 0.2073057);
    path_51.lineTo(size.width * 0.4803579, size.height * 0.2073057);
    path_51.lineTo(size.width * 0.5380018, size.height * 0.2617496);
    path_51.lineTo(size.width * 0.5546674, size.height * 0.4523034);
    path_51.lineTo(size.width * 0.5455771, size.height * 0.4899953);
    path_51.lineTo(size.width * 0.5289114, size.height * 0.5339693);
    path_51.cubicTo(
        size.width * 0.5289114,
        size.height * 0.5339693,
        size.width * 0.5455771,
        size.height * 0.4376454,
        size.width * 0.5046704,
        size.height * 0.4753374);
    path_51.cubicTo(
        size.width * 0.5042614,
        size.height * 0.4757143,
        size.width * 0.5038561,
        size.height * 0.4760881,
        size.width * 0.5034546,
        size.height * 0.4764587);
    path_51.cubicTo(
        size.width * 0.4771223,
        size.height * 0.5007670,
        size.width * 0.4423766,
        size.height * 0.4982713,
        size.width * 0.4180017,
        size.height * 0.4703340);
    path_51.lineTo(size.width * 0.3986163, size.height * 0.4481154);
    path_51.lineTo(size.width * 0.4092217, size.height * 0.3748255);
    path_51.lineTo(size.width * 0.4008889, size.height * 0.2397627);
    path_51.lineTo(size.width * 0.4274024, size.height * 0.2073057);
    path_51.close();

    Paint paint_51_fill = Paint()..style = PaintingStyle.fill;
    paint_51_fill.color = Theme.of(Get.context!).primaryColor;
    canvas.drawPath(path_51, paint_51_fill);

    Path path_52 = Path();
    path_52.moveTo(size.width * 0.2948939, size.height * 0.4458739);
    path_52.cubicTo(
        size.width * 0.2864005,
        size.height * 0.4552924,
        size.width * 0.2759998,
        size.height * 0.4568698,
        size.width * 0.2716639,
        size.height * 0.4493981);
    path_52.cubicTo(
        size.width * 0.2673280,
        size.height * 0.4419264,
        size.width * 0.2706989,
        size.height * 0.4282370,
        size.width * 0.2791963,
        size.height * 0.4188168);
    path_52.cubicTo(
        size.width * 0.2825533,
        size.height * 0.4149895,
        size.width * 0.2865246,
        size.height * 0.4123289,
        size.width * 0.2907781,
        size.height * 0.4110578);
    path_52.lineTo(size.width * 0.3271296, size.height * 0.3717795);
    path_52.lineTo(size.width * 0.3401021, size.height * 0.3957497);
    path_52.lineTo(size.width * 0.3028887, size.height * 0.4319262);
    path_52.cubicTo(
        size.width * 0.3010679,
        size.height * 0.4373912,
        size.width * 0.2983265,
        size.height * 0.4421739,
        size.width * 0.2948939,
        size.height * 0.4458740);
    path_52.close();

    Paint paint_52_fill = Paint()..style = PaintingStyle.fill;
    paint_52_fill.color = Color(0xffa0616a).withOpacity(1.0);
    canvas.drawPath(path_52, paint_52_fill);

    Path path_53 = Path();
    path_53.moveTo(size.width * 0.4049236, size.height * 0.2298081);
    path_53.cubicTo(
        size.width * 0.4049236,
        size.height * 0.2298081,
        size.width * 0.4333920,
        size.height * 0.2043512,
        size.width * 0.4424802,
        size.height * 0.2173181);
    path_53.cubicTo(
        size.width * 0.4515685,
        size.height * 0.2302850,
        size.width * 0.4490136,
        size.height * 0.2621423,
        size.width * 0.4490136,
        size.height * 0.2621423);
    path_53.lineTo(size.width * 0.3737998, size.height * 0.3796323);
    path_53.lineTo(size.width * 0.3146309, size.height * 0.4298858);
    path_53.lineTo(size.width * 0.2992909, size.height * 0.3955473);
    path_53.lineTo(size.width * 0.3492274, size.height * 0.3358197);
    path_53.lineTo(size.width * 0.4049236, size.height * 0.2298081);
    path_53.close();

    Paint paint_53_fill = Paint()..style = PaintingStyle.fill;
    paint_53_fill.color = Theme.of(Get.context!).primaryColor;
    canvas.drawPath(path_53, paint_53_fill);

    Paint paint_54_fill = Paint()..style = PaintingStyle.fill;
    paint_54_fill.color = Color(0xffa0616a).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.4555095, size.height * 0.1380172),
        size.width * 0.03380192, paint_54_fill);

    Path path_55 = Path();
    path_55.moveTo(size.width * 0.4386821, size.height * 0.1067023);
    path_55.cubicTo(
        size.width * 0.4386821,
        size.height * 0.1067023,
        size.width * 0.4337023,
        size.height * 0.08375989,
        size.width * 0.4420020,
        size.height * 0.08375989);
    path_55.cubicTo(
        size.width * 0.4503018,
        size.height * 0.08375989,
        size.width * 0.4835005,
        size.height * 0.08605413,
        size.width * 0.4868204,
        size.height * 0.09064261);
    path_55.cubicTo(
        size.width * 0.4901403,
        size.height * 0.09523108,
        size.width * 0.5294247,
        size.height * 0.1412819,
        size.width * 0.5061855,
        size.height * 0.1779898);
    path_55.cubicTo(
        size.width * 0.4829464,
        size.height * 0.2146976,
        size.width * 0.5061855,
        size.height * 0.2324337,
        size.width * 0.5061855,
        size.height * 0.2324337);
    path_55.cubicTo(
        size.width * 0.5061855,
        size.height * 0.2324337,
        size.width * 0.5233391,
        size.height * 0.2879471,
        size.width * 0.5067397,
        size.height * 0.2925356);
    path_55.cubicTo(
        size.width * 0.4901403,
        size.height * 0.2971240,
        size.width * 0.4220513,
        size.height * 0.2708871,
        size.width * 0.4386821,
        size.height * 0.2282968);
    path_55.cubicTo(
        size.width * 0.4567301,
        size.height * 0.1820775,
        size.width * 0.4651273,
        size.height * 0.1091276,
        size.width * 0.4386821,
        size.height * 0.1067023);
    path_55.close();

    Paint paint_55_fill = Paint()..style = PaintingStyle.fill;
    paint_55_fill.color = Color(0xff2f2e41).withOpacity(1.0);
    canvas.drawPath(path_55, paint_55_fill);

    Path path_56 = Path();
    path_56.moveTo(size.width * 0.9917996, size.height * 0.4477712);
    path_56.cubicTo(
        size.width * 0.9912630,
        size.height * 0.4455016,
        size.width * 0.9871959,
        size.height * 0.4465008,
        size.width * 0.9868054,
        size.height * 0.4444708);
    path_56.cubicTo(
        size.width * 0.9864162,
        size.height * 0.4424481,
        size.width * 0.9903190,
        size.height * 0.4407521,
        size.width * 0.9933122,
        size.height * 0.4350520);
    path_56.cubicTo(
        size.width * 0.9938520,
        size.height * 0.4340241,
        size.width * 0.9972535,
        size.height * 0.4275463,
        size.width * 0.9959489,
        size.height * 0.4248217);
    path_56.cubicTo(
        size.width * 0.9934761,
        size.height * 0.4196574,
        size.width * 0.9762711,
        size.height * 0.4325197,
        size.width * 0.9721413,
        size.height * 0.4253018);
    path_56.cubicTo(
        size.width * 0.9712349,
        size.height * 0.4237178,
        size.width * 0.9708620,
        size.height * 0.4209984,
        size.width * 0.9681620,
        size.height * 0.4159375);
    path_56.cubicTo(
        size.width * 0.9670878,
        size.height * 0.4139242,
        size.width * 0.9663987,
        size.height * 0.4129522,
        size.width * 0.9655753,
        size.height * 0.4129810);
    path_56.cubicTo(
        size.width * 0.9644070,
        size.height * 0.4130217,
        size.width * 0.9639890,
        size.height * 0.4150418,
        size.width * 0.9621528,
        size.height * 0.4187010);
    path_56.cubicTo(
        size.width * 0.9593990,
        size.height * 0.4241888,
        size.width * 0.9584052,
        size.height * 0.4234998,
        size.width * 0.9565911,
        size.height * 0.4279962);
    path_56.cubicTo(
        size.width * 0.9552444,
        size.height * 0.4313340,
        size.width * 0.9550848,
        size.height * 0.4334668,
        size.width * 0.9541137,
        size.height * 0.4335925);
    path_56.cubicTo(
        size.width * 0.9527395,
        size.height * 0.4337704,
        size.width * 0.9521716,
        size.height * 0.4296146,
        size.width * 0.9504924,
        size.height * 0.4294534);
    path_56.cubicTo(
        size.width * 0.9487789,
        size.height * 0.4292889,
        size.width * 0.9470642,
        size.height * 0.4333953,
        size.width * 0.9462142,
        size.height * 0.4366035);
    path_56.cubicTo(
        size.width * 0.9446191,
        size.height * 0.4426240,
        size.width * 0.9456068,
        size.height * 0.4472256,
        size.width * 0.9458258,
        size.height * 0.4518116);
    path_56.cubicTo(
        size.width * 0.9460638,
        size.height * 0.4567954,
        size.width * 0.9455050,
        size.height * 0.4640909,
        size.width * 0.9415871,
        size.height * 0.4734548);
    path_56.lineTo(size.width * 0.9046323, size.height * 0.5548314);
    path_56.cubicTo(
        size.width * 0.9125687,
        size.height * 0.5382421,
        size.width * 0.9350971,
        size.height * 0.4930046,
        size.width * 0.9441737,
        size.height * 0.4764113);
    path_56.cubicTo(
        size.width * 0.9467940,
        size.height * 0.4716212,
        size.width * 0.9496098,
        size.height * 0.4668112,
        size.width * 0.9539437,
        size.height * 0.4659063);
    path_56.cubicTo(
        size.width * 0.9581163,
        size.height * 0.4650351,
        size.width * 0.9631934,
        size.height * 0.4678883,
        size.width * 0.9702798,
        size.height * 0.4677222);
    path_56.cubicTo(
        size.width * 0.9711074,
        size.height * 0.4677029,
        size.width * 0.9734106,
        size.height * 0.4676083,
        size.width * 0.9739708,
        size.height * 0.4659210);
    path_56.cubicTo(
        size.width * 0.9744340,
        size.height * 0.4645261,
        size.width * 0.9732840,
        size.height * 0.4633133,
        size.width * 0.9737023,
        size.height * 0.4620021);
    path_56.cubicTo(
        size.width * 0.9742635,
        size.height * 0.4602433,
        size.width * 0.9767882,
        size.height * 0.4609979,
        size.width * 0.9802289,
        size.height * 0.4598299);
    path_56.cubicTo(
        size.width * 0.9826550,
        size.height * 0.4590062,
        size.width * 0.9843033,
        size.height * 0.4576453,
        size.width * 0.9857207,
        size.height * 0.4564750);
    path_56.cubicTo(
        size.width * 0.9861481,
        size.height * 0.4561222,
        size.width * 0.9925141,
        size.height * 0.4507924,
        size.width * 0.9917997,
        size.height * 0.4477712);
    path_56.lineTo(size.width * 0.9917997, size.height * 0.4477712);
    path_56.close();

    Paint paint_56_fill = Paint()..style = PaintingStyle.fill;
    paint_56_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_56, paint_56_fill);

    Path path_57 = Path();
    path_57.moveTo(size.width * 0.8950082, size.height * 0.4667708);
    path_57.cubicTo(
        size.width * 0.8940475,
        size.height * 0.4664799,
        size.width * 0.8932288,
        size.height * 0.4695272,
        size.width * 0.8923953,
        size.height * 0.4692064);
    path_57.cubicTo(
        size.width * 0.8915647,
        size.height * 0.4688868,
        size.width * 0.8920885,
        size.height * 0.4657500,
        size.width * 0.8909280,
        size.height * 0.4620748);
    path_57.cubicTo(
        size.width * 0.8907187,
        size.height * 0.4614121,
        size.width * 0.8893998,
        size.height * 0.4572355,
        size.width * 0.8880558,
        size.height * 0.4573344);
    path_57.cubicTo(
        size.width * 0.8855085,
        size.height * 0.4575218,
        size.width * 0.8851118,
        size.height * 0.4729041,
        size.width * 0.8813570,
        size.height * 0.4736230);
    path_57.cubicTo(
        size.width * 0.8805331,
        size.height * 0.4737808,
        size.width * 0.8794597,
        size.height * 0.4732491,
        size.width * 0.8768835,
        size.height * 0.4736205);
    path_57.cubicTo(
        size.width * 0.8758587,
        size.height * 0.4737682,
        size.width * 0.8753147,
        size.height * 0.4739552,
        size.width * 0.8750873,
        size.height * 0.4745220);
    path_57.cubicTo(
        size.width * 0.8747647,
        size.height * 0.4753263,
        size.width * 0.8753614,
        size.height * 0.4761928,
        size.width * 0.8761310,
        size.height * 0.4784941);
    path_57.cubicTo(
        size.width * 0.8772852,
        size.height * 0.4819456,
        size.width * 0.8767538,
        size.height * 0.4824209,
        size.width * 0.8778271,
        size.height * 0.4849489);
    path_57.cubicTo(
        size.width * 0.8786239,
        size.height * 0.4868255,
        size.width * 0.8793352,
        size.height * 0.4875491,
        size.width * 0.8790996,
        size.height * 0.4882441);
    path_57.cubicTo(
        size.width * 0.8787663,
        size.height * 0.4892277,
        size.width * 0.8771267,
        size.height * 0.4884138,
        size.width * 0.8765849,
        size.height * 0.4895064);
    path_57.cubicTo(
        size.width * 0.8760321,
        size.height * 0.4906213,
        size.width * 0.8769956,
        size.height * 0.4929693,
        size.width * 0.8778896,
        size.height * 0.4944715);
    path_57.cubicTo(
        size.width * 0.8795673,
        size.height * 0.4972907,
        size.width * 0.8814864,
        size.height * 0.4979484,
        size.width * 0.8831781,
        size.height * 0.4991230);
    path_57.cubicTo(
        size.width * 0.8850166,
        size.height * 0.5003996,
        size.width * 0.8874461,
        size.height * 0.5028836,
        size.width * 0.8896408,
        size.height * 0.5082432);
    path_57.lineTo(size.width * 0.9078759, size.height * 0.5567914);
    path_57.cubicTo(
        size.width * 0.9042747,
        size.height * 0.5466211,
        size.width * 0.8947106,
        size.height * 0.5182864,
        size.width * 0.8914370,
        size.height * 0.5073415);
    path_57.cubicTo(
        size.width * 0.8904920,
        size.height * 0.5041820,
        size.width * 0.8895964,
        size.height * 0.5008840,
        size.width * 0.8905256,
        size.height * 0.4976830);
    path_57.cubicTo(
        size.width * 0.8914201,
        size.height * 0.4946010,
        size.width * 0.8938982,
        size.height * 0.4919803,
        size.width * 0.8958839,
        size.height * 0.4871253);
    path_57.cubicTo(
        size.width * 0.8961158,
        size.height * 0.4865583,
        size.width * 0.8967468,
        size.height * 0.4849686,
        size.width * 0.8963093,
        size.height * 0.4841017);
    path_57.cubicTo(
        size.width * 0.8959476,
        size.height * 0.4833851,
        size.width * 0.8951851,
        size.height * 0.4838153,
        size.width * 0.8948402,
        size.height * 0.4831531);
    path_57.cubicTo(
        size.width * 0.8943775,
        size.height * 0.4822650,
        size.width * 0.8953740,
        size.height * 0.4807701,
        size.width * 0.8959519,
        size.height * 0.4780991);
    path_57.cubicTo(
        size.width * 0.8963594,
        size.height * 0.4762156,
        size.width * 0.8963517,
        size.height * 0.4747048,
        size.width * 0.8963451,
        size.height * 0.4734056);
    path_57.cubicTo(
        size.width * 0.8963431,
        size.height * 0.4730139,
        size.width * 0.8962872,
        size.height * 0.4671577,
        size.width * 0.8950083,
        size.height * 0.4667706);
    path_57.lineTo(size.width * 0.8950083, size.height * 0.4667707);
    path_57.close();

    Paint paint_57_fill = Paint()..style = PaintingStyle.fill;
    paint_57_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_57, paint_57_fill);

    Path path_58 = Path();
    path_58.moveTo(size.width * 0.9132005, size.height * 0.4786162);
    path_58.lineTo(size.width * 0.9137737, size.height * 0.4713021);
    path_58.lineTo(size.width * 0.9141252, size.height * 0.4708426);
    path_58.cubicTo(
        size.width * 0.9157517,
        size.height * 0.4687180,
        size.width * 0.9167692,
        size.height * 0.4664672,
        size.width * 0.9171509,
        size.height * 0.4641507);
    path_58.cubicTo(
        size.width * 0.9172116,
        size.height * 0.4637824,
        size.width * 0.9172586,
        size.height * 0.4634098,
        size.width * 0.9173068,
        size.height * 0.4630305);
    path_58.cubicTo(
        size.width * 0.9174971,
        size.height * 0.4615266,
        size.width * 0.9177334,
        size.height * 0.4596571,
        size.width * 0.9187795,
        size.height * 0.4577154);
    path_58.cubicTo(
        size.width * 0.9193649,
        size.height * 0.4566335,
        size.width * 0.9209136,
        size.height * 0.4541884,
        size.width * 0.9225109,
        size.height * 0.4550425);
    path_58.cubicTo(
        size.width * 0.9229419,
        size.height * 0.4552658,
        size.width * 0.9232329,
        size.height * 0.4556521,
        size.width * 0.9234351,
        size.height * 0.4560616);
    path_58.cubicTo(
        size.width * 0.9234858,
        size.height * 0.4559905,
        size.width * 0.9235378,
        size.height * 0.4559197,
        size.width * 0.9235934,
        size.height * 0.4558428);
    path_58.cubicTo(
        size.width * 0.9242833,
        size.height * 0.4549161,
        size.width * 0.9247660,
        size.height * 0.4545766,
        size.width * 0.9252309,
        size.height * 0.4542497);
    path_58.cubicTo(
        size.width * 0.9255882,
        size.height * 0.4539981,
        size.width * 0.9259571,
        size.height * 0.4537393,
        size.width * 0.9265813,
        size.height * 0.4530492);
    path_58.cubicTo(
        size.width * 0.9268552,
        size.height * 0.4527466,
        size.width * 0.9270745,
        size.height * 0.4524742,
        size.width * 0.9272593,
        size.height * 0.4522455);
    path_58.cubicTo(
        size.width * 0.9278198,
        size.height * 0.4515538,
        size.width * 0.9285366,
        size.height * 0.4507439,
        size.width * 0.9295186,
        size.height * 0.4510647);
    path_58.cubicTo(
        size.width * 0.9305595,
        size.height * 0.4514579,
        size.width * 0.9309164,
        size.height * 0.4528303,
        size.width * 0.9311531,
        size.height * 0.4537388);
    path_58.cubicTo(
        size.width * 0.9315760,
        size.height * 0.4553593,
        size.width * 0.9317062,
        size.height * 0.4564737,
        size.width * 0.9317924,
        size.height * 0.4572128);
    path_58.cubicTo(
        size.width * 0.9318234,
        size.height * 0.4574828,
        size.width * 0.9318594,
        size.height * 0.4577869,
        size.width * 0.9318866,
        size.height * 0.4578857);
    path_58.cubicTo(
        size.width * 0.9321145,
        size.height * 0.4586793,
        size.width * 0.9349744,
        size.height * 0.4588846,
        size.width * 0.9360505,
        size.height * 0.4589704);
    path_58.cubicTo(
        size.width * 0.9384694,
        size.height * 0.4591518,
        size.width * 0.9405626,
        size.height * 0.4593088,
        size.width * 0.9410659,
        size.height * 0.4615979);
    path_58.cubicTo(
        size.width * 0.9414271,
        size.height * 0.4632356,
        size.width * 0.9406743,
        size.height * 0.4650219,
        size.width * 0.9387641,
        size.height * 0.4670481);
    path_58.cubicTo(
        size.width * 0.9381690,
        size.height * 0.4676785,
        size.width * 0.9375741,
        size.height * 0.4681136,
        size.width * 0.9370558,
        size.height * 0.4684385);
    path_58.cubicTo(
        size.width * 0.9373746,
        size.height * 0.4688551,
        size.width * 0.9376286,
        size.height * 0.4694216,
        size.width * 0.9376441,
        size.height * 0.4701932);
    path_58.lineTo(size.width * 0.9376441, size.height * 0.4701932);
    path_58.cubicTo(
        size.width * 0.9376791,
        size.height * 0.4720197,
        size.width * 0.9363237,
        size.height * 0.4734213,
        size.width * 0.9336158,
        size.height * 0.4743661);
    path_58.cubicTo(
        size.width * 0.9329429,
        size.height * 0.4746035,
        size.width * 0.9320377,
        size.height * 0.4749177,
        size.width * 0.9308533,
        size.height * 0.4748383);
    path_58.cubicTo(
        size.width * 0.9302954,
        size.height * 0.4748002,
        size.width * 0.9298068,
        size.height * 0.4746821,
        size.width * 0.9293902,
        size.height * 0.4745718);
    path_58.cubicTo(
        size.width * 0.9293281,
        size.height * 0.4748999,
        size.width * 0.9292142,
        size.height * 0.4752409,
        size.width * 0.9290089,
        size.height * 0.4755646);
    path_58.cubicTo(
        size.width * 0.9284061,
        size.height * 0.4765182,
        size.width * 0.9274328,
        size.height * 0.4767607,
        size.width * 0.9261116,
        size.height * 0.4762232);
    path_58.cubicTo(
        size.width * 0.9246530,
        size.height * 0.4756614,
        size.width * 0.9235005,
        size.height * 0.4748974,
        size.width * 0.9224836,
        size.height * 0.4742258);
    path_58.cubicTo(
        size.width * 0.9215953,
        size.height * 0.4736410,
        size.width * 0.9208294,
        size.height * 0.4731408,
        size.width * 0.9201867,
        size.height * 0.4730042);
    path_58.cubicTo(
        size.width * 0.9189914,
        size.height * 0.4727732,
        size.width * 0.9178768,
        size.height * 0.4737932,
        size.width * 0.9165430,
        size.height * 0.4751507);
    path_58.lineTo(size.width * 0.9132006, size.height * 0.4786162);
    path_58.lineTo(size.width * 0.9132005, size.height * 0.4786162);
    path_58.close();

    Paint paint_58_fill = Paint()..style = PaintingStyle.fill;
    paint_58_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_58, paint_58_fill);

    Path path_59 = Path();
    path_59.moveTo(size.width * 0.9227397, size.height * 0.4369567);
    path_59.lineTo(size.width * 0.9174755, size.height * 0.4380456);
    path_59.lineTo(size.width * 0.9170647, size.height * 0.4376921);
    path_59.cubicTo(
        size.width * 0.9151653,
        size.height * 0.4360566,
        size.width * 0.9133320,
        size.height * 0.4352672,
        size.width * 0.9116139,
        size.height * 0.4353445);
    path_59.cubicTo(
        size.width * 0.9113407,
        size.height * 0.4353568,
        size.width * 0.9110681,
        size.height * 0.4353884,
        size.width * 0.9107903,
        size.height * 0.4354202);
    path_59.cubicTo(
        size.width * 0.9096896,
        size.height * 0.4355472,
        size.width * 0.9083212,
        size.height * 0.4357055,
        size.width * 0.9066969,
        size.height * 0.4347995);
    path_59.cubicTo(
        size.width * 0.9057913,
        size.height * 0.4342912,
        size.width * 0.9036872,
        size.height * 0.4328410,
        size.width * 0.9038798,
        size.height * 0.4304890);
    path_59.cubicTo(
        size.width * 0.9039268,
        size.height * 0.4298560,
        size.width * 0.9041233,
        size.height * 0.4293690,
        size.width * 0.9043587,
        size.height * 0.4289949);
    path_59.cubicTo(
        size.width * 0.9042960,
        size.height * 0.4289451,
        size.width * 0.9042332,
        size.height * 0.4288936,
        size.width * 0.9041653,
        size.height * 0.4288388);
    path_59.cubicTo(
        size.width * 0.9033418,
        size.height * 0.4281514,
        size.width * 0.9029818,
        size.height * 0.4275922,
        size.width * 0.9026351,
        size.height * 0.4270536);
    path_59.cubicTo(
        size.width * 0.9023684,
        size.height * 0.4266398,
        size.width * 0.9020937,
        size.height * 0.4262122,
        size.width * 0.9014523,
        size.height * 0.4255526);
    path_59.cubicTo(
        size.width * 0.9011711,
        size.height * 0.4252632,
        size.width * 0.9009248,
        size.height * 0.4250392,
        size.width * 0.9007179,
        size.height * 0.4248501);
    path_59.cubicTo(
        size.width * 0.9000916,
        size.height * 0.4242764,
        size.width * 0.8993430,
        size.height * 0.4235233,
        size.width * 0.8993184,
        size.height * 0.4221292);
    path_59.cubicTo(
        size.width * 0.8993296,
        size.height * 0.4206378,
        size.width * 0.9001996,
        size.height * 0.4198126,
        size.width * 0.9007753,
        size.height * 0.4192656);
    path_59.cubicTo(
        size.width * 0.9018022,
        size.height * 0.4182893,
        size.width * 0.9025491,
        size.height * 0.4178324,
        size.width * 0.9030445,
        size.height * 0.4175297);
    path_59.cubicTo(
        size.width * 0.9032256,
        size.height * 0.4174198,
        size.width * 0.9034293,
        size.height * 0.4172945,
        size.width * 0.9034916,
        size.height * 0.4172331);
    path_59.cubicTo(
        size.width * 0.9039892,
        size.height * 0.4167272,
        size.width * 0.9034074,
        size.height * 0.4128516,
        size.width * 0.9031945,
        size.height * 0.4113911);
    path_59.cubicTo(
        size.width * 0.9027079,
        size.height * 0.4081113,
        size.width * 0.9022869,
        size.height * 0.4052731,
        size.width * 0.9037613,
        size.height * 0.4040195);
    path_59.cubicTo(
        size.width * 0.9048159,
        size.height * 0.4031213,
        size.width * 0.9062569,
        size.height * 0.4036746,
        size.width * 0.9081595,
        size.height * 0.4057145);
    path_59.cubicTo(
        size.width * 0.9087517,
        size.height * 0.4063501,
        size.width * 0.9092071,
        size.height * 0.4070351,
        size.width * 0.9095659,
        size.height * 0.4076456);
    path_59.cubicTo(
        size.width * 0.9097766,
        size.height * 0.4071138,
        size.width * 0.9101087,
        size.height * 0.4066304,
        size.width * 0.9106448,
        size.height * 0.4064140);
    path_59.lineTo(size.width * 0.9106448, size.height * 0.4064140);
    path_59.cubicTo(
        size.width * 0.9119142,
        size.height * 0.4059040,
        size.width * 0.9132389,
        size.height * 0.4073605,
        size.width * 0.9145870,
        size.height * 0.4107412);
    path_59.cubicTo(
        size.width * 0.9149239,
        size.height * 0.4115806,
        size.width * 0.9153734,
        size.height * 0.4127110,
        size.width * 0.9156182,
        size.height * 0.4143147);
    path_59.cubicTo(
        size.width * 0.9157330,
        size.height * 0.4150701,
        size.width * 0.9157743,
        size.height * 0.4157533,
        size.width * 0.9158028,
        size.height * 0.4163383);
    path_59.cubicTo(
        size.width * 0.9160482,
        size.height * 0.4163381,
        size.width * 0.9163157,
        size.height * 0.4164039,
        size.width * 0.9165944,
        size.height * 0.4165963);
    path_59.cubicTo(
        size.width * 0.9174146,
        size.height * 0.4171602,
        size.width * 0.9178312,
        size.height * 0.4184000,
        size.width * 0.9177902,
        size.height * 0.4203027);
    path_59.cubicTo(
        size.width * 0.9177670,
        size.height * 0.4223952,
        size.width * 0.9175246,
        size.height * 0.4241298,
        size.width * 0.9173125,
        size.height * 0.4256597);
    path_59.cubicTo(
        size.width * 0.9171285,
        size.height * 0.4269956,
        size.width * 0.9169727,
        size.height * 0.4281464,
        size.width * 0.9170402,
        size.height * 0.4290402);
    path_59.cubicTo(
        size.width * 0.9171817,
        size.height * 0.4306968,
        size.width * 0.9181782,
        size.height * 0.4319282,
        size.width * 0.9194667,
        size.height * 0.4333672);
    path_59.lineTo(size.width * 0.9227399, size.height * 0.4369567);
    path_59.lineTo(size.width * 0.9227397, size.height * 0.4369567);
    path_59.close();

    Paint paint_59_fill = Paint()..style = PaintingStyle.fill;
    paint_59_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_59, paint_59_fill);

    Path path_60 = Path();
    path_60.moveTo(size.width * 0.9234493, size.height * 0.4151073);
    path_60.lineTo(size.width * 0.9240224, size.height * 0.4077932);
    path_60.lineTo(size.width * 0.9243740, size.height * 0.4073337);
    path_60.cubicTo(
        size.width * 0.9260004,
        size.height * 0.4052091,
        size.width * 0.9270179,
        size.height * 0.4029583,
        size.width * 0.9273996,
        size.height * 0.4006418);
    path_60.cubicTo(
        size.width * 0.9274603,
        size.height * 0.4002735,
        size.width * 0.9275074,
        size.height * 0.3999009,
        size.width * 0.9275555,
        size.height * 0.3995216);
    path_60.cubicTo(
        size.width * 0.9277458,
        size.height * 0.3980177,
        size.width * 0.9279821,
        size.height * 0.3961483,
        size.width * 0.9290282,
        size.height * 0.3942065);
    path_60.cubicTo(
        size.width * 0.9296137,
        size.height * 0.3931246,
        size.width * 0.9311624,
        size.height * 0.3906795,
        size.width * 0.9327596,
        size.height * 0.3915336);
    path_60.cubicTo(
        size.width * 0.9331907,
        size.height * 0.3917569,
        size.width * 0.9334817,
        size.height * 0.3921432,
        size.width * 0.9336838,
        size.height * 0.3925527);
    path_60.cubicTo(
        size.width * 0.9337345,
        size.height * 0.3924816,
        size.width * 0.9337865,
        size.height * 0.3924108,
        size.width * 0.9338421,
        size.height * 0.3923339);
    path_60.cubicTo(
        size.width * 0.9345321,
        size.height * 0.3914072,
        size.width * 0.9350147,
        size.height * 0.3910677,
        size.width * 0.9354796,
        size.height * 0.3907408);
    path_60.cubicTo(
        size.width * 0.9358369,
        size.height * 0.3904892,
        size.width * 0.9362058,
        size.height * 0.3902304,
        size.width * 0.9368301,
        size.height * 0.3895403);
    path_60.cubicTo(
        size.width * 0.9371040,
        size.height * 0.3892377,
        size.width * 0.9373233,
        size.height * 0.3889654,
        size.width * 0.9375080,
        size.height * 0.3887366);
    path_60.cubicTo(
        size.width * 0.9380685,
        size.height * 0.3880449,
        size.width * 0.9387854,
        size.height * 0.3872350,
        size.width * 0.9397673,
        size.height * 0.3875558);
    path_60.cubicTo(
        size.width * 0.9408082,
        size.height * 0.3879491,
        size.width * 0.9411651,
        size.height * 0.3893214,
        size.width * 0.9414019,
        size.height * 0.3902299);
    path_60.cubicTo(
        size.width * 0.9418247,
        size.height * 0.3918504,
        size.width * 0.9419550,
        size.height * 0.3929649,
        size.width * 0.9420411,
        size.height * 0.3937039);
    path_60.cubicTo(
        size.width * 0.9420722,
        size.height * 0.3939739,
        size.width * 0.9421081,
        size.height * 0.3942780,
        size.width * 0.9421354,
        size.height * 0.3943768);
    path_60.cubicTo(
        size.width * 0.9423632,
        size.height * 0.3951705,
        size.width * 0.9452232,
        size.height * 0.3953757,
        size.width * 0.9462993,
        size.height * 0.3954615);
    path_60.cubicTo(
        size.width * 0.9487182,
        size.height * 0.3956429,
        size.width * 0.9508113,
        size.height * 0.3957999,
        size.width * 0.9513147,
        size.height * 0.3980891);
    path_60.cubicTo(
        size.width * 0.9516759,
        size.height * 0.3997267,
        size.width * 0.9509231,
        size.height * 0.4015130,
        size.width * 0.9490128,
        size.height * 0.4035392);
    path_60.cubicTo(
        size.width * 0.9484178,
        size.height * 0.4041696,
        size.width * 0.9478229,
        size.height * 0.4046047,
        size.width * 0.9473046,
        size.height * 0.4049296);
    path_60.cubicTo(
        size.width * 0.9476234,
        size.height * 0.4053462,
        size.width * 0.9478773,
        size.height * 0.4059127,
        size.width * 0.9478929,
        size.height * 0.4066844);
    path_60.lineTo(size.width * 0.9478929, size.height * 0.4066844);
    path_60.cubicTo(
        size.width * 0.9479279,
        size.height * 0.4085109,
        size.width * 0.9465725,
        size.height * 0.4099124,
        size.width * 0.9438645,
        size.height * 0.4108572);
    path_60.cubicTo(
        size.width * 0.9431916,
        size.height * 0.4110946,
        size.width * 0.9422865,
        size.height * 0.4114088,
        size.width * 0.9411020,
        size.height * 0.4113294);
    path_60.cubicTo(
        size.width * 0.9405442,
        size.height * 0.4112913,
        size.width * 0.9400555,
        size.height * 0.4111732,
        size.width * 0.9396389,
        size.height * 0.4110629);
    path_60.cubicTo(
        size.width * 0.9395768,
        size.height * 0.4113910,
        size.width * 0.9394629,
        size.height * 0.4117321,
        size.width * 0.9392576,
        size.height * 0.4120558);
    path_60.cubicTo(
        size.width * 0.9386549,
        size.height * 0.4130093,
        size.width * 0.9376815,
        size.height * 0.4132518,
        size.width * 0.9363603,
        size.height * 0.4127143);
    path_60.cubicTo(
        size.width * 0.9349017,
        size.height * 0.4121525,
        size.width * 0.9337492,
        size.height * 0.4113885,
        size.width * 0.9327323,
        size.height * 0.4107170);
    path_60.cubicTo(
        size.width * 0.9318440,
        size.height * 0.4101321,
        size.width * 0.9310781,
        size.height * 0.4096319,
        size.width * 0.9304355,
        size.height * 0.4094953);
    path_60.cubicTo(
        size.width * 0.9292402,
        size.height * 0.4092643,
        size.width * 0.9281256,
        size.height * 0.4102843,
        size.width * 0.9267917,
        size.height * 0.4116418);
    path_60.lineTo(size.width * 0.9234493, size.height * 0.4151073);
    path_60.lineTo(size.width * 0.9234493, size.height * 0.4151073);
    path_60.close();

    Paint paint_60_fill = Paint()..style = PaintingStyle.fill;
    paint_60_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_60, paint_60_fill);

    Path path_61 = Path();
    path_61.moveTo(size.width * 0.9063794, size.height * 0.5552480);
    path_61.lineTo(size.width * 0.9054487, size.height * 0.5539772);
    path_61.lineTo(size.width * 0.9054655, size.height * 0.5521703);
    path_61.lineTo(size.width * 0.9054487, size.height * 0.5539772);
    path_61.lineTo(size.width * 0.9041550, size.height * 0.5537882);
    path_61.cubicTo(
        size.width * 0.9041612,
        size.height * 0.5536201,
        size.width * 0.9041527,
        size.height * 0.5532268,
        size.width * 0.9041433,
        size.height * 0.5526126);
    path_61.cubicTo(
        size.width * 0.9040935,
        size.height * 0.5492480,
        size.width * 0.9039390,
        size.height * 0.5390077,
        size.width * 0.9049707,
        size.height * 0.5232736);
    path_61.cubicTo(
        size.width * 0.9056911,
        size.height * 0.5122902,
        size.width * 0.9068949,
        size.height * 0.5011412,
        size.width * 0.9085487,
        size.height * 0.4901309);
    path_61.cubicTo(
        size.width * 0.9102053,
        size.height * 0.4791035,
        size.width * 0.9119245,
        size.height * 0.4708984,
        size.width * 0.9133054,
        size.height * 0.4643036);
    path_61.cubicTo(
        size.width * 0.9143475,
        size.height * 0.4593296,
        size.width * 0.9153994,
        size.height * 0.4546118,
        size.width * 0.9164262,
        size.height * 0.4500164);
    path_61.cubicTo(
        size.width * 0.9191664,
        size.height * 0.4377387,
        size.width * 0.9217538,
        size.height * 0.4261409,
        size.width * 0.9233560,
        size.height * 0.4129120);
    path_61.cubicTo(
        size.width * 0.9237148,
        size.height * 0.4099590,
        size.width * 0.9244595,
        size.height * 0.4038118,
        size.width * 0.9229349,
        size.height * 0.3965564);
    path_61.cubicTo(
        size.width * 0.9220503,
        size.height * 0.3923484,
        size.width * 0.9205357,
        size.height * 0.3883875,
        size.width * 0.9184316,
        size.height * 0.3847874);
    path_61.lineTo(size.width * 0.9204681, size.height * 0.3825144);
    path_61.cubicTo(
        size.width * 0.9227898,
        size.height * 0.3864926,
        size.width * 0.9244647,
        size.height * 0.3908791,
        size.width * 0.9254471,
        size.height * 0.3955513);
    path_61.cubicTo(
        size.width * 0.9271375,
        size.height * 0.4035957,
        size.width * 0.9263262,
        size.height * 0.4102939,
        size.width * 0.9259363,
        size.height * 0.4135122);
    path_61.cubicTo(
        size.width * 0.9243055,
        size.height * 0.4269746,
        size.width * 0.9216924,
        size.height * 0.4386838,
        size.width * 0.9189252,
        size.height * 0.4510798);
    path_61.cubicTo(
        size.width * 0.9179036,
        size.height * 0.4556586,
        size.width * 0.9168552,
        size.height * 0.4603558,
        size.width * 0.9158176,
        size.height * 0.4653095);
    path_61.cubicTo(
        size.width * 0.9144492,
        size.height * 0.4718432,
        size.width * 0.9127454,
        size.height * 0.4799769,
        size.width * 0.9111104,
        size.height * 0.4908628);
    path_61.cubicTo(
        size.width * 0.9094752,
        size.height * 0.5017414,
        size.width * 0.9082869,
        size.height * 0.5127541,
        size.width * 0.9075745,
        size.height * 0.5235988);
    path_61.cubicTo(
        size.width * 0.9065564,
        size.height * 0.5391346,
        size.width * 0.9067094,
        size.height * 0.5492225,
        size.width * 0.9067594,
        size.height * 0.5525367);
    path_61.cubicTo(
        size.width * 0.9067853,
        size.height * 0.5543061,
        size.width * 0.9067909,
        size.height * 0.5546768,
        size.width * 0.9063795,
        size.height * 0.5552480);
    path_61.lineTo(size.width * 0.9063795, size.height * 0.5552480);
    path_61.close();

    Paint paint_61_fill = Paint()..style = PaintingStyle.fill;
    paint_61_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_61, paint_61_fill);

    Path path_62 = Path();
    path_62.moveTo(size.width * 0.9128452, size.height * 0.3889502);
    path_62.cubicTo(
        size.width * 0.9127405,
        size.height * 0.3889179,
        size.width * 0.9126351,
        size.height * 0.3888818,
        size.width * 0.9125295,
        size.height * 0.3888384);
    path_62.cubicTo(
        size.width * 0.9103818,
        size.height * 0.3880063,
        size.width * 0.9086590,
        size.height * 0.3855872,
        size.width * 0.9074076,
        size.height * 0.3816495);
    path_62.cubicTo(
        size.width * 0.9068219,
        size.height * 0.3797979,
        size.width * 0.9066836,
        size.height * 0.3778491,
        size.width * 0.9064079,
        size.height * 0.3739627);
    path_62.cubicTo(
        size.width * 0.9063646,
        size.height * 0.3733634,
        size.width * 0.9061735,
        size.height * 0.3703313,
        size.width * 0.9064085,
        size.height * 0.3663129);
    path_62.cubicTo(
        size.width * 0.9065614,
        size.height * 0.3636871,
        size.width * 0.9067656,
        size.height * 0.3626324,
        size.width * 0.9072826,
        size.height * 0.3618044);
    path_62.cubicTo(
        size.width * 0.9078568,
        size.height * 0.3608818,
        size.width * 0.9086303,
        size.height * 0.3603535,
        size.width * 0.9094477,
        size.height * 0.3600882);
    path_62.cubicTo(
        size.width * 0.9094698,
        size.height * 0.3597406,
        size.width * 0.9095521,
        size.height * 0.3594006,
        size.width * 0.9097154,
        size.height * 0.3590784);
    path_62.cubicTo(
        size.width * 0.9103878,
        size.height * 0.3577412,
        size.width * 0.9115134,
        size.height * 0.3582908,
        size.width * 0.9121241,
        size.height * 0.3585767);
    path_62.cubicTo(
        size.width * 0.9124318,
        size.height * 0.3587294,
        size.width * 0.9128153,
        size.height * 0.3589236,
        size.width * 0.9132466,
        size.height * 0.3590240);
    path_62.cubicTo(
        size.width * 0.9139244,
        size.height * 0.3591859,
        size.width * 0.9143292,
        size.height * 0.3590213,
        size.width * 0.9149418,
        size.height * 0.3587761);
    path_62.cubicTo(
        size.width * 0.9155280,
        size.height * 0.3585409,
        size.width * 0.9162570,
        size.height * 0.3582483,
        size.width * 0.9172644,
        size.height * 0.3582732);
    path_62.cubicTo(
        size.width * 0.9192525,
        size.height * 0.3583109,
        size.width * 0.9207241,
        size.height * 0.3595459,
        size.width * 0.9212094,
        size.height * 0.3599523);
    path_62.cubicTo(
        size.width * 0.9237652,
        size.height * 0.3620748,
        size.width * 0.9246476,
        size.height * 0.3654610,
        size.width * 0.9256688,
        size.height * 0.3693819);
    path_62.cubicTo(
        size.width * 0.9258717,
        size.height * 0.3701679,
        size.width * 0.9265451,
        size.height * 0.3730086,
        size.width * 0.9267019,
        size.height * 0.3766667);
    path_62.cubicTo(
        size.width * 0.9268151,
        size.height * 0.3793059,
        size.width * 0.9265649,
        size.height * 0.3803862,
        size.width * 0.9262780,
        size.height * 0.3811586);
    path_62.cubicTo(
        size.width * 0.9256920,
        size.height * 0.3827466,
        size.width * 0.9247947,
        size.height * 0.3834828,
        size.width * 0.9225676,
        size.height * 0.3850315);
    path_62.cubicTo(
        size.width * 0.9202409,
        size.height * 0.3866545,
        size.width * 0.9190735,
        size.height * 0.3874665,
        size.width * 0.9181164,
        size.height * 0.3878840);
    path_62.cubicTo(
        size.width * 0.9158891,
        size.height * 0.3888504,
        size.width * 0.9144905,
        size.height * 0.3894573,
        size.width * 0.9128452,
        size.height * 0.3889501);
    path_62.lineTo(size.width * 0.9128452, size.height * 0.3889502);
    path_62.close();

    Paint paint_62_fill = Paint()..style = PaintingStyle.fill;
    paint_62_fill.color = Color(0xfff2f2f2).withOpacity(1.0);
    canvas.drawPath(path_62, paint_62_fill);

    Path path_63 = Path();
    path_63.moveTo(size.width * 0.2532568, size.height * 0.4286254);
    path_63.lineTo(size.width * 0.2515473, size.height * 0.3540941);
    path_63.cubicTo(
        size.width * 0.2515196,
        size.height * 0.3528843,
        size.width * 0.2518636,
        size.height * 0.3517065,
        size.width * 0.2524915,
        size.height * 0.3508627);
    path_63.cubicTo(
        size.width * 0.2531197,
        size.height * 0.3500184,
        size.width * 0.2539816,
        size.height * 0.3495757,
        size.width * 0.2548564,
        size.height * 0.3496481);
    path_63.lineTo(size.width * 0.2976480, size.height * 0.3531953);
    path_63.cubicTo(
        size.width * 0.2985125,
        size.height * 0.3532663,
        size.width * 0.2993236,
        size.height * 0.3538377,
        size.width * 0.2998734,
        size.height * 0.3547622);
    path_63.cubicTo(
        size.width * 0.3004235,
        size.height * 0.3556863,
        size.width * 0.3006724,
        size.height * 0.3568963,
        size.width * 0.3005565,
        size.height * 0.3580820);
    path_63.lineTo(size.width * 0.2933176, size.height * 0.4321599);
    path_63.cubicTo(
        size.width * 0.2930986,
        size.height * 0.4344013,
        size.width * 0.2916483,
        size.height * 0.4360395,
        size.width * 0.2900158,
        size.height * 0.4358897);
    path_63.lineTo(size.width * 0.2561727, size.height * 0.4327965);
    path_63.cubicTo(
        size.width * 0.2558293,
        size.height * 0.4327651,
        size.width * 0.2555023,
        size.height * 0.4326594,
        size.width * 0.2551995,
        size.height * 0.4324901);
    path_63.cubicTo(
        size.width * 0.2540818,
        size.height * 0.4318652,
        size.width * 0.2532971,
        size.height * 0.4303804,
        size.width * 0.2532568,
        size.height * 0.4286254);
    path_63.close();

    Paint paint_63_fill = Paint()..style = PaintingStyle.fill;
    paint_63_fill.color = Theme.of(Get.context!).primaryColor;
    canvas.drawPath(path_63, paint_63_fill);

    Path path_64 = Path();
    path_64.moveTo(size.width * 0.2516005, size.height * 0.3471219);
    path_64.cubicTo(
        size.width * 0.2521992,
        size.height * 0.3470347,
        size.width * 0.2530011,
        size.height * 0.3469276,
        size.width * 0.2539639,
        size.height * 0.3468158);
    path_64.cubicTo(
        size.width * 0.2537065,
        size.height * 0.3461534,
        size.width * 0.2536012,
        size.height * 0.3453701,
        size.width * 0.2537112,
        size.height * 0.3445661);
    path_64.lineTo(size.width * 0.2544754, size.height * 0.3389834);
    path_64.cubicTo(
        size.width * 0.2546737,
        size.height * 0.3375345,
        size.width * 0.2555183,
        size.height * 0.3364237,
        size.width * 0.2565759,
        size.height * 0.3362282);
    path_64.cubicTo(
        size.width * 0.2628766,
        size.height * 0.3350638,
        size.width * 0.2845480,
        size.height * 0.3319045,
        size.width * 0.2981940,
        size.height * 0.3404612);
    path_64.cubicTo(
        size.width * 0.2990478,
        size.height * 0.3409966,
        size.width * 0.2995970,
        size.height * 0.3421721,
        size.width * 0.2996242,
        size.height * 0.3434673);
    path_64.lineTo(size.width * 0.2997491, size.height * 0.3494232);
    path_64.cubicTo(
        size.width * 0.2997645,
        size.height * 0.3501596,
        size.width * 0.2996097,
        size.height * 0.3508422,
        size.width * 0.2993383,
        size.height * 0.3514080);
    path_64.cubicTo(
        size.width * 0.3004727,
        size.height * 0.3518296,
        size.width * 0.3016035,
        size.height * 0.3522755,
        size.width * 0.3027252,
        size.height * 0.3527616);
    path_64.cubicTo(
        size.width * 0.3034281,
        size.height * 0.3530662,
        size.width * 0.3039312,
        size.height * 0.3539236,
        size.width * 0.3040157,
        size.height * 0.3549351);
    path_64.lineTo(size.width * 0.3042277, size.height * 0.3574720);
    path_64.cubicTo(
        size.width * 0.3043622,
        size.height * 0.3590818,
        size.width * 0.3034074,
        size.height * 0.3604658,
        size.width * 0.3022376,
        size.height * 0.3603566);
    path_64.lineTo(size.width * 0.2510795, size.height * 0.3555815);
    path_64.cubicTo(
        size.width * 0.2499153,
        size.height * 0.3554729,
        size.width * 0.2491045,
        size.height * 0.3539373,
        size.width * 0.2493847,
        size.height * 0.3523718);
    path_64.lineTo(size.width * 0.2499741, size.height * 0.3490783);
    path_64.cubicTo(
        size.width * 0.2501640,
        size.height * 0.3480172,
        size.width * 0.2508140,
        size.height * 0.3472363,
        size.width * 0.2516005,
        size.height * 0.3471218);
    path_64.close();

    Paint paint_64_fill = Paint()..style = PaintingStyle.fill;
    paint_64_fill.color = Color(0xff3f3d56).withOpacity(1.0);
    canvas.drawPath(path_64, paint_64_fill);

    Path path_65 = Path();
    path_65.moveTo(size.width * 0.1244767, size.height * 0.2171317);
    path_65.lineTo(size.width * 0.1227673, size.height * 0.1426004);
    path_65.cubicTo(
        size.width * 0.1227395,
        size.height * 0.1413906,
        size.width * 0.1230836,
        size.height * 0.1402128,
        size.width * 0.1237114,
        size.height * 0.1393689);
    path_65.cubicTo(
        size.width * 0.1243397,
        size.height * 0.1385247,
        size.width * 0.1252016,
        size.height * 0.1380820,
        size.width * 0.1260764,
        size.height * 0.1381544);
    path_65.lineTo(size.width * 0.1688679, size.height * 0.1417016);
    path_65.cubicTo(
        size.width * 0.1697324,
        size.height * 0.1417726,
        size.width * 0.1705436,
        size.height * 0.1423440,
        size.width * 0.1710933,
        size.height * 0.1432685);
    path_65.cubicTo(
        size.width * 0.1716434,
        size.height * 0.1441926,
        size.width * 0.1718923,
        size.height * 0.1454026,
        size.width * 0.1717764,
        size.height * 0.1465883);
    path_65.lineTo(size.width * 0.1645375, size.height * 0.2206662);
    path_65.cubicTo(
        size.width * 0.1643185,
        size.height * 0.2229076,
        size.width * 0.1628682,
        size.height * 0.2245458,
        size.width * 0.1612357,
        size.height * 0.2243960);
    path_65.lineTo(size.width * 0.1273926, size.height * 0.2213028);
    path_65.cubicTo(
        size.width * 0.1270493,
        size.height * 0.2212713,
        size.width * 0.1267223,
        size.height * 0.2211657,
        size.width * 0.1264195,
        size.height * 0.2209964);
    path_65.cubicTo(
        size.width * 0.1253018,
        size.height * 0.2203715,
        size.width * 0.1245170,
        size.height * 0.2188867,
        size.width * 0.1244767,
        size.height * 0.2171317);
    path_65.close();

    Paint paint_65_fill = Paint()..style = PaintingStyle.fill;
    paint_65_fill.color = Theme.of(Get.context!).primaryColor;
    canvas.drawPath(path_65, paint_65_fill);

    Path path_66 = Path();
    path_66.moveTo(size.width * 0.1228205, size.height * 0.1356281);
    path_66.cubicTo(
        size.width * 0.1234191,
        size.height * 0.1355410,
        size.width * 0.1242211,
        size.height * 0.1354339,
        size.width * 0.1251838,
        size.height * 0.1353221);
    path_66.cubicTo(
        size.width * 0.1249265,
        size.height * 0.1346597,
        size.width * 0.1248211,
        size.height * 0.1338764,
        size.width * 0.1249312,
        size.height * 0.1330724);
    path_66.lineTo(size.width * 0.1256953, size.height * 0.1274896);
    path_66.cubicTo(
        size.width * 0.1258937,
        size.height * 0.1260407,
        size.width * 0.1267383,
        size.height * 0.1249300,
        size.width * 0.1277958,
        size.height * 0.1247345);
    path_66.cubicTo(
        size.width * 0.1340965,
        size.height * 0.1235701,
        size.width * 0.1557679,
        size.height * 0.1204108,
        size.width * 0.1694140,
        size.height * 0.1289675);
    path_66.cubicTo(
        size.width * 0.1702677,
        size.height * 0.1295029,
        size.width * 0.1708170,
        size.height * 0.1306784,
        size.width * 0.1708441,
        size.height * 0.1319735);
    path_66.lineTo(size.width * 0.1709690, size.height * 0.1379295);
    path_66.cubicTo(
        size.width * 0.1709844,
        size.height * 0.1386659,
        size.width * 0.1708296,
        size.height * 0.1393484,
        size.width * 0.1705582,
        size.height * 0.1399143);
    path_66.cubicTo(
        size.width * 0.1716927,
        size.height * 0.1403359,
        size.width * 0.1728234,
        size.height * 0.1407817,
        size.width * 0.1739451,
        size.height * 0.1412679);
    path_66.cubicTo(
        size.width * 0.1746480,
        size.height * 0.1415725,
        size.width * 0.1751511,
        size.height * 0.1424299,
        size.width * 0.1752356,
        size.height * 0.1434414);
    path_66.lineTo(size.width * 0.1754476, size.height * 0.1459783);
    path_66.cubicTo(
        size.width * 0.1755821,
        size.height * 0.1475881,
        size.width * 0.1746273,
        size.height * 0.1489721,
        size.width * 0.1734575,
        size.height * 0.1488629);
    path_66.lineTo(size.width * 0.1222995, size.height * 0.1440878);
    path_66.cubicTo(
        size.width * 0.1211353,
        size.height * 0.1439791,
        size.width * 0.1203245,
        size.height * 0.1424436,
        size.width * 0.1206046,
        size.height * 0.1408781);
    path_66.lineTo(size.width * 0.1211940, size.height * 0.1375846);
    path_66.cubicTo(
        size.width * 0.1213839,
        size.height * 0.1365235,
        size.width * 0.1220340,
        size.height * 0.1357426,
        size.width * 0.1228205,
        size.height * 0.1356281);
    path_66.close();

    Paint paint_66_fill = Paint()..style = PaintingStyle.fill;
    paint_66_fill.color = Color(0xff3f3d56).withOpacity(1.0);
    canvas.drawPath(path_66, paint_66_fill);

    Path path_67 = Path();
    path_67.moveTo(size.width * 0.7956481, size.height * 0.4474714);
    path_67.lineTo(size.width * 0.7939387, size.height * 0.3729401);
    path_67.cubicTo(
        size.width * 0.7939109,
        size.height * 0.3717303,
        size.width * 0.7942550,
        size.height * 0.3705525,
        size.width * 0.7948828,
        size.height * 0.3697086);
    path_67.cubicTo(
        size.width * 0.7955111,
        size.height * 0.3688643,
        size.width * 0.7963730,
        size.height * 0.3684217,
        size.width * 0.7972478,
        size.height * 0.3684941);
    path_67.lineTo(size.width * 0.8400393, size.height * 0.3720413);
    path_67.cubicTo(
        size.width * 0.8409038,
        size.height * 0.3721123,
        size.width * 0.8417150,
        size.height * 0.3726837,
        size.width * 0.8422647,
        size.height * 0.3736082);
    path_67.cubicTo(
        size.width * 0.8428148,
        size.height * 0.3745323,
        size.width * 0.8430637,
        size.height * 0.3757423,
        size.width * 0.8429478,
        size.height * 0.3769280);
    path_67.lineTo(size.width * 0.8357089, size.height * 0.4510059);
    path_67.cubicTo(
        size.width * 0.8354899,
        size.height * 0.4532473,
        size.width * 0.8340396,
        size.height * 0.4548855,
        size.width * 0.8324071,
        size.height * 0.4547357);
    path_67.lineTo(size.width * 0.7985640, size.height * 0.4516425);
    path_67.cubicTo(
        size.width * 0.7982207,
        size.height * 0.4516110,
        size.width * 0.7978937,
        size.height * 0.4515054,
        size.width * 0.7975909,
        size.height * 0.4513361);
    path_67.cubicTo(
        size.width * 0.7964732,
        size.height * 0.4507112,
        size.width * 0.7956884,
        size.height * 0.4492264,
        size.width * 0.7956481,
        size.height * 0.4474714);
    path_67.close();

    Paint paint_67_fill = Paint()..style = PaintingStyle.fill;
    paint_67_fill.color = Theme.of(Get.context!).primaryColor;
    canvas.drawPath(path_67, paint_67_fill);

    Path path_68 = Path();
    path_68.moveTo(size.width * 0.7939919, size.height * 0.3659678);
    path_68.cubicTo(
        size.width * 0.7945905,
        size.height * 0.3658807,
        size.width * 0.7953925,
        size.height * 0.3657735,
        size.width * 0.7963552,
        size.height * 0.3656618);
    path_68.cubicTo(
        size.width * 0.7960979,
        size.height * 0.3649994,
        size.width * 0.7959925,
        size.height * 0.3642161,
        size.width * 0.7961026,
        size.height * 0.3634121);
    path_68.lineTo(size.width * 0.7968667, size.height * 0.3578293);
    path_68.cubicTo(
        size.width * 0.7970651,
        size.height * 0.3563804,
        size.width * 0.7979097,
        size.height * 0.3552697,
        size.width * 0.7989672,
        size.height * 0.3550742);
    path_68.cubicTo(
        size.width * 0.8052679,
        size.height * 0.3539098,
        size.width * 0.8269393,
        size.height * 0.3507505,
        size.width * 0.8405854,
        size.height * 0.3593072);
    path_68.cubicTo(
        size.width * 0.8414391,
        size.height * 0.3598425,
        size.width * 0.8419884,
        size.height * 0.3610181,
        size.width * 0.8420155,
        size.height * 0.3623132);
    path_68.lineTo(size.width * 0.8421404, size.height * 0.3682691);
    path_68.cubicTo(
        size.width * 0.8421558,
        size.height * 0.3690056,
        size.width * 0.8420010,
        size.height * 0.3696881,
        size.width * 0.8417296,
        size.height * 0.3702540);
    path_68.cubicTo(
        size.width * 0.8428641,
        size.height * 0.3706756,
        size.width * 0.8439948,
        size.height * 0.3711214,
        size.width * 0.8451165,
        size.height * 0.3716075);
    path_68.cubicTo(
        size.width * 0.8458194,
        size.height * 0.3719122,
        size.width * 0.8463225,
        size.height * 0.3727696,
        size.width * 0.8464070,
        size.height * 0.3737811);
    path_68.lineTo(size.width * 0.8466190, size.height * 0.3763180);
    path_68.cubicTo(
        size.width * 0.8467535,
        size.height * 0.3779278,
        size.width * 0.8457987,
        size.height * 0.3793118,
        size.width * 0.8446289,
        size.height * 0.3792026);
    path_68.lineTo(size.width * 0.7934709, size.height * 0.3744275);
    path_68.cubicTo(
        size.width * 0.7923067,
        size.height * 0.3743188,
        size.width * 0.7914959,
        size.height * 0.3727833,
        size.width * 0.7917760,
        size.height * 0.3712178);
    path_68.lineTo(size.width * 0.7923654, size.height * 0.3679243);
    path_68.cubicTo(
        size.width * 0.7925553,
        size.height * 0.3668632,
        size.width * 0.7932054,
        size.height * 0.3660823,
        size.width * 0.7939919,
        size.height * 0.3659678);
    path_68.close();

    Paint paint_68_fill = Paint()..style = PaintingStyle.fill;
    paint_68_fill.color = Color(0xff3f3d56).withOpacity(1.0);
    canvas.drawPath(path_68, paint_68_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
