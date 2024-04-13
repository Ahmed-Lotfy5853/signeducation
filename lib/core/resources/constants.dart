import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signeducation/features/bottom_naviagtor/view/components/provider/item_selected_provider.dart';
import 'package:signeducation/core/resources/assets.dart';
import 'package:signeducation/features/categories/models/category_item_model.dart';

import '../../features/lesson/models/lesson_model.dart';
import 'enums.dart';
 SelectedItemProiver providerItemSelected(context)=>Provider.of<SelectedItemProiver>(context);
 bool checkLogin = false;
 // check level compeleted or not
List<bool> generateList(int len)
{
  return List.generate(len, (index)=>index==0?true:false);
}
 

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
    Categories.health,
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
      lessons: travelling,
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
List<LessonModel> education = [
  LessonModel(
      name: "التعليم – التربية",
      description:
          "اجعل اليدين منقبضتين و متواجهتين على مستوى جانبي الرأس ، ثم حركهما للأمام وللخلف في نفس الوقت عدة مرات",
      cover: ImageManager.education),
  LessonModel(
      name: "المدرسة",
      description:
          "اجعل اليدين مبسطتين و متواجهتين بحيث تكون اليد اليمنى أعلى اليد اليسرى ثم صفق باليد اليمنى على اليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "التاريخ",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى ممتدتين للأمام مع قبض باقي أصابع اليد، ثم حرك اليد من المعصم لأعلى و لأسفل",
      cover: ImageManager.education),
  LessonModel(
      name: "المكتبة",
      description:
          "اجعل اليد اليمنى منقبضه و متجهه لأعلى ومواجهه للخارج مع مد إصبعي السبابة والإبهام ، ثم حرك اليد حركه دورانيه حول  المعصم",
      cover: ImageManager.education),
  LessonModel(
      name: "منهج ( للدراسة )",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلى و مواجهه للخارج مع جعل أصابع اليد اليمنى منحنيه قليلا للداخل ، ثم حرك اليد اليمني أمام راحة اليد اليسرى من أعلى لأسفل مع قبض أصابع اليد اليمنى ووضع إصبع الإبهام بجوار إصبع الصغرى",
      cover: ImageManager.education),
  LessonModel(
      name: "مهم",
      description:
          "اجعل اليدين منبسطتين و في وضع عمودي مع وضع اليد اليمنى خلف و أعلى اليد اليسرى ، ثم حرك اليد اليمنى أعلى اليد اليسرى بحيث يستقر إصبع الصغرى لليد اليمنى داخل تجويف اليد اليسرى والإبهام الأيسر",
      cover: ImageManager.education),
  LessonModel(
      name: "خطه - جدول",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه للأمام، ثم مرر أطراف أصابع اليد اليمنى على راحة اليد اليسرى من الخلف للأمام ثم من أعلى لأسفل .",
      cover: ImageManager.education),
  LessonModel(
      name: "مقرر معين لابد من اتباعه",
      description:
          "اجعل اليد اليمنى منبسطة و مواجهه لأعلى و أصابع اليد اليمنى منحنيه قليلا للداخل ثم حرك اليد اليمنى من الأمام للخلف على راحة اليد اليسرى.",
      cover: ImageManager.education),
  LessonModel(
      name: "المعلم",
      description:
          "اجعل اليدين في مستوى على جانبي الرأس بحيث تكون أصابع اليدين منحنيه قليلا للداخل و أصابع كل يد مواجهه للإبهام ، ثم حرك اليدين معا للأمام ، ثم اجعل اليدين منبسطتين و متواجهتين و حركهما لأسفل في نفس الوقت",
      cover: ImageManager.education),
  LessonModel(
      name: "الطالب التلميذ",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى ، ثم حرك اليد اليمنى و الأصابع منحنيه للداخل من على الجبهة لتستقر على راحة اليد اليسرى ، ثم اجعل اليدين منبسطتين و متواجهتين و حركهما لأسفل في نفس الوقت",
      cover: ImageManager.education),
  LessonModel(
      name: "يدرس",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة للخارج ، و اليد اليمنى منبسطة و مواجهة لأسفل مع إبعاد إصبع السبابة عن باقي أصابع اليد قليلا ، ثم حرك اليد اليمنى حركه اهتزازية بسيطة و للأمام تجاه راحـة اليد اليسرى و للخلف عدة مرات",
      cover: ImageManager.education),
  LessonModel(
      name: "يتعلم",
      description:
          "اجعل اليد اليسرى منبسطة ومواجهة لأعلى ، ثم حرك اليد اليمنى و الأصابع منحنية للداخل من على الجبهة لتستقر على راحة اليد اليسرى.",
      cover: ImageManager.education),
  LessonModel(
      name: "الأصغر ( في السن أو المركز )",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة للأمام، ثم ضع طرف إصبع السبابة اليمنى على طرف إصبع السبابة لليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "الأكبر ( في السن أو المركز )",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة للأمام، ثم ضع طرف إصبع السبابة اليمنى على طرف إصبع الإبهام لليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "امتحان",
      description:
          "اجعل اليدين منقبضتين مع مد إصبعي السبابة للأمام ، ثم حرك اليدين كأنك ترسم بهما علامتي استفهام متقابلتين  ثم ابسط اليدين مع جعلهما مواجهتين لأسفل",
      cover: ImageManager.education),
  LessonModel(
      name: "التلميذ المبتدئ",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة للأمام، ثم ضع طرف إصبع السبابة اليمنى على طرف إصبع البنصر لليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "الكتاب",
      description:
          "اجعل اليدين منبسطتين و منطبقتين ومتجهتين للأمام ، ثم حركهما كأنك تفتح کتاب",
      cover: ImageManager.education),
  LessonModel(
      name: "الكلمة",
      description:
          "اجعل اليد اليسرى منقبضه مع مد إصبع السبابة لأعلى و اليد اليمنى منقبضة مع مد إصبعي السبابة و الإبهام و جعل أطرافهما تلامس إصبع السبابة لليد اليسرى.",
      cover: ImageManager.education),
  LessonModel(
      name: "السطر-الخط",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه لأعلى و مواجهه للخارج ، ثم اسحب إصبع الصغرى لليد اليمنى على راحة اليد اليسرى من أعلى لأسفل .",
      cover: ImageManager.education),
  LessonModel(
      name: "الفقرة",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة لأعلى، مع وضع أطراف أصابع اليد اليمنى المنحنية للداخل على راحة اليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "الدرس",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأعلى مع وضع اليد اليمنى أعلى اليد اليسرى و متقاطعة معها ، ثم حرك راحة اليد اليمنى لتبقى عموديه على راحة اليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "اقرأ",
      description:
          "اجعل اليد اليسرى منبسطة و متجهة للأمام، ثم حرك أطراف إصبعي السبابة والوسطى لليد اليمنى أمام راحة اليد اليسرى من أعلى لأسفل",
      cover: ImageManager.education),
  LessonModel(
      name: "اكتب",
      description:
          "اجعل اليد اليمنى منبسطة و مواجهه للخارج ، ثم حرك طـرف إصبع السبابة والإبهام لليد اليمنى و كأنك تمسك بالقلم على راحة اليد اليسرى بحركة زجزاجيه",
      cover: ImageManager.education),
  LessonModel(
      name: "قصه",
      description:
          "اجعل إصبعي السبابة و الإبهام لليديـن يكونان دائرتين متشابكتين مـع مـد بـاقي أصابع اليدين للخارج ، ثم حرك اليدين في نفس الوقت للخارج بعيدا عن بعضهما",
      cover: ImageManager.education),
  LessonModel(
      name: "الطبيب",
      description:
          "اجعل اليد اليسرى منقبضه و مواجهه لأعلى مع وضع أطراف أصابع اليد اليمنى أعلى معصم اليد اليسرى بحيث تكون أصابع اليد اليمنى منحنيه لأسفل و إصبع السبابة ممتد جهة اليسار .",
      cover: ImageManager.education),
  LessonModel(
      name: "الممرضة",
      description:
          "اجعل اليد اليسرى منقبضه و مواجهة لأعلى، ثم ضع أطراف إصبعي السبابة والوسطى لليد اليمنى على معصم اليد اليسرى مع قبض باقي أصابع اليد اليمنى.",
      cover: ImageManager.education),
  LessonModel(
      name: "الفلاح",
      description:
          "اجعل اليد اليمنى منبسط و متجهة لأعلى ثم مرر إصبع الإبهام على الذقن من الخلف للأمام، ثم اجعل اليدين منبسطتين ومتواجهتين ثم حركهما لأسفل في نفس الوقت",
      cover: ImageManager.education),
  LessonModel(
      name: "الجارسون",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأعلى و متجهتين للأمام ، ثم حرك اليد اليمنى للأمام واليد اليسرى للخلف ، ثم اجعل اليدين منبسطتين و متواجهتين ثم حركهما لأسفل في نفس الوقت .",
      cover: ImageManager.education),
  LessonModel(
      name: "ينجح",
      description:
          "اجعل اليدين منقبضتين و متجهتين للأمام بحيث تكون اليد اليمنى خلف اليد اليسرى، ثم حرك اليد اليمنى للأمام .",
      cover: ImageManager.education),
  LessonModel(
      name: "يسقط",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهة لأعلى مع وضع اليد اليمنى على راحة اليد اليسرى بحيث يكون إصبعا السبابة والوسطى ممتدين وباقي أصابع اليد منقبضه ، ثم حرك اليـد اليمنى للأمام ولأسفل.",
      cover: ImageManager.education),
  LessonModel(
      name: "نجاح",
      description:
          "اجعل أصابع اليدين منقبضتين و إصبعي السبابه متقابلين و اليدين في مستوى أمام الوجه ، ثم حرك اليدين لأعلى مع لف اليدين ليشير إصبعي السبابه لأعلى",
      cover: ImageManager.education),
  LessonModel(
      name: "يتكلم",
      description:
          "اجعل إصبع السبابة لليد اليمني أمام الفم يشير إلى اليسار ، ثم حرك اليد لأسفل مع تحريكها حركه دورانيه واحده",
      cover: ImageManager.education),
  LessonModel(
      name: "يعانى",
      description:
          "يقاوم اجعل أصابع اليد اليمنى منحنيه قليلا للداخل و مواجهة للجسم أمام الصدر ، ثم حرك اليد للأمام و للخلف عدة مرات.",
      cover: ImageManager.education),
  LessonModel(
      name: "الصراخ",
      description:
          "اجعل أصابع اليد اليمني تحيط بالذقن ، ثم حرك اليد للخارج و لأعلى مع تحريكها حركه تموجيه خفيفة",
      cover: ImageManager.education),
  LessonModel(
      name: "يصيح",
      description:
          "اجعل اليدين منقبضتين و اليد اليمنى أعلى اليد اليسرى ، ثم ضع اليدين في وضع متقاطع عند المعصمين مع بسط أصابع اليدين و حركهما للأمام.",
      cover: ImageManager.education),
  LessonModel(
      name: "يتشاجر",
      description:
          "اجعل إصبعي السبابة لليدين ممتداين للداخل و متقابلين على مسافة قريبة من بعضهما ، ثم حركهما بالتبادل لأعلى ولأسفل عدة مرات",
      cover: ImageManager.education),
  LessonModel(
      name: "الهجاء",
      description:
          "اجعل أصابع اليد اليمنى منحنيه قليلا واليد مواجهه لأسفل ، ثم حرك اليد حركه اهتزازيه ثم حركها جهة اليمين.",
      cover: ImageManager.education),
  LessonModel(
      name: "قراءة الشفاه",
      description:
          "اجعل إصبعي السبابة و الإبهام لليد اليمنى منحنيين على شكل زاوية قائمة مع قبض باقى أصابع اليد ، مع وضع اليد أمام الفم، ثم حرك اليد حركه دورانيه رأسيه",
      cover: ImageManager.education),
  LessonModel(
      name: "الخطاب – البريد",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهة لأعلى مع قبض أصابع اليد اليمنى و مـد إصبع الإبهام أمام الفم ، ثم حرك اليد اليمنى ليستقر إصبع الإبهام على راحة اليد اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "الملصق – اللافتة",
      description:
          "اجعل إصبعي السبابة لليدين ممتداتين الأعلى مع قبض باقي أصابع اليدين ، ثم ارسم شكل مستطيل بتحريك اليدين معا",
      cover: ImageManager.education),
  LessonModel(
      name: "الراديو",
      description:
          "ضع اليدين و الأصابع منحنية للداخل كل يد على الأذنين بحيث تكون اليد اليمنى على الأذن اليمنى واليد اليسرى على الأذن اليسرى",
      cover: ImageManager.education),
  LessonModel(
      name: "التليفزيون",
      description:
          "اجعل اليد اليمنى منقبضه و في مستوى الكتف الأيمن و مواجهه للخارج ، ثم حرك اليد جهة اليمين مع مد إصبعي السبابة والوسطى",
      cover: ImageManager.education),
];
List<LessonModel> health = [
  LessonModel(
      name: "الصحة",
      description:
          "اجعل أطراف أصابع اليدين ملامسه للصدر على الجانبين ، ثم اسحب اليدين للخارج مع قبض أصابع اليدين.",
      cover: ImageManager.health),
  LessonModel(
      name: "التمرين",
      description:
          "اجعل اليدين منقبضتين و متجهتين لأعلى على مستوى جانبي الرأس ، ثم حرك اليدين لأعلى و لأسفل عدة مرات",
      cover: ImageManager.health),
  LessonModel(
      name: "المرض",
      description:
          "ضع طرف إصبع الوسطى لليد اليمنى على الجبهة ، وطرف إصبع الوسطى لليد اليسرى على الصدر في المنتصف",
      cover: ImageManager.health),
  LessonModel(
      name: "السعال",
      description:
          "اجعل أصابع اليد اليمنى منحنيـه للداخل تجاه الجسم أمام الصدر ، ثم حرك اليد للأمام و للخلف",
      cover: ImageManager.health),
  LessonModel(
      name: "الزكام",
      description:
          "امسك طرف الأنف بين إصبعي الإبهام و السبابة لليد اليمنى مع قبض باقي أصابع اليد ، ثم اسحب اليد لأسفل",
      cover: ImageManager.health),
  LessonModel(
      name: "السم",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى مع قبض أصابع اليد اليمنى و إصبع السبابة للأمام و إصبع الوسطى لأسفل حتى يلامس راحة اليد اليسرى ، ثم حركه على شكل دائرة على راحة اليد اليسرى",
      cover: ImageManager.health),
  LessonModel(
      name: "الموت",
      description:
          "اجعل اليدين منبسطتين ومتجاورتين بحيث تكون اليد اليسرى مواجهه لأسفل و اليد اليمنى مواجهه لأعلى ، ثم حرك اليدين حركه دائريه من المعصمين لتصبح اليد اليسرى مواجهه لأعلى و اليد اليمنى مواجهه لأسفل",
      cover: ImageManager.health),
  LessonModel(
      name: "الحصبة",
      description:
          "ضع أطراف أصابع اليد اليمنى المنحنية على الجانب الأيمن للوجه ، ثم حرك اليد في حركات نصف دائريه بالقرب و البعد عن الوجه",
      cover: ImageManager.health),
  LessonModel(
      name: "الغضب",
      description:
          "اجعل اليد اليمنى منقبضه مع وضع طرف إصبع الإبهام أسفل الذقن ، ثـم حـرك اليـد من المعصم يمينا ويساراً.",
      cover: ImageManager.health),
  LessonModel(
      name: "التألم",
      description:
          "اجعل اليدين منقبضتين و متواجهتين مع مد إصبعي السبابة تجاه بعضهما ، ثم حرك اليدين حتى يتماس طرفا إصبعي السبابة",
      cover: ImageManager.health),
  LessonModel(
      name: "المستشفى",
      description:
          "اجعل ساعد اليد اليسرى منحنى و ملامس للجسم مع قبض أصابع اليد اليمنى و مـد إصبعي السبابة والوسطى ثم حركهما على الذراع اليسرى بشكل عرضي ثـم مـن أعلى لأسفل.",
      cover: ImageManager.health),
  LessonModel(
      name: "المريض",
      description:
          "اجعل ساعد اليد اليسرى منحنى و ملامس للجسم مع قبض أصابع اليد اليمنى و مـد إصبع السبابة للأمام و جعل إصبع الوسطى ملامس للذراع الأيسر ثم حركه على الذراع اليسرى بشكل عرضي ثم من أعلى لأسفل.",
      cover: ImageManager.health),
  LessonModel(
      name: "الذراع",
      description:
          "اجعل الذراع الأيسر منحنى أمام الجسم ثم مرر اليد اليمنى المنبسطة و المتجهة لأعلى على الذراع الأيسر من الخلف للأمام",
      cover: ImageManager.health),
  LessonModel(
      name: "الأيدي",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأسفل، ثم مرر اليد اليمنى أعلى ظهر راحة اليد اليسرى ، ثم مرر اليد اليسرى أعلى راحة اليد اليمنى",
      cover: ImageManager.health),
  LessonModel(
      name: "القدم",
      description:
          " اجعل اليد اليمنى منقبضة مع مد إصبع السبابة لأسفل و جعله يشير لأسفل جهة اليد اليسرى ثم اليمني مع تحريك اليد لأسفل قليلا",
      cover: ImageManager.health),
  LessonModel(
      name: "مشوه الوجه",
      description:
          "اجعل أصابع اليد اليمنى منحنيه للداخل واليد أمام الوجه ، ثم حرك اليـد حـركـه دائريه أمام الوجه",
      cover: ImageManager.health),
  LessonModel(
      name: "أعمى",
      description:
          "اجعل اليد اليمنى منقبضه مع جعل إصبعي السبابة و الوسطى منحنيين و ممتدين لأعلى قليلا أمام العينين ، ثـم حـرك اليد لأسفل",
      cover: ImageManager.health),
  LessonModel(
      name: "أصم",
      description:
          "ضع طرف إصبع السبابة لليد اليمنى أسفل الأذن اليمنى ، ثم اجعل اليدين منبسطتين ومواجهتين للخارج ثم حركهما تجاه بعضهما في نفس الوقت.",
      cover: ImageManager.health),
  LessonModel(
      name: "ضعيف السمع",
      description:
          "اجعل أصابع اليد اليمنى منقبضـه مـع مـد إصبعي السبابة و الوسطى للأمام ، ثم حرك اليد جهة اليمين على مراحل مع رفعها وخفضها قليلاً أثناء تحريكها",
      cover: ImageManager.health),
  LessonModel(
      name: "ينظف جسمه",
      description:
          "ضع اليدين منقبضتين على جانبي الصدر ثم حركهما لأعلى و لأسفل عدة مرات.",
      cover: ImageManager.health),
  LessonModel(
      name: "الاستحمام",
      description:
          "اجعل أطراف أصابع اليد اليمنى منحنية لأسفل و اليد أعلى الرأس ، ثم حرك اليد تجاه الرأس حتى تلامس الرأس مع إبعاد الأصابع قليلاً عن بعضها",
      cover: ImageManager.health),
  LessonModel(
      name: "فرشاة الأسنان - تنظيف الأسنان",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة أمام الفم ، ثم حرك اليد لأعلى ولأسفل قليلا",
      cover: ImageManager.health),
  LessonModel(
      name: "الدواء",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى مع بسط أصابع اليد اليمنى و مـد إصبع السبابة للأمام و إصبع الوسطى لأسفل حتى يلامس راحة اليد اليسرى ، ثم حركه على شكل دائرة على راحة اليد اليسرى ويساراً.",
      cover: ImageManager.health),
  LessonModel(
      name: "الرأس",
      description:
          "ضع أطراف أصابع اليد اليمني المنحنية قليلا للداخل على الجانب الأيمن للرأس بجوار العين اليمنى ، ثم حرك اليد لأسفل حتى تصل للذقن.",
      cover: ImageManager.health),
  LessonModel(
      name: "الوجه",
      description:
          "اجعل أصابع اليد اليمنى منقبضـه مـع مـد إصبع السبابة لأعلى و تحريك اليد حركه دائريه أمام الوجه",
      cover: ImageManager.health),
  LessonModel(
      name: "العين",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة وجعله يشير للعين اليمنى .",
      cover: ImageManager.health),
  LessonModel(
      name: "أذن – صوت",
      description:
          "اجعل اليد اليمنى منقبضة مع مد إصبع السبابة لأعلى و وضع طرفه أسفل الأذن اليمني",
      cover: ImageManager.health),
  LessonModel(
      name: "الأنف",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة لأعلى و جعل طرفه يلامس الأنف من أسفل",
      cover: ImageManager.health),
  LessonModel(
      name: "الفم",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة لأعلى ووضع طرفه على الفم .",
      cover: ImageManager.health),
  LessonModel(
      name: "الشفاه",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة لأعلى مع تحريكه أمام الفم حركه دائريه",
      cover: ImageManager.health),
  LessonModel(
      name: "الأسنان",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة لأعلى و وضع طرفه على مقدمـة الأسنان الأمامية ، ثم تحريك اليد للخارج.",
      cover: ImageManager.health),
  LessonModel(
      name: "اللسان",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة لأعلى و وضع طرفـه علـى طـرف اللسان",
      cover: ImageManager.health),
  LessonModel(
      name: "يشم",
      description: "ضع اليد اليمنى المنبسطة أمام الأنف ، ثم حركها لأعلى",
      cover: ImageManager.health),
  LessonModel(
      name: "يتذوق",
      description: "ضع طرف إصبع الوسطى لليد اليمنى على طرف اللسان",
      cover: ImageManager.health),
  LessonModel(
      name: "يرى – ينظر",
      description:
          "اجعل أصابع اليد اليمنى منقبضـه مـع مـد إصبعي السبابة و الوسطى أمام العينين ، حرك اليد تجاه الخارج .",
      cover: ImageManager.health),
  LessonModel(
      name: "يلمس",
      description:
          "اجعل اليد اليسرى منبسطة ومواجهة لأسفل ، ثم المس ظهر راحتها بطرف إصبع الوسطى لليد اليمنى .",
      cover: ImageManager.health),
];
List<LessonModel> ideas = [
  LessonModel(
      name: "يفهم",
      description:
          "اجعل أصابع اليد منقبضة و اليد متجهـة لأعلى و في مستوى أمام الوجه ، ثم حرك إصبع السبابة لأعلى ليصبح مستقيماً و يشير لأعلى",
      cover: ImageManager.ideas),
  LessonModel(
      name: "عدم الفهم",
      description:
          "اجعل اصبعي السبابة والوسطى لليد اليمنى مستقيمين و على مسافة قليله من بعضهما بحيث يرتكز إصبع الوسطى أعلى الحاجب الأيمن ، ثم حرك اليد حركة دورانيـة مـن المعصم ليصبح إصبع السبابة هو الذي يرتكز أعلى الحاجب الأيمن",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الشك",
      description:
          "اجعل طرفي إصبعي السبابة والوسطى لليد اليمنى تلامس بين الحاجبين ، ثم حرك أطراف الإصبعين لأسفل بحيث تنحن لأسفل لتصل إلى طرف الأنف",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الموافقة",
      description:
          "اجعل إصبع السبابة لليد اليمنى يشير لمنتصف الجبهة و يلامسها ، ثم اجعل اليدين منقبضتين مع إبقاء إصبعي السبابة يشيرا للخارج بحيث يتلامس جـانبي إصبعي السبابة لليدين.",
      cover: ImageManager.ideas),
  LessonModel(
      name: "مهمل – مخطئ",
      description:
          "التفكير اجعل إصبعي السبابة و الوسطى لليد اليمنى مستقيمين و متجهين لأعلى مع قبض باقی أصابع اليد و جعلـهـا أمـام الوجـه وموجهـة للخارج ، ثم حرك اليد يمينا ويسارا عـدة مرات أمام الوجه",
      cover: ImageManager.ideas),
  LessonModel(
      name: "غبى",
      description:
          "اجعل اليد منقبضة ومواجهة للوجه ، ثم حركها تجاه الوجه لتصل إلى الجبهة عـدة مرات.",
      cover: ImageManager.ideas),
  LessonModel(
      name: "مجنون – مخبول",
      description:
          "اجعل أصابع اليد اليمنى منحنية قليلا مع وضع اليد على الجانب الأيمن للوجه ، ثم حرك اليد من المعصم للأمام و للخلف",
      cover: ImageManager.ideas),
  LessonModel(
      name: "جاهل",
      description:
          "اجعل إصبعي السبابة والوسطى لليد اليمنى مستقيمين مع قبض باقي أصابع اليد ، ثم ضع اليد متجهة للخارج على الجبهة بحيث يلامس ظهر إصبعي السبابة والوسطى الجبهة",
      cover: ImageManager.ideas),
  LessonModel(
      name: "يعبث - يمزح",
      description:
          "اجعل إصبع السبابة لليد اليمنى يلتف حول مقدمة الأنف مع قبض باقي أصابع اليد ثم حرك الرأس لأسفل قليلا",
      cover: ImageManager.ideas),
  LessonModel(
      name: "يرفض – الرفض",
      description:
          "اجعل اليد اليمنى منقبضه و في مستوى الصدر ، ثم حرك اليد لأعلى في اتجاه الكتف الأيمن والرأس في الاتجاه الأيسر",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الانتباه – التركيز",
      description:
          "اجعل اليدين منبسطتين و متجهتين لأعلى ومتواجهتين و في مستوى الرأس ، ثم حرك اليدين في نفس الوقت للأمام .",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الاحترام - الفخر",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى ملتفان على بعضهما و يشيرا لأعلى ، مع جعل اليد متجهة لأعلى في مستوى الرأس، ثم اسحب اليد لأسفل",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الأمانة",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى ، ثم مرر إصبعي السبابة و الوسطى المستقيمين لليد اليمنى على راحة اليد اليسرى من الخلف للأمام",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الرضا - السرور",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأسفل و متواجهتين ولكن على مسافه قريبه من بعضهما ، ثم حرك اليدين لأسفل في نفس الوقت .",
      cover: ImageManager.ideas),
  LessonModel(
      name: "سعيد",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للصدر، ثم حركهما بالتبادل حركة دائرية من الداخل للخارج .",
      cover: ImageManager.ideas),
  LessonModel(
      name: "حزين - مكتئب",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للداخل أمام الرأس ثم حركهما في نفس الوقت لأسفل أمام الوجه .",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الخوف",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للخارج، ثم حرك الجسم للخلف قليلا تحريك اليدين تجاه الجسم في حركة زجزاجية",
      cover: ImageManager.ideas),
  LessonModel(
      name: "مضحك",
      description:
          "اجعل طرف إصبعي السبابة والوسطى لليد اليمنى يلامسان مقدمة الأنف ، مع قبض باقى أصابع اليد ، ثم حرك الإصبعين لأسفل",
      cover: ImageManager.ideas),
  LessonModel(
      name: "كسول",
      description:
          "اجعل إصبعي السبابة و الإبهام لليد اليمنى مع قبض باقي أصابع اليد اليمني منبسطين مع ضم اليد إلى الجهة اليسرى من الصدر عدة مرات",
      cover: ImageManager.ideas),
  LessonModel(
      name: "خزى",
      description:
          "ضع اليد اليمنى منقبضة على الخد الأيمن ثم حرك اليد للأمام في حركة دورانيـه مـن المعصم .",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الراحة – الرفاهية",
      description:
          "اجعل اليدين منبسطتين و متجهتين لأسفل بحيث تكون اليد اليمنى أعلى ظهر راحة اليد اليسرى و عمودية عليها ، ثم اسحب اليد اليمنى للأمام ، كرر الحركة مع عكس وضع اليدين بالنسبة لبعضهما",
      cover: ImageManager.ideas),
  LessonModel(
      name: "لا تفعل",
      description:
          "ضع إصبع الإبهام لليد اليمنى أسفل الذقن ثم حرك اليد للأمام .",
      cover: ImageManager.ideas),
  LessonModel(
      name: "أناني - طماع – بخيل",
      description:
          "اجعل أصابع الإبهام والسبابة و الوسطى لليدين متجهة للأمام مع قبض باقي أصابع اليدين ، ثم اسحب اليدين للخلف مع الأصابع تنحني للداخل قليلا",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الفزع – الرعب",
      description:
          "جعل اجعل اليدين متواجهتين و أصابعهما منضمة لبعضها ، ثم حرك اليد اليسرى تجاه اليد اليمني مع بسط أصابعها ، وحرك اليد اليمنى لتبقى أسفل اليد اليسرى مع بسط أصابعها",
      cover: ImageManager.ideas),
  LessonModel(
      name: "عنيد",
      description:
          "ضع اليد اليمنى المنبسطة و المتجهة لأعلى ملامسه للجانب الأيمن للرأس ، ثم حرك أصابع اليد لتنحنى للأمام قليلاً ، أحياناً تستخدم اليدين معا لفعل نفس الإشارة",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الغضب",
      description:
          "اسحب أصابع اليدين المنحنيتين للداخل على الصدر من أسفل لأعلى",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الاعتذار",
      description:
          "اجعل اليد اليمنى منقبضة وملامسة للصدر، ثم حركها حركه دورانيـه أمـام الصدر في الاتجاه من اليسار إلى اليمين",
      cover: ImageManager.ideas),
  LessonModel(
      name: "يبكى",
      description:
          "حرك إصبعي السبابة لليدين معاً في نفس الوقت من تحت العينين لأسفل على الوجه.",
      cover: ImageManager.ideas),
  LessonModel(
      name: "شجاع",
      description:
          "ضع أصابع اليدين المنحنيتين للداخـل أمـام الصدر ، ثم اسحب اليدين للخارج و لأسفل مع قبض اليدين في نفس الوقت",
      cover: ImageManager.ideas),
  LessonModel(
      name: "عصبي",
      description:
          "اجعل اليدين منبسطتين و متجهتين لأسفل و للخارج ، ثم حرك اليدين حركه اهتزازيه خفيفة عدة مرات",
      cover: ImageManager.ideas),
  LessonModel(
      name: "يتمنى",
      description:
          "اجعل أطراف أصابع اليد اليمنى منحنيـة قليلا للداخل أمام الصدر ، ثم اسحب اليـد لأسفل.",
      cover: ImageManager.ideas),
  LessonModel(
      name: "يفضل",
      description:
          "ضع اليد اليمنى منبسطة على الصدر ، ثم حركها لأعلى في اتجاه الجهة اليمنى من الصدر ، مع جعل إصبع الإبهام يشير لأعلى",
      cover: ImageManager.ideas),
  LessonModel(
      name: "أمنية",
      description:
          "اجعل أصابع اليدين منحنية قليلا بحيث تكون راحتي اليدين مواجهة لأعلى ، ثم اسحب اليدين تجاه الجسم في نفس الوقت.",
      cover: ImageManager.ideas),
  LessonModel(
      name: "لا يرغب",
      description:
          "اجعل أصابع اليدين منحنيه قليلا بحيث تكون راحتي اليدين مواجهه لأعلى ، ثم حرك اليدين لأسفل و لتصبح راحتي اليدين مواجهتين لأسفل",
      cover: ImageManager.ideas),
  LessonModel(
      name: "الأذى",
      description:
          "ضع اليد اليمنى على الجهة اليسرى للصدر الضغط على الصدر بإصبع الوسطى ، ثم مع حرك اليد بعيدا للخارج",
      cover: ImageManager.ideas),
  LessonModel(
      name: "أفضل",
      description:
          "ضع أطراف أصابع اليد اليمنى المنبسطة على الفم ، ثم حرك اليد للخارج و للجهة اليمنى مع قبض أصابع اليد في نفـس الوقت .",
      cover: ImageManager.ideas),
];
List<LessonModel> meaning = [
  LessonModel(
      name: "نعم",
      description:
          "اجعل اليد اليمنى منقبضه و مواجهه لأسفل و متجهه للخارج ، ثم حركها لأعلى ولأسفل",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "لا",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى ممتدين و مواجهين لإصبع الإبهام ، ثم حرك إصبعي السبابه و الوسطى تجاه إصبع الإبهام",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "حسنا - جيد",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى مع وضع اليد اليمنى منبسطة على الفم ، ثم حركها لأسفل حتى تستقر أعلى اليد اليسرى",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "سيئ – رديء",
      description: "اجعل اليد اليمنى منبسطة أمام الفم ، ثم حركها لأسفل",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "يأتي",
      description:
          "اجعل اليدين منقبضتين و متواجهتين مع مد إصبعي السبابة ، ثم حرك اليدين حركه دورانيه للداخل",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "يذهب – اذهب",
      description:
          "اجعل اليدين منقبضتين و متواجهتين مع مد إصبعي السبابة ، ثم حرك اليدين حركه دورانيه للخارج .",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "افتح",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للخارج متلامستين من جانب راحتي اليدين ثم حركهما بعيداً عن بعضهما للخارج.",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "اقفل – اغلق",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للخارج و متباعدتين ، ثم حركهما للداخل تجاه بعضهما للداخل .",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "واسع",
      description:
          "اجعل اليدين منقبضتين أمام الصدر مع إصبعي السبابة و الإبهام ، ثم حرك اليدين للخارج بعيداً عن بعضهما",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "صغير – قليل",
      description:
          "اجعل اليدين منبسطتين و متواجهتين ثم حركهما للداخل تجاه بعضهما",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "بدأ",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه للخارج مع رفع إصبع السبابة لأعلى قليلاً، اليد اليمنى منقبضه مع مد إصبع السبابة تجاه راحة اليد اليسرى ، ثم حرك اليد و اليمنى حركة دورانيه من المعصم .",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "توقف - أنهى",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى و اليد اليمنى منبسطة ، ثم حرك اليد اليمنى لأسفل حتى تستقر أعلى راحة اليد اليمني في وضع عمودي على اليد اليمني قديم . حديث : اجعل اليد اليسرى منبسطة و مواجهه لأعلى ، ثم مرر اليد اليمنى المنبسطة و المواجهة لأعلى على راحة اليد اليسرى من الأمام للخلف",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "جديد - حديث",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى ، ثم مرر اليد اليمنى المنبسطة و المواجهة لأعلى على راحة اليد اليسرى من الأمام للخلف",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "قديم - أثرى",
      description: "اجعل اليد اليمنى منقبضه أسفل الذقن ، حركها إلى أسفل .",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "بطئ",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأسفل ، ثم مرر اليد اليمنى المنبسطة والمواجهة لأسفل على ظهر راحة اليد اليسرى من الأمام للخلف",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "سريع",
      description:
          "اجعل اليد اليمنى منقبضه و متجهه للأمام مع مد إصبعي السبابة و الإبهام للأمــام قليلاً، ثم حرك إصبع الإبهام لأعلى بسرعه.",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "جاف",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة للأمام قليلا ، ثم حرك اليد أسفل الذقن من اليسار إلى اليمين.",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "مبتل",
      description:
          "اجعل أصابع السبابة و الوسطى و البنصر لليد اليمنى ممتدة لأعلى مع قبض إصبعي الصغرى والإبهام ثم حرك اليد تجاه الفم ، ثم اجعل أصابع اليدين ممتدتين لأعلـى ثـم حرك اليدين لأسفل مع ضم أصابع اليدين",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "ينظف - جميل",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه الأعلى ، ثم اجعل راحة اليد اليمنى منبسطة و مواجهه لأسفل ثم مرر اليد اليمنى أعلـى راحة اليد اليسرى من الخلف للأمام .",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "قذر بذي – أحمق",
      description:
          "ضع اليد اليمنى منبسطة و مواجهه لأسفل تحت الذقن ، ثم حرك الأصابع حركه اهتزازیة بسيطة و اليد في مكانها",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "دائما - بلا تغيير",
      description:
          "على الدوام اجعل اليد اليمنى منقبضه و مواجهه لأعلى مع مد إصبع السبابة للأمام ، ثم حرك اليد حرکة دورانيه من أسفل لأعلى.",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "أبدا - الرفض",
      description:
          "أجعل اليد اليمنى منبسطة و مواجهه لأسفل، ثم حرك اليد حركه نصف دائريه ثم لأسفل و جهة اليمين",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "صحيح - دقيق",
      description:
          "اجعل اليدين منقبضتين مع مد إصبعي السبابة لليدين للأمام مع جعل اليد اليمنى أعلى من مستوى اليد اليسرى ، ثم حرك اليد اليمنى لأسفل حتى تصل لمستوى اليد اليسرى",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "خطأ - غير صحيح",
      description:
          "اجعل اليد اليمنى منقبضه وملامسه لأسفل الذقن مع مد إصبعي الصغرى والإبهام لأعلى",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "قوى",
      description:
          "اجعل اليدين منقبضتين ومتجهتين للأمام ثم حركهما في نفس الوقت للأمام و لأسفل.",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "ضعيف",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى مع جعل أطراف أصابع اليد اليمنى ملامسه لراحة اليد اليسرى ، ثم اجعل أصابع اليد اليمنى تنقبض لأسفل قليلا ثـم تمتد مرة أخرى",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "الدفء – الحرارة",
      description:
          "اجعل اليد اليمنى منقبضه أمام الفم، ثم حركها للأمام مع مد أصابعها لأعلى قليلا وتحريك الأصابع حركة اهتزازيه بسيطة",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "بارد - التبريد",
      description:
          "اجعل أصابع اليدين منحنية للداخل قليلا ومواجهه للجسم و في مستوى الكتفين، ثم حركهما في نفس الوقت للداخل و لأسفل .",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "السخونة – التسخين",
      description:
          "اجعل أصابع اليد اليمنى منحنيه قليلاً للداخل و اليد أمام الفم ، ثم حرك اليد لأسفل مع جعل أصابع اليد مواجهـه لأسفل.",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "البرد . بارد",
      description:
          "اجعل اليدين منقبضتين و متجهتين لأعلى وفى نفس مستوى الكتفين ، ثم حرك اليدين في نفس الوقت حركه اهتزازیة",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "حقيقي",
      description:
          "اجعل اليد اليمنى منقبضه مع وضع طرف إصبع السبابة على الفم ، ثم حرك اليد للأمام ولأعلى قليلاً",
      cover: ImageManager.symptoms),
  LessonModel(
      name: "زائف",
      description:
          "اجعل اليد اليمنى منقبضه مع وضع طرف إصبع السبابة على الفم ، ثم حرك اليد من اليمين لليسار",
      cover: ImageManager.symptoms),
];
List<LessonModel> nature = [
  LessonModel(
      name: "نعم",
      description:
          "اجعل اليد اليمنى منقبضه و مواجهه لأسفل و متجهه للخارج ، ثم حركها لأعلى ولأسفل",
      cover: ImageManager.nature),
  LessonModel(
      name: "لا",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى ممتدين و مواجهين لإصبع الإبهام ، ثم حرك إصبعي السبابه و الوسطى تجاه إصبع الإبهام",
      cover: ImageManager.nature),
  LessonModel(
      name: "حسنا - جيد",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى مع وضع اليد اليمنى منبسطة على الفم ، ثم حركها لأسفل حتى تستقر أعلى اليد اليسرى",
      cover: ImageManager.nature),
  LessonModel(
      name: "سيئ – رديء",
      description: "اجعل اليد اليمنى منبسطة أمام الفم ، ثم حركها لأسفل",
      cover: ImageManager.nature),
  LessonModel(
      name: "يأتي",
      description:
          "اجعل اليدين منقبضتين و متواجهتين مع مد إصبعي السبابة ، ثم حرك اليدين حركه دورانيه للداخل",
      cover: ImageManager.nature),
  LessonModel(
      name: "يذهب – اذهب",
      description:
          "اجعل اليدين منقبضتين و متواجهتين مع مد إصبعي السبابة ، ثم حرك اليدين حركه دورانيه للخارج .",
      cover: ImageManager.nature),
  LessonModel(
      name: "افتح",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للخارج متلامستين من جانب راحتي اليدين ثم حركهما بعيداً عن بعضهما للخارج.",
      cover: ImageManager.nature),
  LessonModel(
      name: "اقفل – اغلق",
      description:
          "اجعل اليدين منبسطتين و مواجهتين للخارج و متباعدتين ، ثم حركهما للداخل تجاه بعضهما للداخل .",
      cover: ImageManager.nature),
  LessonModel(
      name: "واسع",
      description:
          "اجعل اليدين منقبضتين أمام الصدر مع إصبعي السبابة و الإبهام ، ثم حرك اليدين للخارج بعيداً عن بعضهما",
      cover: ImageManager.nature),
  LessonModel(
      name: "صغير – قليل",
      description:
          "اجعل اليدين منبسطتين و متواجهتين ثم حركهما للداخل تجاه بعضهما",
      cover: ImageManager.nature),
  LessonModel(
      name: "بدأ",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه للخارج مع رفع إصبع السبابة لأعلى قليلاً، اليد اليمنى منقبضه مع مد إصبع السبابة تجاه راحة اليد اليسرى ، ثم حرك اليد و اليمنى حركة دورانيه من المعصم .",
      cover: ImageManager.nature),
  LessonModel(
      name: "توقف - أنهى",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى و اليد اليمنى منبسطة ، ثم حرك اليد اليمنى لأسفل حتى تستقر أعلى راحة اليد اليمني في وضع عمودي على اليد اليمني",
      cover: ImageManager.nature),
  LessonModel(
      name: "جديد . حديث",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى ، ثم مرر اليد اليمنى المنبسطة و المواجهة لأعلى على راحة اليد اليسرى من الأمام للخلف",
      cover: ImageManager.nature),
  LessonModel(
      name: "قديم - أثرى",
      description: "اجعل اليد اليمنى منقبضه أسفل الذقن ، حركها إلى أسفل .",
      cover: ImageManager.nature),
  LessonModel(
      name: "بطئ",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأسفل ، ثم مرر اليد اليمنى المنبسطة والمواجهة لأسفل على ظهر راحة اليد اليسرى من الأمام للخلف",
      cover: ImageManager.nature),
  LessonModel(
      name: "سريع",
      description:
          "اجعل اليد اليمنى منقبضه و متجهه للأمام مع مد إصبعي السبابة و الإبهام للأمــام قليلاً، ثم حرك إصبع الإبهام لأعلى بسرعه.",
      cover: ImageManager.nature),
  LessonModel(
      name: "جاف",
      description:
          "اجعل اليد اليمنى منقبضه مع مد إصبع السبابة للأمام قليلا ، ثم حرك اليد أسفل الذقن من اليسار إلى اليمين.",
      cover: ImageManager.nature),
  LessonModel(
      name: "مبتل",
      description:
          "اجعل أصابع السبابة و الوسطى و البنصر لليد اليمنى ممتدة لأعلى مع قبض إصبعي الصغرى والإبهام ثم حرك اليد تجاه الفم ، ثم اجعل أصابع اليدين ممتدتين لأعلـى ثـم حرك اليدين لأسفل مع ضم أصابع اليدين",
      cover: ImageManager.nature),
  LessonModel(
      name: "ينظف - جميل",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه الأعلى ، ثم اجعل راحة اليد اليمنى منبسطة و مواجهه لأسفل ثم مرر اليد اليمنى أعلـى راحة اليد اليسرى من الخلف للأمام .",
      cover: ImageManager.nature),
  LessonModel(
      name: "قذر بذي – أحمق",
      description:
          "ضع اليد اليمنى منبسطة و مواجهه لأسفل تحت الذقن ، ثم حرك الأصابع حركه اهتزازیة بسيطة و اليد في مكانها",
      cover: ImageManager.nature),
  LessonModel(
      name: "دائما - بلا تغيير",
      description:
          "على الدوام اجعل اليد اليمنى منقبضه و مواجهه لأعلى مع مد إصبع السبابة للأمام ، ثم حرك اليد حرکة دورانيه من أسفل لأعلى.",
      cover: ImageManager.nature),
  LessonModel(
      name: "أبدا - الرفض",
      description:
          "أجعل اليد اليمنى منبسطة و مواجهه لأسفل، ثم حرك اليد حركه نصف دائريه ثم لأسفل و جهة اليمين",
      cover: ImageManager.nature),
  LessonModel(
      name: "صحيح - دقيق",
      description:
          "اجعل اليدين منقبضتين مع مد إصبعي السبابة لليدين للأمام مع جعل اليد اليمنى أعلى من مستوى اليد اليسرى ، ثم حرك اليد اليمنى لأسفل حتى تصل لمستوى اليد اليسرى",
      cover: ImageManager.nature),
  LessonModel(
      name: "خطأ - غير صحيح",
      description:
          "اجعل اليد اليمنى منقبضه وملامسه لأسفل الذقن مع مد إصبعي الصغرى والإبهام لأعلى",
      cover: ImageManager.nature),
  LessonModel(
      name: "قوى",
      description:
          "اجعل اليدين منقبضتين ومتجهتين للأمام ثم حركهما في نفس الوقت للأمام و لأسفل.",
      cover: ImageManager.nature),
  LessonModel(
      name: "ضعيف",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى مع جعل أطراف أصابع اليد اليمنى ملامسه لراحة اليد اليسرى ، ثم اجعل أصابع اليد اليمنى تنقبض لأسفل قليلا ثـم تمتد مرة أخرى",
      cover: ImageManager.nature),
  LessonModel(
      name: "الدفء – الحرارة",
      description:
          "اجعل اليد اليمنى منقبضه أمام الفم، ثم حركها للأمام مع مد أصابعها لأعلى قليلا وتحريك الأصابع حركة اهتزازيه بسيطة",
      cover: ImageManager.nature),
  LessonModel(
      name: "بارد - التبريد",
      description:
          "اجعل أصابع اليدين منحنية للداخل قليلا ومواجهه للجسم و في مستوى الكتفين، ثم حركهما في نفس الوقت للداخل و لأسفل .",
      cover: ImageManager.nature),
  LessonModel(
      name: "السخونة – التسخين",
      description:
          "اجعل أصابع اليد اليمنى منحنيه قليلاً للداخل و اليد أمام الفم ، ثم حرك اليد لأسفل مع جعل أصابع اليد مواجهـه لأسفل.",
      cover: ImageManager.nature),
  LessonModel(
      name: "البرد . بارد",
      description:
          "اجعل اليدين منقبضتين و متجهتين لأعلى وفى نفس مستوى الكتفين ، ثم حرك اليدين في نفس الوقت حركه اهتزازیة",
      cover: ImageManager.nature),
  LessonModel(
      name: "حقيقي",
      description:
          "اجعل اليد اليمنى منقبضه مع وضع طرف إصبع السبابة على الفم ، ثم حرك اليد للأمام ولأعلى قليلاً",
      cover: ImageManager.nature),
  LessonModel(
      name: "زائف",
      description:
          "اجعل اليد اليمنى منقبضه مع وضع طرف إصبع السبابة على الفم ، ثم حرك اليد من اليمين لليسار",
      cover: ImageManager.nature),
];
List<LessonModel> travelling = [
  LessonModel(
      name: "سفر",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى منحنيه للداخل على شكل زاويه قائمـه ومتجهه لأسفل ، ثم حرك اليد للأمام حركه ملتويه يمينا ويساراً قليلاً.",
      cover: ImageManager.travelling),
  LessonModel(
      name: "فندق",
      description:
          "اجعل أصابع اليد اليمنى منقبضه مع السبابة و الوسطى مستقيمين إبقاء إصبعي ويشيران تجاه اليمين ، ثم المس جانب راحة اليد اليمنى بواسطه طرف سبابة اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "عطله",
      description:
          "اجعل كلتا اليدين منبسطتين و متجهتين لأعلى و مواجهتين للخارج ، ثم حرك اليدين حركه اهتزازيه بسيطة",
      cover: ImageManager.travelling),
  LessonModel(
      name: "زیاره",
      description:
          "اجعل أصابع اليدين منقبضه مع إبقاء إصبعي السبابة و الوسطى مستقيمين ومتجهين لأعلى ، ثم حرك اليدين حركه دورانيه متبادلة في الاتجاه الخارجي",
      cover: ImageManager.travelling),
  LessonModel(
      name: "قطار",
      description:
          "اجعل إصبعي السبابة و الوسطى المستقيمين لليدين في وضع متقاطع بحيث تكون أصابع اليد اليمنى أعلى أصابع اليد اليسرى ، ثم حرك اليد اليمنى للأمام وللخلف",
      cover: ImageManager.travelling),
  LessonModel(
      name: "السيارة – القيادة",
      description:
          "اجعل كلتا اليدين منقبضتين و مواجهتين للأمام أمام الصدر ، حرك اليدين حركه منحنيه قليلاً و لأعلى و لأسفل كما لو كنت تمسك بعجلة قيادة سيارة .",
      cover: ImageManager.travelling),
  LessonModel(
      name: "التنقل بواسطة وسيلة النقل",
      description:
          "اجعل اليد اليسرى منحنيه تجاه الداخل ومتجهه للأمام ، ثم أمسك بإصبع إبهام اليسرى بواسطة إصبعي السبابة و الوسطى لليد اليمنى، ثم حرك اليدين للأمام .",
      cover: ImageManager.travelling),
  LessonModel(
      name: "التنقل بواسطة ركوب الحيوان",
      description:
          "اجعل اليد اليسرى منبسطة و متجهه للأمام مع وضعها بين إصبعي السبابة و الوسطى لليد اليمنى ، ثم حرك اليدين معاً للأمـام على مراحل",
      cover: ImageManager.travelling),
  LessonModel(
      name: "المحطة – الإشارة",
      description:
          "اجعل اليدين منبسطتين و متقابلتين ومتجهتين لأعلى ، ثم حركهما للأمام وللخلف عدة مرات",
      cover: ImageManager.travelling),
  LessonModel(
      name: "الشارع - الطريق السريع",
      description:
          "اجعل كلتا اليدين منبسطتين و متقابلتين و متجهتين للأمام ، ثم حركهما في الاتجاه الأمامي",
      cover: ImageManager.travelling),
  LessonModel(
      name: "حادث",
      description:
          "مصادمه اجعل كلتا اليدين منقبضتين و متواجهتين ، ثم حركهما تجاه بعضهما للداخل",
      cover: ImageManager.travelling),
  LessonModel(
      name: "الجراج",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه لأعلى، مع تحريك اليد اليمنى تجاه اليد اليسرى و هي عموديـه عليـهـا مـع قبض إصبعي الصغرى و البنصر للداخل",
      cover: ImageManager.travelling),
  LessonModel(
      name: "الكاميرا",
      description:
          "ضع اليدين المنقبضتين أمام الوجه مع جعل إصبعي السبابة و الإبهام لليدين منحنيين قليلا للداخل ، ثم حرك سبابة اليد اليمنى لأسفل قليلا",
      cover: ImageManager.travelling),
  LessonModel(
      name: "الصورة الفوتوغرافية",
      description:
          "اجعل اليد اليسرى منبسطة و مواجهه للأمام، واليد اليمنى منحنيه قليلاً للداخل، ثم حرك اليد اليمنى من جانب الوجه حتى تصل إلى راحة اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "حقيبة الملابس",
      description:
          "اجعل اليد اليمنى منقبضة وعلـــــى جانب الجسم كما لو كنت تحمل حقيبة في يدك.",
      cover: ImageManager.travelling),
  LessonModel(
      name: "احتفال رأس السنه",
      description:
          "اجعل أصابع اليد اليمنى منحنيه قليلا للداخل مع وضع اليد في مستوى أمام الصدر ، ثم حرك اليد للأمام و جهة اليمين قليلا",
      cover: ImageManager.travelling),
  LessonModel(
      name: "عيد الميلاد",
      description:
          "ضع راحة اليد اليمنى المنبسطة أعلى راحة اليد اليسرى المنبسطة بحيث تكون في وضع عمودي عليها ، ثم ضع إصبع السبابة اليسرى أسفل كوع اليد اليمنى المتجهة لأعلى ، ثم حرك إصبع السبابة اليمنى تجاه مرفق اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "هديه - يسهم – يكافئ",
      description:
          "اجعل كلتا اليدين منقبضتين و متجهتين للأمام ، ثم حركهما في اتجاه الأمام معا في نفس الوقت",
      cover: ImageManager.travelling),
  LessonModel(
      name: "أعلى – فوق",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأسفل ثم حرك راحة اليد اليمنى على شكل دائرة أفقيه أعلى ظهر راحة اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "تحت أسفل",
      description:
          "اجعل اليدين منبسطتين و مواجهتين لأسفل، ثم حرك راحة اليد اليمنى علـى شكل دائرة أفقيه أسفل ظهر راحة اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "في الداخل",
      description:
          "اجعل أصابع اليد اليسرى منحنيه للداخل، ثم حرك أصابع اليد اليمنى المنحنية لتستقر داخل تجويف راحة اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "إلى الخارج",
      description:
          "اجعل أصابع اليد اليسرى منحنيه قليلا للداخل ، ثم مرر اليد اليمنى من خلال راحة اليد اليسرى فى الاتجاه من أسفل إلى أعلى.",
      cover: ImageManager.travelling),
  LessonModel(
      name: "الخلف – التراجع",
      description:
          "اجعل كلتا اليدين منقبضتين و متلامستين أمام الجسم ، ثم اسحب اليد اليمنى من أمام اليد اليسرى إلى الخلف",
      cover: ImageManager.travelling),
  LessonModel(
      name: "قبل - وجها لوجه",
      description:
          "اجعل اليدين منبسطتين و متقابلتين بحيث تكون اليد اليسرى ممتدة قليلا للأمام ولأعلى عن اليد اليمنى ، ثم حرك اليد اليمني في اتجاه اليد اليسرى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "اتجاه الشمال",
      description:
          "اجعل أصابع اليد اليمنى منقبضه مع وضع إصبع الإبهام بين اصبعي الوسطى والبنصر، مع جعل اليد موجهة للأمام ، ثم ارفع اليد لأعلى",
      cover: ImageManager.travelling),
  LessonModel(
      name: "اتجاه الشرق",
      description:
          "اجعل أصابع اليد اليمنى منقبضه و مرتكزه على إصبع الإبهام مع جعل اليد مواجهه للخارج و لأعلى ، ثم حرك اليد اليمني في اتجاه اليمين",
      cover: ImageManager.travelling),
  LessonModel(
      name: "اتجاه الجنوب",
      description:
          "اجعل اليد اليمنى منقبضة ومواجهة للخارج و لأعلى ، ثم اسحب اليد لأسفل.",
      cover: ImageManager.travelling),
  LessonModel(
      name: "اتجاه الغرب",
      description:
          "اجعل اليد اليمنى متجهة لأعلى مع قبض إصبعي الصغرى والإبهام و إبقاء باقي أصابع اليد مستقيمه لأعلى ، ثم حرك اليد اتجاه اليسار",
      cover: ImageManager.travelling),
  LessonModel(
      name: "اتجاه اليمين",
      description:
          "اجعل إصبعي السبابة و الوسطى لليد اليمنى ملتفين على بعضهما و متجهين لأعلى مع قبض باقي أصابع اليد ، ثـم حـرك اليـد اليمني في اتجاه اليمين .",
      cover: ImageManager.travelling),
  LessonModel(
      name: "اتجاه اليسار",
      description:
          "اجعل إصبعي السبابة و الإبهام لليد اليمنى منبسطين مع قبض باقي أصابع اليد ، بحيث تتجه اليد لأعلى ، ثم حرك اليد في اتجاه اليسار",
      cover: ImageManager.travelling),
];
