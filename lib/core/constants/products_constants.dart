import 'package:hyperhire_task/models/products_model.dart';

import 'image_constant.dart';

List<String> banners = [
  ImageConstant.banner1,
  ImageConstant.banner2,
  ImageConstant.banner3,
  ImageConstant.banner4
];

List<ProductModel> products = [
  ProductModel(
      image: ImageConstant.product1,
      content: [
        '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요',
        '배송도 빠르고 친절하게 받을 수 있어서 좋았습니다'
      ],
      rankImage: ImageConstant.rank1,
      rating: 4.89,
      reviewCount: 216,
      title: 'LG전자 스탠바이미 27ART10AKPL (스탠'),
  ProductModel(
      image: ImageConstant.product2,
      content: [
        '화면 잘 나오고... 리모컨 기능 좋습니다',
        '넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는 액정문제 없어보이고소리는 살짝 약간 감이 있으나 ^^; 시끄러울까봐 그냥 블루투스 헤드폰 구매 예정이라 문제는 없네요. 아주 만족입니다!!'
      ],
      rankImage: ImageConstant.rank2,
      rating: 4.36,
      reviewCount: 136,
      title: 'LG전자  울트라HD 75UP8300KNA (스탠드)'),
  ProductModel(
      image: ImageConstant.product3,
      content: ['반응속도 및 화질이나 여러면에서도 부족함을', '느끼기에는 커녕 이정도에 이 정도 성능이면차고 넘칠만 합니다'],
      rankImage: ImageConstant.rank3,
      rating: 3.98,
      reviewCount: 98,
      title: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)')
];
