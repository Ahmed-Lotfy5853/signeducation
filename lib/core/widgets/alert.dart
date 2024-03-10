/*void alert(
  BuildContext context,
  double width,
  double height, {
  String? title,
  String? confirm,
  void Function()? confirmTap,
  double? cWidth,
  double? cHeight,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        // height: height * 0.1,
        insetPadding: cWidth != null ? EdgeInsets.zero : null,

        child: Container(
          width: cWidth ?? width * 0.8,
          height: cHeight ?? height * 0.1,
          padding: const EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isDark() ? ColorManager.darkBackgroundColor : Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: width * 0.3,
                height: width * 0.3,
                padding: EdgeInsets.zero,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isDark()
                        ? ColorManager.darkBackgroundColor
                        : Colors.white),
                child: Icon(
                  Icons.error,
                  color: Colors.red,
                  size: width * 0.3,
                ),
              ),
              Text(
                title ?? AppLocalizations.of(context)!.delete_account_confirm,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: confirmTap ??
                          () {
                            Navigator.pop(context);
                            Fluttertoast.showToast(
                              msg: 'Account Deleted',
                            );
                          },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.red,
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide.none),
                      ),
                      child: Text(
                        confirm ?? AppLocalizations.of(context)!.delete_account,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      )),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Colors.grey,
                        ),
                        side: MaterialStateBorderSide.resolveWith(
                            (states) => BorderSide.none),
                      ),
                      child: Text(
                        AppLocalizations.of(context)!.cancel,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}*/
