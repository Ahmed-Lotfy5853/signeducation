import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:signeducation/core/resources/assets.dart';
import 'package:signeducation/features/categories/models/category_item_model.dart';

import '../../features/lesson/models/lesson_model.dart';
import 'enums.dart';

const Map<Levels, List<Categories>> levelsMap = {
  Levels.easy: [
    Categories.numbers,
    Categories.characters,
  ],
  Levels.medium: [
    Categories.family,
    Categories.animals,
    Categories.food,
    Categories.home,
    Categories.time,
  ],
  Levels.hard: [
    Categories.education,
    Categories.ideas,
    Categories.meaning,
    Categories.nature,
    Categories.travelling,
  ],
};

Map<Categories, CategoryItemModel> categoriesMap = {
  Categories.numbers: CategoryItemModel(
    title: 'الأرقام',
    category: Categories.numbers,
    cover: '${ImageManager.categories}0.png',
    lessons: numbers,
    backgroundColor: Colors.green,
  ),
  Categories.characters: CategoryItemModel(
      title: 'الحروف',
      cover: '${ImageManager.categories}1.png',
      category: Categories.characters,
      lessons: characters,
      backgroundColor: Colors.yellow),
  Categories.family: CategoryItemModel(
      title: 'الاسرة والاصدقاء و الناس',
      cover: '${ImageManager.categories}2.png',
      category: Categories.family,
      lessons: family,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.animals: CategoryItemModel(
      title: 'الحيوانات',
      cover: '${ImageManager.categories}3.png',
      category: Categories.animals,
      lessons: animals,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.food: CategoryItemModel(
      title: ' الطعام و أدواته',
      cover: '${ImageManager.categories}4.png',
      category: Categories.food,
      lessons: food,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.home: CategoryItemModel(
      title: 'المنزل و الملابس و الألوان',
      cover: '${ImageManager.categories}5.png',
      category: Categories.home,
      lessons: home,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.time: CategoryItemModel(
      title: 'الزمن و فصول السنه',
      cover: '${ImageManager.categories}6.png',
      category: Categories.time,
      lessons: time,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.education: CategoryItemModel(
      title: 'التربية و التعليم',
      cover: '${ImageManager.categories}7.png',
      category: Categories.education,
      lessons: education,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.health: CategoryItemModel(
      title: 'الصحة و الطوارئ',
      cover: '${ImageManager.categories}8.png',
      category: Categories.health,
      lessons: health,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.ideas: CategoryItemModel(
      title: 'الأفكار و الانفعالات',
      cover: '${ImageManager.categories}9.png',
      category: Categories.ideas,
      lessons: ideas,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.meaning: CategoryItemModel(
      title: 'المترادفات و المتضادات',
      cover: '${ImageManager.categories}10.png',
      category: Categories.meaning,
      lessons: meaning,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.nature: CategoryItemModel(
      title: 'الطبيعة و البيئة',
      cover: '${ImageManager.categories}11.png',
      category: Categories.nature,
      lessons: nature,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.travelling: CategoryItemModel(
      title: 'السفر و الاجازات و  الاتجاهات',
      cover: '${ImageManager.categories}12.png',
      category: Categories.travelling,
      lessons: education,
      backgroundColor: CupertinoColors.activeBlue),
};

List<LessonModel> numbers = [
  LessonModel(
      name: '0',
      description:
          'اصنع شكل دائرة من خلال ضم أصابع اليد اليمني امام اصبع الابهام مع جعل اليد متجهة للاعلي',
      cover: ImageManager.numbers),
  LessonModel(
      name: '1',
      description: 'اجعل أصابع اليد اليمني منقبضة مع مد اصبع السبابه لاعلي',
      cover: ImageManager.numbers),
  LessonModel(
      name: '2',
      description:
          'اجعل أصابع اليد اليمني منقبضه مع مد اصبعي السبابه و الوسطي للاعلي ',
      cover: ImageManager.numbers),
  LessonModel(
      name: '3',
      description:
          'جعل أصابع الابهام و السبابة و الوسطي لليد اليمني ممتدة للاعلي مع قبض أصابع اليد ',
      cover: ImageManager.numbers),
  LessonModel(
      name: '4',
      description:
          'اجعل أصابع اليد اليمني ممتده للاعلي مع ضم اسبع الابهام الي راحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '5',
      description:
          'اجعل أصابع اليد اليمني ممتدة للاعلي و اليد منبسطة و متجهه للاعلي ',
      cover: ImageManager.numbers),
  LessonModel(
      name: '6',
      description:
          'اجعل أصابع السبابة و الوسطي و البنصر لليد اليمني للاعلي مع ضم اصبعي الابهام و الصغري الي راحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '7',
      description:
          'اجعل اليد اليمني ممتدة لاعلي مع ضم اصبعي الابهام و البنصر الي راحة اليد ',
      cover: ImageManager.numbers),
  LessonModel(
      name: '8',
      description:
          'اجعل أصابع اليد اليمني ممتدة للاعلي مع ضم اصبعي الابهام و الوسطي الي راحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '9',
      description:
          'اجعل أصابع اليد اليمني ممتدة للاعلي مع ضم اصبعي السبابة و الابهام الي راحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '10',
      description:
          'اجعل اليد اليمني منقبضة و متجهه للخراج مع مد اصبع الابهام للاعلي و تحريك اليد من المعصم يمينا و يسارا',
      cover: ImageManager.numbers),
  LessonModel(
      name: '11',
      description:
          'اجعل اليد اليمني منقبضه و متجهه للاعلي و مد اصبع السبابة للاعلي',
      cover: ImageManager.numbers),
  LessonModel(
      name: '12',
      description:
          'اجعل اليد اليمني منقبضة و متجهه للاعلي ثم مد اصبعي السبابة و الوسطي للاعلي ',
      cover: ImageManager.numbers),
  LessonModel(
      name: '13',
      description:
          'اجعل اليد اليمني منقبضة و متجهه للاعلي ثم مد أصابع اللابهام و السبابة و الوسطي للاعلي',
      cover: ImageManager.numbers),
  LessonModel(
      name: '14',
      description:
          'اجعل اليد اليمني منقبضة و متجهه للاعلي ثم مد أصابع السبابة و الوسطي و الابهام و البنصر للاعلي و ضم اصبع الابهام لراحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '15',
      description:
          'اجعل اليد اليمني منقبضة و متجهه للاعلي ثم مد أصابع اليد لاعلي ',
      cover: ImageManager.numbers),
  LessonModel(
      name: '16',
      description:
          'اجعل اليد اليمني منقبضة و متجهة للامام مع مد اصبع الابهام للاعلي و ثم حرك اليد للامام مع مد أصابع السبابة و الوسطي و البنصر و ضم اصبعي الابهام و الصغري لراحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '17',
      description:
          'اجعل اليد اليمني منقبضة و متجهة للامام و مع مد اصبع الابهام للاعلي ثم حرك اليد للامام مع مد أصابع السبابة و الوسطي و الصغري و ضم اصبعي الابهام و البنصر لراحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '18',
      description:
          'اجعل اليد اليمني منقبضة و متجهة للامام مع مد اصبع الابهام لاعلي و ثم حرك اليد للامام مع مد أصابع السبابة و البنصر و الصغري و الابهام و الوسطي لراحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '19',
      description:
          'اجعل اليد اليمني منقبضة و متجهة للامام مع مد اصبع الابهام لاعلي ثم حرك للامام مع مد أصابع الوسطي و البنصر و الصغري و ضم اصبعي الابهام و السبابة لراحة اليد',
      cover: ImageManager.numbers),
  LessonModel(
      name: '20',
      description:
          'اجعل اليد اليمني منقبضة و متجهه للامام مع مد اصبعي السبابة و الابهام ثم حرك اليد اليمين مع ضم اصبعي السبابة و الابهام',
      cover: ImageManager.numbers),
  LessonModel(
      name: 'الجمع',
      description:
          'اجعل أصابع اليد اليسري منضمة لبعضها و متجهه لاسفل ثم حرك أصابع اليد اليمني من اسفل لاعلي مع ضمها لتلامس أطرافها اطراف  أصابع اليد اليسري',
      cover: ImageManager.numbers),
  LessonModel(
      name: 'الضرب',
      description:
          'اجعل أصابع اليدين منقبضة مع مد أصابع السبابة و الوسطي لاعلي و تحريك اليدين حركة افقية تبادلية كما هو مبين بالرسم',
      cover: ImageManager.numbers),
  LessonModel(
      name: 'الطرح',
      description:
          'اجعل اليد اليسري منبسطة و متجهه للامام قم حرك اطراف أصابع اليد اليمني علي راحة اليد اليسري بشكل عرض في الاتجاه من اعلي لاسفل',
      cover: ImageManager.numbers),
  LessonModel(
      name: 'القسمه',
      description:
          'اجعل اليدين منبسطتين مواجهتين للداخل ثم حرك اليد اليمني لتستقر علي اليد اليسري ثم حرك اليدين لاسفل و للخارج قليلا',
      cover: ImageManager.numbers),
];
List<LessonModel> characters = [
  LessonModel(name: 'أ', cover: ImageManager.characters),
  LessonModel(name: 'ب', cover: ImageManager.characters),
  LessonModel(name: 'ت', cover: ImageManager.characters),
  LessonModel(name: 'ث', cover: ImageManager.characters),
  LessonModel(name: 'ج', cover: ImageManager.characters),
  LessonModel(name: 'ح', cover: ImageManager.characters),
  LessonModel(name: 'خ', cover: ImageManager.characters),
  LessonModel(name: 'د', cover: ImageManager.characters),
  LessonModel(name: 'ذ', cover: ImageManager.characters),
  LessonModel(name: 'ر', cover: ImageManager.characters),
  LessonModel(name: 'ز', cover: ImageManager.characters),
  LessonModel(name: 'س', cover: ImageManager.characters),
  LessonModel(name: 'ش', cover: ImageManager.characters),
  LessonModel(name: 'ص', cover: ImageManager.characters),
  LessonModel(name: 'ض', cover: ImageManager.characters),
  LessonModel(name: 'ط', cover: ImageManager.characters),
  LessonModel(name: 'ظ', cover: ImageManager.characters),
  LessonModel(name: 'ع', cover: ImageManager.characters),
  LessonModel(name: 'غ', cover: ImageManager.characters),
  LessonModel(name: 'ف', cover: ImageManager.characters),
  LessonModel(name: 'ق', cover: ImageManager.characters),
  LessonModel(name: 'ك', cover: ImageManager.characters),
  LessonModel(name: 'م', cover: ImageManager.characters),
  LessonModel(name: 'ل', cover: ImageManager.characters),
  LessonModel(name: 'ن', cover: ImageManager.characters),
  LessonModel(name: 'هــ', cover: ImageManager.characters),
  LessonModel(name: 'و', cover: ImageManager.characters),
  LessonModel(name: 'ي', cover: ImageManager.characters),
];
List<LessonModel> family = [
  LessonModel(
      name: 'الاب',
      description:
          'المس الجبهة بأصبع الابهام لليد اليمني المنبسطة مع تحريك باقي الأصابع حركة اهتزازيه خفيفة ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الام',
      description:
          'المس الذقن في الجهة اليمني بأصبع الابهام لليد اليمني المنبسطة مع تحرك الأصابع حركة اهتزازية خفيفة و اشاره كلمة (ماما) هي نفس الإشارة بحيث ان يلمس الابهام الذقن عدة مرات',
      cover: ImageManager.family),
  LessonModel(
      name: 'الجد',
      description:
          'المس الجبهة بأصبع الابهام لليد اليمني المنبسطة و التي راحتها مواجهه لليسار حرك اليد اليمني مسافتين للأمام',
      cover: ImageManager.family),
  LessonModel(
      name: 'الجدة',
      description:
          'المس الذقن بأصبع الابهام لليد اليمني المنبسطة و التي تواجه راحتها جهة اليسار و حرك اليد اليمني مسافتين للأمام',
      cover: ImageManager.family),
  LessonModel(
      name: 'الابن',
      description:
          'حرك اليد اليمني تجاه الجبهة و كأنك تمسك قبعة بين اصابعك و الابهام و ثم حركها تجاه الامام مسافة قليلة و ثم حرك اليد المنبسطة و المتجهة لأعلي جهة المرفق الايسر المنحني ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الابنة',
      description:
          'تتبع الفك السفلي في الناحية اليمني من الاذن الي الذقن بواسطة طرف ابهام اليد اليمني و ثم حرك راحة اليد المنبسطة و المتجهة لأعلي نحو المرفق الايسر المنحني ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الأخ',
      description:
          'حرك اليد اليمني الي الجبهة كما لو كنت تمسك حافة قبعة بين الابهام و باقي الأصابع ثم حركها للأمام قليلا ثم وجه السبابتين للأمام بجوار بعضهما ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الأخت',
      description:
          'تتبع الفك السفلي الأيمن من الاذن حتي الذقن بطرف اصبع الابهام الأيمن ثم حرك اصبعي السبابة لليدين و هما متلامسان للأمام',
      cover: ImageManager.family),
  LessonModel(
      name: 'ابن – بنت ( العم او الخال )',
      description:
          'اقبض اليد اليمني بحيث تكون شكل دائرة من الابهام و باقي الأصابع معا بالقرب من الصدغ الأيمن للإشارة للمذكر او بالقرب من الخد الأيمن للإشارة للمؤنث ثم هزها في اتجاه قم في الاتجاه الاخر من المعصم ',
      cover: ImageManager.family),
  LessonModel(
      name: 'العمة – الخالة',
      description:
          'ضع اليد اليمني قرب الخد الأيمن و هي منقبضة وحرك للخلف و للأمام من المعصم ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الإباء',
      description:
          ': اجعل أصابع الابهام و السبابة و الأوسط بنفس الشكل الموجود في الصورة ثم ضعهم بالقرب من الصدغ الأيمن ثم حركها الي اسفل لتصل الي الجانب الأيمن للذقن ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الاسرة',
      description:
          'اجعل اليدين متواجهتين مع تكوين شكل دائرة بأصبعي السبابة و الابهام لكل يد ثم حرك اليدين حركة دائرية نحو الخارج في نفس الوقت حتي تتلامس الأصابع الصغيرة لليدين',
      cover: ImageManager.family),
  LessonModel(
      name: 'هو',
      description:
          'حرك اليد اليمني للجبهة كما لو كنت تمسك قبعة بين الابهام و باقي الأصابع ثم حركها للأمام قليلا ثم وجه اصبع السبابة للأمام',
      cover: ImageManager.family),
  LessonModel(
      name: 'هي',
      description:
          'اشر الي عظمة الفك اليمني من الاذن الي الذقن بواسطة جانب ابهام اليد اليمني ثم وجه اصبع السبابة للأمام ',
      cover: ImageManager.family),
  LessonModel(
      name: 'رجل',
      description:
          'المس الجبين بإبهام اليد اليمني المفتوحة ثم ضعها علي الصدر و هي مفتوحة أيضا ',
      cover: ImageManager.family),
  LessonModel(
      name: 'امرأة',
      description:
          'المس الذقن بإبهام اليد اليمني المفتوحة ثم ضعها علي الصدر و هي مفتوحة أيضا ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الرضيع',
      description:
          'ضع الذراعين فوق بعضهما في الوضع التقليدي لهز او مرجحة الطفل الرضيع ثم حرك الاذرع ',
      cover: ImageManager.family),
  LessonModel(
      name: 'طفل صغير ',
      description:
          'مد الاصبع الصغير و اصبع السبابة لليد اليمني و باقي أصابع اليد منقبضة و راحة اليد مواجهة للأسفل و ضع اصبع السبابة اسفل الانف و تتدور حينئذ اليد تتدور او تتحرك لأعلي و لأسفل بخفه و احبانا تتحرك الي اليمين معا و في نفس الوقت ',
      cover: ImageManager.family),
  LessonModel(
      name: 'الناس',
      description:
          'اجعل كلتا اليدين تأخذان الشكل المبين بالرسم المجاور ثم حركهما في شكل دائري بالتبادل بحيث يكون اتجاه هذه الدوائر للداخل ',
      cover: ImageManager.family),
  LessonModel(
      name: 'انصت الي ',
      description:
          'اقبض أصابع اليد اليمني مع إبقاء اصبع السبابة يشير تجاه اليسار ثم حرك اليد امام الفم في شكل دوائر للأسفل ',
      cover: ImageManager.family),
  LessonModel(
      name: 'ملكي – شخصي ',
      description: 'ضع راحة اليد اليمني مبسطة علي الصدر و متجهه للداخل ',
      cover: ImageManager.family),
  LessonModel(
      name: 'انا ',
      description:
          'اشر بأصبع السبابة لليد اليمني في اتجاه الصدر و باقي أصابع اليد منقبضة',
      cover: ImageManager.family),
  LessonModel(
      name: 'نفسي ',
      description:
          'اشر بإبهام اليد اليمني تجاه وسط الصدر و راحة اليد منقبضة تجاه اليسار ',
      cover: ImageManager.family),
  LessonModel(
      name: 'انت',
      description:
          'اشر بأصبع السبابة الي الشخص المخاطب اما لو كانت الإشارة الي اشخاص عدة حرك يدك و هي تشير اليهم من اليسار الي اليمين ',
      cover: ImageManager.family),
  LessonModel(
      name: 'نحت المتحدثين',
      description:
          'اجعل اصبع السبابة الأيمن يلامس الكتف الأيمن و باقي أصابع اليد منقبضة قم حرك اليد علي شكل نصف دائرة حتي يلامس الكتف الايسر ',
      cover: ImageManager.family),
  LessonModel(
      name: 'هم – هولاء ',
      description:
          'اجعل اصبع السبابة الأيمن يشير للأمام او في اتجاه الأشخاص او الأشياء المشار اليهم ثم حرك اليد في اتجاه اليمين',
      cover: ImageManager.family),
  LessonModel(
      name: 'شخص ما – شي ما ',
      description:
          'مد اصبع السبابة للأيمن مع جعل راحة اليد المنقبضة متجهه للأمام ثم هزه للأمام و للخلف و من اليسار لليمين ',
      cover: ImageManager.family),
  LessonModel(
      name: 'جميع الناس',
      description:
          '''مد اليد اليسرى الي الامام و هي منقبضة و متجهه لليمين ثم اجعل مفاصل أصابع اليد اليمني المنقبضة تتلامس و تمر علي مفاصل أصابع اليد اليسرى وذلك لعدة مرات و ثم اضف الإشارة العددية للرقم " واحد " 
''',
      cover: ImageManager.family),
  LessonModel(
      name: 'نفسك – انفسهم ',
      description:
          'اقبض اليد اليمني مشيرا بالإبهام المتجه لأعلي ثم حرك اليد علي مراجل اتجاه الشخص او الشيء المشار اليه ',
      cover: ImageManager.family),
  LessonModel(
      name: 'ملكنا',
      description:
          'ضع اليد اليمني المنحنية بسيطا جهة اليسار علي الجانب الأيمن من الصدر ثم حركها في حركة دائرية لإحضارها لتتكئ علي الكتف الايسر',
      cover: ImageManager.family),
  LessonModel(
      name: 'انفسنا ',
      description:
          'ضع اليد اليمني المنحنية بسيطا جهة اليسار علي الجانب الأيمن من الصدر ثم حركها علي الجناب الأيمن من الصدر ثم حركها في حركة دائرية لإحضارها لتتكئ علي الكتف الايسر ثم اشر بإبهام اليد اليمني المنقبضة الي وسط الصدر ',
      cover: ImageManager.family),
  LessonModel(
      name: 'له – لها – لهم',
      description:
          'اجعل اليد اليمني منبسطة و راحة اليد موجهه للشخص او الأشخاص المشار اليهم',
      cover: ImageManager.family),
  LessonModel(
      name: 'هذا – هذه للقريب ',
      description:
          'اجعل اليد اليسرى منبسطة و مواجهه لأعلي ثم اشر بأصبع السبابة لليد اليمني الي داخل راحة اليد اليسرى',
      cover: ImageManager.family),
  LessonModel(
      name: 'هذا – هذه للبعيد ',
      description:
          'اجعل اليد اليسرى منبسطة و متجهه للأمام ثم اجعل اليد اليمني منقبضة امام راحة اليد اليسرى مع جعل اصبعي الابهام و الصغرى لليد اليمني مستقيمين ',
      cover: ImageManager.family),
  LessonModel(
      name: 'أي شي ',
      description:
          'ضع الي اليمني منقبضة علي الصدر و ثم حركها تجاه الخارج لتصبح متجهه للأمام ثم اجعل اليد منبسطة و مواجهه لأعلي و حركها من الجسم الي الامام علي مراحل متتاليه ',
      cover: ImageManager.family),
  LessonModel(
      name: 'هذه – هذا لغير العاقل',
      description:
          'اجعل اليد اليسرى منبسطة و متجهه للأمام و اجعل اليد اليسرى مع إبقاء اصبع الصغرى مشيرا للأمام ثم حرك اليد اليمني للأمام ',
      cover: ImageManager.family),
  LessonModel(
      name: 'مذكر ',
      description:
          'حرك اليد اليمني الي مقدمة الجبهة كما لو كنت تمسك قبعة بين الابهام و باقي الأصابع ثم حركها للأمام قليلا ',
      cover: ImageManager.family),
  LessonModel(
      name: 'مؤنث ',
      description:
          'تتبع عظام الفك السفلي اليمني من الاذن حتي الذقن براحة اصبع الابهام اليمني ',
      cover: ImageManager.family),
  LessonModel(
      name: 'طفل – طفله ',
      description:
          'ضع راحة اليد اليمني منبسطة و متجهه الي اسفل امام الجسم و حركها و كأنك ( تطبطب ) علي راس طفل و عندما تشير الي اكثر من طفل حرك اليد الي موضع اخر و كرر الإشارة ',
      cover: ImageManager.family),
  LessonModel(
      name: 'العم – الخال',
      description:
          'ضع اليد اليمني قرب الصدغ الأيمن مع رفع اصبعي السبابة و الوسطي و ثني باقي الأصابع و حرك اليد للخلف و للأمام من المعصم ',
      cover: ImageManager.family),
];
List<LessonModel> animals = [
  LessonModel(
      name: "الحيوان",
      description:
          "ضع كلتا اليدين منحنيتان للداخل علي الصدر ثم حركهما قليلا يمينا و يسارا",
      cover: ImageManager.animals),
  LessonModel(
      name: "الحصان",
      description:
          "ضع اليد اليمني المنقبضة علي الجانب الأيمن للراس مع جعل اصبعي السبابة الوسطي يشيرا لأعلي ثم حرك اصبعي السبابة و الوسطي للأمام و لأسفل",
      cover: ImageManager.animals),
  LessonModel(
      name: "القطة",
      description:
          "ضع اصبعي السبابة و الابهام المتلامسان لكل يد امام الفم اسفل الانف ثم اسحب اليدين للخارج في نفس الوقت",
      cover: ImageManager.animals),
  LessonModel(
      name: "الكلب",
      description:
          "اجعل اليد اليمني في مستوي جانب الجيم ثم حركها للخلف مع جعل اصبع الوسطي يلامس اصبع الابهام ثم حرك اليد للأمام لليمين مع بسط اليد و جعلها تشير لأسفل",
      cover: ImageManager.animals),
  LessonModel(
      name: "النمر",
      description:
          "اجعل أصابع اليدين مستقيمة امام الوجه و متجهه للداخل ثم اسحب اليدين في نفس الوقت للخارج",
      cover: ImageManager.animals),
  LessonModel(
      name: "الغزال",
      description:
          "ضع كلتا اليدين المنبسطتين و المتجهتين للخارج لأعلي علي جانبي الوجه",
      cover: ImageManager.animals),
  LessonModel(
      name: "الزرافة",
      description:
          "ضع اليدين منبسطتين علي مقدمة الرقبة بحيث تكون اليد اليمني اعلي اليد اليسرى ثم حرك اليد اليمني لأعلي و للأمام",
      cover: ImageManager.animals),
  LessonModel(
      name: "الدب",
      description:
          "ضع اليدين متبادلتين و منحنيتين للداخل علي الكتفين ثم حركهما في نفس الوقت للداخل و لأسفل",
      cover: ImageManager.animals),
  LessonModel(
      name: "القرد",
      description:
          "اجعل كلتا اليدين منحنيتين و متجهتين لأعلي علي جانبي الجسم ثم حرك اليدين لأعلي قليلا",
      cover: ImageManager.animals),
  LessonModel(
      name: "الفيل",
      description:
          "ضع اليد اليميني امام الفم و هي متجهه للأمام ثم حرك اليد للأمام و لأسفل ثم لأعلي مسافة طويلة",
      cover: ImageManager.animals),
  LessonModel(
      name: "وحيد القرن",
      description:
          "ضع اليد اليمني اعلي الراس بحيث يشير اصبعا السبابة الوسطي للأمام و لأسفل مع وضع اصبع الإبهام بينهما ثم حرك اليد للخلف اعلي الراس",
      cover: ImageManager.animals),
  LessonModel(
      name: "الحمل",
      description:
          "اجعل اليد اليسرى منقبضة و متجهه لأسفل و للأمام ثم مرر اصبعي السبابة و الوسطي المستقيمان من الامام للخلف علي ظهر راحة اليد اليسرى مع تحريك اصبعي السبابة و الوسطي لليد اليمني بعيدا عن بعضهما",
      cover: ImageManager.animals),
  LessonModel(
      name: "البقرة",
      description:
          "ضع كلتا اليدين المنقبضتان علي جانبي الراس مع بسط اصبعي الابهام و الصغرى لكل يد ثم حرك الأصابع الصغرى لليدين للخلف",
      cover: ImageManager.animals),
  LessonModel(
      name: "الخنزير",
      description:
          "اجعل اليد اليمني منبسطة و متجهه لأسفل و ملاصقة لأسفل ثم حرك الأصابع لأسفل لتصبح علي شكل زاوية قائمة ثم لأعلي عدة مرات",
      cover: ImageManager.animals),
  LessonModel(
      name: "الطائر",
      description:
          "ضع اليد اليمني المنقبضة امام الفم ثم ابسط اصبعي السبابة و الوسطي حركهما قربا و بعدا من بعضهما",
      cover: ImageManager.animals),
  LessonModel(
      name: "البومة",
      description:
          "اجعل اليدين علي شكل دائرتين بواسطة اصبع الابهام و باقي أصابع اليد ثم ضعهما امام العينين ثم لف اليدين للخارج و الداخل من المعصمين",
      cover: ImageManager.animals),
  LessonModel(
      name: "النسر",
      description:
          "ضع اليد اليمني المنقبضة امام الفم مع جعل اصبع السبابة يأخذ شكل منحني لأسفل",
      cover: ImageManager.animals),
  LessonModel(
      name: "السمك",
      description:
          "ضع اليد اليسرى منبسطة عمودية علي معصم اليد اليمني المنبسطة ثم حرك اليد اليمني من المعصم للأمام و للخلف",
      cover: ImageManager.animals),
  LessonModel(
      name: "البطة",
      description:
          "اجعل اليد اليمني منقبضة امام الفم مع بسط أصابع السبابة الوسطي و الابهام ثم حرك الأصابع قربا و بعدا من بعضهما لأعلي و لأسفل",
      cover: ImageManager.animals),
  LessonModel(
      name: "الدجاجة",
      description:
          "ضع اليد اليمني علي الجانب الأيمن للفم بحيث يشير اصبعي السبابة و الوسطي للأمام مع تحريك الاصبعين للداخل و الخارج ثم ابسط اليد اليسرى المتجهة للأمام و لأعلي ثم حرك اصبعي السبابة و الابهام المتلامسين لليد اليمني تجاه راحة اليد اليسرى",
      cover: ImageManager.animals),
  LessonModel(
      name: "الكنغر",
      description:
          "اجعل أصابع اليد اليمني منحنيه لأسفل علي شكل زاوية قائمة ثم حرك اليد تجاه اليمين مع رفعها ثم خفضها قليلا اثناء تحريكها",
      cover: ImageManager.animals),
  LessonModel(
      name: "الماعز",
      description:
          "ضع اليد اليمني منقبضة تحت الذقن ثم حركها لأعلي امام الوجه مع بسط اصبعي السبابة و الوسطي لأعلي",
      cover: ImageManager.animals),
  LessonModel(
      name: "الفار",
      description:
          "لف اصبع الوسطي لليد اليمني علي اصبع السبابة ثم حرك الأصابع امام الانف في الاتجاه الايسر",
      cover: ImageManager.animals),
  LessonModel(
      name: "الثعبان",
      description:
          "اجعل اليد اليسرى منحنيه و متجهه لأسفل ثم حرك اصبع السبابة لليد اليمني المنقبضة للأمام حركة زجزاجيه تحت اليد اليسرى",
      cover: ImageManager.animals),
  LessonModel(
      name: "الديك الرومي",
      description:
          "اجعل اليد اليمني منقبضة امام الفم بحيث يشير اصبعا السبابة و الابهام لأسفل ثم حرك اليد لأسفل و للخارج في حركة زجزاجيه",
      cover: ImageManager.animals),
  LessonModel(
      name: "الثعلب",
      description:
          "لف اصبعي السبابة و الابهام لليد اليمني علي الانف مع جعل باقي أصابع اليد مستقيمة لأعلي ثم حرك الأصابع المنبسطة في الاتجاه الايسر",
      cover: ImageManager.animals),
  LessonModel(
      name: "الارنب",
      description:
          "ضع اليدين المتقاطعتين امام الصدر بحيث تكون أصابع السبابة و الوسطي لكل يد مستقيمة و تشير كل منها لأعلي ثم حرك أصابع اليدين في الاتجاه الأيمن قليلا",
      cover: ImageManager.animals),
  LessonModel(
      name: "السلحفاة",
      description:
          "ضع اليد اليسرى منحنية لأسفل اعلي اليد اليمني المنقبضة و المتجهة لأمام بحيث تكون عموديه عليها مع تحريك اصبع الابهام لليد اليمني لأعلي و لأسفل",
      cover: ImageManager.animals)
];
List<LessonModel> food = [
  LessonModel(
      name: "يأكل",
      description: "ضم أصابع اليد اليمني ثم حركها تجاه الفم عدة مرات",
      cover: ImageManager.food),
  LessonModel(
      name: "وجبة الإفطار",
      description:
          "ضم أصابع اليد اليمني ثم حركها تجاه الفم عدة مرات ثم حرك اليد اليمني المنبسطة و المتجهة لأعلي تجاه الكتف الأيمن مع وضع اليد اليسرى عمودية علي اليد اليمني عند المرفق",
      cover: ImageManager.food),
  LessonModel(
      name: "وجبة الغداء",
      description:
          "ضم أصابع اليد اليمني ثم حركها تجاه الفم عدة مرات ثم ضع اليد اليمني المنبسطة و المتجهة جهة اليمين بالقرب من الكتف الأيمن مع وضع اليد اليسرى المنبسطة و المتجهة لأسفل اسفل المرفق",
      cover: ImageManager.food),
  LessonModel(
      name: "وجبة العشاء",
      description:
          "ضم أصابع اليد اليمني ثم حركها تجاه الفم عدة مرات ثم ابسط اليد اليسرى المتجهة لأسفل و مرر اليد اليمني المنبسطة و المتجهة لأسفل عموديا علي معصم اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "الخبز",
      description:
          "حرك اطراف أصابع اليد اليمني لأسفل قليلا عبر السطح الخلفي لليد اليسرى المنبسطة و المتجهة للداخل",
      cover: ImageManager.food),
  LessonModel(
      name: "المربي",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلي ثم مرر اصبعي السبابة و الوسطي لليد اليمني بسرعة علي راحة اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "البيض",
      description:
          "اجعل أصابع كل يد منقبضة مع إبقاء اصبعي السبابة و الأوسط في وضع مستقيم و ضع اليد اليمني اعلي اليد اليسرى بحيث اليد اليمني اعلي اليد اليسرى بحيث تكون عمودية عليها ثم انزل بأصابع اليد اليمني علي أصابع اليد اليسرى ثم كلا اليدين تجاه الخارج و لأسفل في نفس الوقت",
      cover: ImageManager.food),
  LessonModel(
      name: "يشرب",
      description:
          "اقبض أصابع اليد اليمني بحيث تواجه اصبع الابهام لنفس اليد ثم حرك اليد تجاه الفم",
      cover: ImageManager.food),
  LessonModel(
      name: "الخبر المحمص",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلي ثم ضع اصبعي السبابة و الوسطي المستقيمان في وضع قائم علي راحة اليد اليسرى ثم ادر وضع اصبعي السبابة و الوسطي لليد اليمني ليصبحا في وضع عمودي علي ظهر اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "جائع",
      description:
          "اجعل أصابع اليد اليمني منحنية للداخل ثم اسحب اليد من امام الرقبة لأسفل حتي تصل الي منتصف الصدر",
      cover: ImageManager.food),
  LessonModel(
      name: "لذيذ الطعم",
      description:
          "ضع طرف الاصبع الأوسط علي مقدمة الفم ثم اسحب اليد بعيدا في الاتجاه بعيدا عن الفم ثم كرر هذه الحركة مرات قليلة",
      cover: ImageManager.food),
  LessonModel(
      name: "اللبن",
      description:
          "اجعل اليد اليمني كما لو كانت تضغط علي شي للداخل ثم اسحبها لأسفل ثم اعدها مره اخري لأعلي و كرر نفس الحركة بكلا اليدين بالتناوب",
      cover: ImageManager.food),
  LessonModel(
      name: "بطاطس",
      description:
          "اجعل اليد اليسرى منقبضة و متجهه لأسفل ثم اضرب بأصبعي السبابة و الوسطي لليد اليمني علي ظهر اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "اللحم",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه جهة الجسم مع إبقاء اصبع الابهام مستقيما ثم اضغط علي راحة اليد اليسرى بأصبعي السبابة و الابهام لليد اليمني",
      cover: ImageManager.food),
  LessonModel(
      name: "الجيلي",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلي ثم مرر الاصبع الصغير لليد اليمني المنقبضة في شكل منحني من الامام الي الخلف علي راحة اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "الشوكة",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلي ثم ضع اصبعي السبابة و الوسطي لليد اليمني في اتجاه عمودي لأسفل لتلامس راحة اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "كوب للشرب",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلي ثم حرك اليد اليمني المنحنية في اتجاه عمودي لأعلي بعيد عن راحة اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "السكينة",
      description:
          "اقبض أصابع اليد مع إبقاء اصبعي السبابة و الوسطي لكل يد مستقيمين ثم ضع أصابع اليد اليمني عموديا اعلي اليد اليسرى ثم اسحب أصابع اليد اليمني للخارج و لأسفل",
      cover: ImageManager.food),
  LessonModel(
      name: "الملعقة",
      description:
          "اجعل اليد اليسرى منحنية قليلا و متجهه لأعلي ثم حرك اصعبي السبابة و الوسطي لليد اليمني علي راحة اليد اليسرى",
      cover: ImageManager.food),
  LessonModel(
      name: "طبق مسطوح",
      description:
          "ضع أصابع الابهام و الوسطي لليدين معا بحيث تكون متقابلة لتكون شكل دائرة",
      cover: ImageManager.food),
  LessonModel(
      name: "الحلوى",
      description:
          "اجعل كلتا اليدين منقبضتين مع إبقاء اصبعي السبابة مستقيمين و متجهين لأعلي و حرك اليدين تجاه بعضهما حتي تتلامس اطراف أصابع اليدين كرر هذه الحركة عدة مرات",
      cover: ImageManager.food),
  LessonModel(
      name: "الماء",
      description:
          "اجعل اصبعي الابهام و السبابة لليد اليمني علي شكل دائرة مع إبقاء باقي أصابع اليد مستقيمة و منبسطة لأعلي ثم حرك اليد تجاه الفم عدة مرات",
      cover: ImageManager.food),
  LessonModel(
      name: "الملح",
      description:
          "اخبط اصبعي السبابة و الوسطي لليد اليمني فوق ظهر اصبعي السبابة و الوسطي لليد اليسرى مع تكرار هذه الحركة عدة مرات بحيث يكون اتجاه الأصابع لليدين عمودي علي بعضهما",
      cover: ImageManager.food),
  LessonModel(
      name: "عصير",
      description:
          "اقبض اليد اليمني مع إبقاء اصبع السبابة مستقيما ثم مرر اصبع السبابة عبر الشفتين من اليمين الي اليسار",
      cover: ImageManager.food)
];
List<LessonModel> home = [
  LessonModel(
      name: "بيت",
      description:
          "باليد اليمني المنحنية قليلا للداخل ضع اطراف الأصابع أولا علي الفم ثم علي الخد الأيمن",
      cover: ImageManager.home),
  LessonModel(
      name: "بيتي",
      description:
          "اجعل راحتي اليد منبسطتين و متجهتين لأسفل لتلامسا بعضهما علي شكل مثلث ثم حركهما معا لأسفل كما هو مبين في اتجاه الأسهم",
      cover: ImageManager.home),
  LessonModel(
      name: "نافذه",
      description:
          "ضع حافه الاصبع الأصغر لليد اليمني المنبسطة علي حافه ابهام اليد اليسرى المنبسطة مع إبقاء الكفين متجهتين للداخل ثم حرك اليد اليمني لأعلي لمسافة قصيره",
      cover: ImageManager.home),
  LessonModel(
      name: "باب",
      description:
          "ضع الكفين المنبسطتين متجهتين لأعلي في مواجهه الخارج بحيث يتلامس اصبعي السبابة لليدين مع ضم اصعبي الابهام لداخل راحة كل يد ثم لف اليد اليمني أولا في اتجاه واحد ثم في الاتجاه الاخر مع رسغ اليد",
      cover: ImageManager.home),
  LessonModel(
      name: "الحجرة",
      description:
          "اجعل كلا الساعدين في شكل زاوية قائمة و اليدين مبسوطتين و تواجهان بعضهما ثم حرك اليدين من الرسغ معا لتتجها للداخل",
      cover: ImageManager.home),
  LessonModel(
      name: "المطبخ",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة لأعلي ثم اجعل اليد اليمني منقبضة مع إبقاء اصبعي السبابة و الوسطي مستقيمين ثم ضع اليد اليمني اعلي اليد اليسرى و هي متجهه لأسفل ثم في حركه دائرية اقلب اليد اليمني فوق اليد اليسرى لتتجه لأعلي",
      cover: ImageManager.home),
  LessonModel(
      name: "حجره الراحة",
      description:
          "اقبض أصابع اليد اليمني مع جعل اصبع الوسطي يلتف علي اصبع السبابة مشيرا لأعلي ثم حرك اليد للاما قليلا في حركة دائرية خفيفة",
      cover: ImageManager.home),
  LessonModel(
      name: "الحمام",
      description:
          "اجعل اليد اليمني منقبضة امام الصدر و متجهه للخارج مع وضع اصبع الابهام بين اصبعي السبابة و الوسطي",
      cover: ImageManager.home),
  LessonModel(
      name: "سرير",
      description:
          "ارفع كلتا اليدين و راحة كل يد تجاه الأخرى ثم ضع ظهر اليد اليسرى علي الخد الأيمن",
      cover: ImageManager.home),
  LessonModel(
      name: "مقعد",
      description:
          "اجعل اليد اليسرى المنقبضة متجهه لأسفل مع إبقاء اصعبي الوسطي و السبابة منحنيين قليلا للداخل ثم اجعل اليد اليمني بنفس الشكل اعلي اليد اليسرى و لكن في وضع متقاطع معها",
      cover: ImageManager.home),
  LessonModel(
      name: "منضده",
      description:
          "ضع كلا الذراعين لأعلى في وضع مشابه لطيهما مع وضع الساعد الأيمن فوق الساعد الايسر و اليدين مبسوطتين و متجهتين لأسفل و اليد اليمني يمكن ان تربت علي مقدمه الساعد الايسر مرات قليله",
      cover: ImageManager.home),
  LessonModel(
      name: "البطانية",
      description:
          "اجعل كلتا اليدين في مستوي واحد بحيث تتدلي الأصابع لأسفل ثم ارفع كلتا اليدين معا لأعلي مع ضم أصابع كل يد في اتجاه الايهام لنفس اليد",
      cover: ImageManager.home),
  LessonModel(
      name: "القميص",
      description:
          "باليد اليمني و بين اصبعي الابهام و السبابة امسك طرف القميص الذي ترتديه من الجهة اليمني علي الصدر ثم اسحب برفق للخارج",
      cover: ImageManager.home),
  LessonModel(
      name: "البناطيل",
      description:
          "ضع كلا اليدين المنحنيتين للداخل قليلا اسفل الخصر ثم حركهما معا لأعلي تجاه الوسط",
      cover: ImageManager.home),
  LessonModel(
      name: "الجيبة",
      description:
          "ضع كلا اليدين المبسوطتين و المتجهتين للداخل اسفل الوسط ثم اسحب كلا اليدين في وقت واحد للخارج و لأسفل قليلا",
      cover: ImageManager.home),
  LessonModel(
      name: "البلوزة",
      description:
          "ضع اليد اليمني المنبسطة و المتجهة لأسفل علي الصدر بحيث يلامس الابهام الصدر ثم اسحب اليد لأسفل في حركة دورانيه للخارج ثم للداخل بحيث يلامس الاصبع الصغير الصدر مره اخري",
      cover: ImageManager.home),
  LessonModel(
      name: "الحذاء",
      description:
          "اضرب جانبي اليدين المنغلقتين و المتجهتين لأسفل ببعضهما عدة مرات",
      cover: ImageManager.home),
  LessonModel(
      name: "الجوارب",
      description:
          "اقبض اليدين مع جعل اصبعي السبابة يشيرا لأسفل و اجعلهما متلامسان ثم حركهما لأسفل و اعلي في الاتجاه المعاكس بالتبادل",
      cover: ImageManager.home),
  LessonModel(
      name: "بيجامة",
      description:
          "ضع راحة اليد اليمني المفتوحة امام و حركها لأسفل الي مستوي الذقن ثم حرك اطراف أصابع كلتا اليدين المفتوحتين لأسفل الصدر عدة مرات",
      cover: ImageManager.home),
  LessonModel(
      name: "غسل اليد بالصابون",
      description:
          "ابسط اليد اليسرى مع جعلها متجهة للأمام ثم حرك مقدمه أصابع اليد اليمني علي راحة اليد اليسرى في الاتجاهين عدة مرات",
      cover: ImageManager.home),
  LessonModel(
      name: "اللون",
      description:
          "ضع أصابع اليد اليمني المنحنية للداخل بالقرب من القم ثم حرك أصابع اليد في حركة اهتزازية خفيفة مع سحب اليد للخارج قليلا",
      cover: ImageManager.home),
  LessonModel(
      name: "احمر",
      description: "ضع اصبع السبابة علي الشفاه السفلي ثم اسحب لأسفل قليلا",
      cover: ImageManager.home),
  LessonModel(
      name: "اخضر",
      description:
          "اقبض أصابع اليد اليمني ثم ضعها علي الصدر مع إبقاء اصبع السبابة مفرودا ثم حرك اليد تجاه اليمين مع تحرك اليد في حركة اهتزازية بسيطة",
      cover: ImageManager.home),
  LessonModel(
      name: "برتقالي",
      description:
          "ضع اليد اليمني المنقبضة امام الفم ثم اضغط علي الفم برفق عدة مرات",
      cover: ImageManager.home),
  LessonModel(
      name: "اصفر",
      description:
          "ضع اليد اليمني المنقبضة امام منقطة البطن مع إبقاء اصبعي الابهام و الاصبع الصغير مفرودتين ثم حرك اليد تجاه اليمين مع تحرك اليد في حركة اهتزازية بسيطة",
      cover: ImageManager.home),
  LessonModel(
      name: "أزرق",
      description:
          "ابسط اليد اليمنى المتجهة لأعلـى مـع ضم إصبع الإبهام للداخل ، ثم حرك اليد في الاتجاه الأيمن مع تحريك اليـد فـي حـركـه اهتزازیة بسيطة",
      cover: ImageManager.home),
  LessonModel(
      name: "أبيض",
      description:
          "ضع اليد اليمنى على الصدر بحيث تكون الأصابع منحنيه للداخل تجاه الجسم ، ثم اسحب اليد لأسفل قليلا مع ضم الأصابع للداخل",
      cover: ImageManager.home),
  LessonModel(
      name: "أسود",
      description:
          "حرك إصبع السبابة اليمنى على الحاجب الأيمن في الاتجاه من داخل الوجه إلى الجهة اليمنى من الوجه",
      cover: ImageManager.home),
  LessonModel(
      name: "أسمر مائل إلى الصفرة",
      description:
          "ضع اليد اليمنى المنقبضة على الجهة اليمنى من الذقن ، ثم اسحب اليد لأسفل.",
      cover: ImageManager.home),
  LessonModel(
      name: "رمادی",
      description:
          "ابسط اليدين أمام الصدر مع جعل أصابع كل يد بعيده قليلا عن بعضها ، ثم مرر أصابع اليد اليمنى للأمام خلال الفراغات الموجودة بين أصابع اليد اليسرى التي يتم تحريكها للخلف.",
      cover: ImageManager.home)
];
List<LessonModel> time = [
  LessonModel(
      name: "ساعه زمنيه",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه للخارج و متجهه لأعلى ، ثم حرك اليد اليمنى المنقبضة و إصبع السبابة يشير لأعلى أمام راحة اليد اليسرى في اتجاه عقار بالساعة حرکة دورانيه کاملة",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم",
      description:
          "إصبع اجعل اليد اليسرى منقبضه مع مد السبابة وضم اليد للجسم في وضع أفقي أمام البطن ، مع جعل اليد اليمنى المنقبضة و إصبع السبابة ممتد لأعلى عمودياً على اليد اليسرى ، ثم حرك اليد اليمنى لأسفل تجاه اليد اليسرى",
      cover: ImageManager.time),
  LessonModel(
      name: "الأسبوع الماضي",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهة لأعلى ، ثم مرر اليد اليمنى المنقبضة واصبع السبابة ممتد على راحة اليد اليسرى من الخلف للأمام ، ثم أشر بإصبع السبابة لليد اليمنى على أعلى الكتف الأيمن",
      cover: ImageManager.time),
  LessonModel(
      name: "الأسبوع المقبل",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهة لأعلى ، ثم مرر اليد اليمنى المنقبضة وإصبع السبابة ممتد على راحة اليد اليسرى من الخلف للأمام .",
      cover: ImageManager.time),
  LessonModel(
      name: "شهر",
      description:
          "اجعل اليد اليسرى منقبضة مع مد إصبع السبابة لأعلى و اليد اليمنى منقبضه مع إصبع السبابة و وضع طرفه علـى طـرف إصبع السبابة اليسرى ، ثم حرك السبابة اليمنى من أعلى لأسفل ، كرر هذه الحركة عدة مرات",
      cover: ImageManager.time),
  LessonModel(
      name: "السنه",
      description:
          "اجعل اليدين منقبضتين مع وضع اليد اليمنى ا أعلى اليد اليسرى ، ثم حرك اليد اليمنى حرکة دورانية حول اليد اليسرى لجعلها تستقر مره أخرى أعلى اليد اليسرى.",
      cover: ImageManager.time),
  LessonModel(
      name: "السنه الماضية",
      description:
          "اجعل اليدين منقبضتين مع وضع اليد اليمنى اعلى اليد اليسرى ، ثم حرك اليد اليمنى حركة دورانية حول اليد اليسرى لجعلها تستقر مره أخرى أعلى اليد اليسرى، ثم أشر بإصبع السبابة لليد اليمنى على أعلى الكتف الأيمن",
      cover: ImageManager.time),
  LessonModel(
      name: "السنة المقبلة",
      description:
          "اجعل اليدين منقبضتين مع وضع اليد اليمنى أعلى اليد اليسرى ، ثـم حـرك اليد اليمنى حرکة دورانيه حول اليد اليسرى لجعلها تستقر مرة أخرى أعلى اليد اليسرى ، ثم أشر بإصبع السبابة لليد اليمنى مع تحريكه إلى الأمام .",
      cover: ImageManager.time),
  LessonModel(
      name: "اليوم",
      description:
          "اجعل اليدين منقبضتين و مواجهتين لأعلى مع مد إصبعي الصغرى ثم حرك اليدين لأسفل ، ثم اجعل اليد اليسرى منقبضة مع إصبع السبابة وضم اليد للجسم في وضع أفقي أمام البطن ، مع جعل اليد اليمنى المنقبضة و إصبع السبابة ممتد لأعلى عموديه على اليد اليسرى ، ثـم حـرك اليد اليمنى لأسفل تجاه اليد اليسرى.",
      cover: ImageManager.time),
  LessonModel(
      name: "بالأمس",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع الصغرى لأعلى و جعل الإبهام ملامس للجانب الأيمن للوجه ، ثم حرك اليد للخلف",
      cover: ImageManager.time),
  LessonModel(
      name: "حتى الآن",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبعي الصغرى والإبهام مع جعل اليد مواجهه لأسفل ، ثم حرك اليد للأمام",
      cover: ImageManager.time),
  LessonModel(
      name: "التالي",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للجسم مع جعل اليد اليمنى للداخل ، ثم حرك اليد اليمنى لأعلى و للخارج حول اليــد اليسرى",
      cover: ImageManager.time),
  LessonModel(
      name: "مبكراً",
      description:
          "اجعل اليد اليسرى منقبضه و مواجهه لأسفل ، ثم مرر اليد اليمنى أعلى معصم اليد اليسرى مع جعل طرف إصبع الوسطى يلامس معصم اليد اليسرى",
      cover: ImageManager.time),
  LessonModel(
      name: "مؤخراً",
      description:
          "اجعل الذراع الأيمن بعيد قليلاً عن الجسم مع جعل اليد منبسطة و مواجهة لأسفل ثم حرك اليد بعيداً عن الجسم عدة مرات.",
      cover: ImageManager.time),
  LessonModel(
      name: "قبل ( تشير للزمن)",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للجسم، مع جعل اليد اليمنى للداخل ، ثم حرك اليد اليمنى جهة الجسم",
      cover: ImageManager.time),
  LessonModel(
      name: "بعد ( تشير للزمن )",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للجسم، مع جعل اليد اليمنى للخارج ، ثم حرك اليد اليمنى جهـة الخـارج بعيـداً عـن الجسم",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم الأحد",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للأمام، ثم حركهما معاً حركة دائرية من الداخل للخارج .",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم الإثنين",
      description:
          "اجعل اليد اليمنى منقبضة و مواجهة للخارج مع وضع إصبع الإبهام بين إصبعي الصغرى و البنصر ، ثم حرك اليد حركه دائريه من الداخل للخارج .",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم الثلاثاء",
      description:
          "اجعل اليد اليمنى منقبضة ومواجهة للخارج مع وضع إصبع الإبهام بين إصبعي السبابة و الوسطى ، ثم حرك اليد حركه دائريه من الداخل للخارج.",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم الأربعاء",
      description:
          "اجعل أصابع السبابة والوسطى و البنصر لليد اليمنى ممتدة لأعلى مع ضم إصبعي الصغرى والإبهام مع جعل اليد مواجهة للخارج ، ثم حرك اليد حركه دائريه",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم الخميس",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى ممتدان للأمام مع قبض باقي أصابع اليد ، ثم حرك اليد حركة دورانيـه مـن الداخل للخارج .",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم الجمعة",
      description:
          "اجعل اليد اليمنى مواجهه للخارج مع أصابع الوسطى و البنصر و الصغرى لأعلى وضم إصبعي السبابة و الإبهام لبعضهما ، ثم حرك اليد حركة دائرية من الداخل للخارج.",
      cover: ImageManager.time),
  LessonModel(
      name: "يوم السبت",
      description:
          "اجعل اليد منقبضه و مواجهة للأمــام ومتجهة لأعلى ، ثم حرك اليد حركة دورانيه من الداخل للخارج .",
      cover: ImageManager.time),
  LessonModel(
      name: "الظهيرة - منتصف النهار",
      description:
          "اجعل اليدين منبسطتين مع جعل اليد اليسرى مواجهه لأسفل و جعل مرفق اليد اليمنى مرتكز على ظهر أطراف أصابع اليد اليسرى",
      cover: ImageManager.time),
  LessonModel(
      name: "الغد",
      description:
          "اجعل اليد اليمنى منقبضه مع وضعها على الجانب الأيمن للذقن مع مد إصبع الإبهام لأعلى ، ثم حرك اليد للأمام .",
      cover: ImageManager.time),
  LessonModel(
      name: "بعد الظهر",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأسفل مع وضع اليد اليمنى أعلى اليد اليسرى ومائله عليها في وضع متقاطع معها .",
      cover: ImageManager.time),
  LessonModel(
      name: "الصباح",
      description:
          "اجعل اليدين منبسطتين مع جعل اليد اليمنى مواجهه لأعلى و ممتدة للأمام و وضع اليد اليسرى أعلى اليد اليمنى و ملامسة للجسم ، ثم حرك اليد اليمنى لأعلى تجاه الكتف",
      cover: ImageManager.time),
  LessonModel(
      name: "المساء – الليل",
      description:
          "اجعل اليد اليسرى منبسطة ومواجهة لأسفل ، ثم ضع اليد اليمنى منحنيه لأسفل أعلى معصم اليد اليسرى",
      cover: ImageManager.time),
  LessonModel(
      name: "فصل الربيع",
      description:
          "مرر أصابع اليد اليمنى بين أصابع اليد اليسرى المنحنية من أسفل لأعلـى مـع مـد أصابع اليد اليمنى بعيداً عن بعضها أثناء حركة اليد",
      cover: ImageManager.time),
  LessonModel(
      name: "فصل الصيف",
      description:
          "اليد اليمنى المنقبضة أمام الجبهة مـن اليسار لليمين مع مد إصبع السبابة قليلاً للأمام .",
      cover: ImageManager.time),
  LessonModel(
      name: "فصل الخريف",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهـة للجسم ومائلة تجاه الكتف الأيمن ، ثم حرك اليد اليمنى المنبسطة أمام اليد اليسرى من أعلى لأسفل",
      cover: ImageManager.time),
  LessonModel(
      name: "فصل الشتاء",
      description:
          "اجعل اليدين منقبضتين ومتجهتين لأعلى أمام الصدر ، ثم حركهما حركه اهتزازيه عدة مرات",
      cover: ImageManager.time),
];
List<LessonModel> education = [];
List<LessonModel> health = [];
List<LessonModel> ideas = [];
List<LessonModel> meaning = [];
List<LessonModel> nature = [];
List<LessonModel> travelling = [];
