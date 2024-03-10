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
      cover: '${ImageManager.categories}1.png',
      category: Categories.family,
      lessons: family,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.animals: CategoryItemModel(
      title: 'الحيوانات',
      cover: '${ImageManager.categories}1.png',
      category: Categories.animals,
      lessons: animals,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.food: CategoryItemModel(
      title: ' الطعام و أدواته',
      cover: '${ImageManager.categories}1.png',
      category: Categories.food,
      lessons: food,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.home: CategoryItemModel(
      title: 'المنزل و الملابس و الألوان',
      cover: '${ImageManager.categories}1.png',
      category: Categories.home,
      lessons: home,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.time: CategoryItemModel(
      title: 'الزمن و فصول السنه',
      cover: '${ImageManager.categories}1.png',
      category: Categories.time,
      lessons: time,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.education: CategoryItemModel(
      title: 'التربية و التعليم',
      cover: '${ImageManager.categories}1.png',
      category: Categories.education,
      lessons: education,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.health: CategoryItemModel(
      title: 'الصحة و الطوارئ',
      cover: '${ImageManager.categories}1.png',
      category: Categories.health,
      lessons: health,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.ideas: CategoryItemModel(
      title: 'الأفكار و الانفعالات',
      cover: '${ImageManager.categories}1.png',
      category: Categories.ideas,
      lessons: ideas,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.meaning: CategoryItemModel(
      title: 'المترادفات و المتضادات',
      cover: '${ImageManager.categories}1.png',
      category: Categories.meaning,
      lessons: meaning,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.nature: CategoryItemModel(
      title: 'الطبيعة و البيئة',
      cover: '${ImageManager.categories}1.png',
      category: Categories.nature,
      lessons: nature,
      backgroundColor: CupertinoColors.activeBlue),
  Categories.travelling: CategoryItemModel(
      title: 'السفر و الاجازات و  الاتجاهات',
      cover: '${ImageManager.categories}1.png',
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
List<LessonModel> animals = [];
List<LessonModel> food = [];
List<LessonModel> home = [];
List<LessonModel> time = [];
List<LessonModel> education = [];
List<LessonModel> health = [];
List<LessonModel> ideas = [];
List<LessonModel> meaning = [];
List<LessonModel> nature = [];
List<LessonModel> travelling = [];
