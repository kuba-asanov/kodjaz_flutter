/* External dependencies */
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/* Local dependencies */
import 'package:bilimapp/core/helpers/colors.dart';
import 'package:bilimapp/core/helpers/screen_util.dart';
import 'package:bilimapp/core/helpers/text_styles.dart';
import 'package:bilimapp/core/init/lang/locale_keys.g.dart';
import 'package:bilimapp/core/injection/injection.dart';
import 'package:bilimapp/core/navigation/auto_route.gr.dart';
import 'package:bilimapp/core/navigation/navigation.dart';
import 'package:bilimapp/features/auth/bloc/auth_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100.h,
                  color: KodJazColors.PrimaryColor,
                ),
                SizedBox(height: 66.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      //TODO add user name when getUser Api will be ready
                      // BlocBuilder<AuthBloc, AuthState>(
                      //   bloc: _authBloc,
                      //   builder: (context, state) {
                      //     return _ProfileFillCard(
                      //       title: state.user?.email ?? '',
                      //     );
                      //   },
                      // ),
                      _ProfileFillCard(
                        title: LocaleKeys.changePassword.tr(),
                      ),
                      _ProfileFillCard(
                        title: "Quiz",
                        onPressed: () {
                          Navigation.router.push(
                            QuiaInstructionRoute(
                              quizId: 'quizId',
                            ),
                          );
                        },
                      ),
                      _ProfileFillCard(
                        title: LocaleKeys.settings.tr(),
                      ),
                      _ProfileFillCard(
                        onPressed: () {
                          getIt<AuthBloc>().add(LogoutEvent());

                          Navigation.router.replace(const LoginRoute());
                        },
                        title: LocaleKeys.exit.tr(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 60.h,
              right: 130.w,
              left: 130.w,
              child: CircleAvatar(
                radius: 50.r,
                child: SvgPicture.asset(
                  'assets/images/svg/avatar.svg',
                  width: 100.w,
                  height: 100.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileFillCard extends StatelessWidget {
  final String title;
  final String? subTitle;
  final Icon? icon;
  final Function? onPressed;

  const _ProfileFillCard({
    Key? key,
    this.onPressed,
    required this.title,
    this.subTitle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyScreenUtil.init(context);

    return Card(
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.r),
        borderSide: const BorderSide(
          color: KodJazColors.white,
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8.r),
        onTap: onPressed == null ? null : () => onPressed!(),
        child: Padding(
          padding: EdgeInsets.all(12.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: KodjazTextStyle.fS16FW500,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (subTitle != null)
                      Text(
                        subTitle!,
                        style: KodjazTextStyle.fS16FW500,
                      ),
                  ],
                ),
              ),
              icon ?? const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
