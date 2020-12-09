import 'package:baselib/common/base/base_page.dart';
import 'package:baselib/common/parameters.dart';
import 'package:baselib/theme/theme_global.dart';
import 'package:baselib/utils/toast.dart';
import 'package:baselib/widget/loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:user/model.dart';
import 'bloc.dart';

class ProfilePage extends BlocPage<ProfileBloc, _Profile> {
  ProfilePage(Parameters parameters) : super(parameters);

  @override
  ProfileBloc generateBloc() => ProfileBloc();

  @override
  _Profile generateThemeState() => _Profile();
}

class _Profile extends BlocState<ProfileBloc> {
  @override
  Widget buildChild(BuildContext context, MTheme theme) {
    return Scaffold(
      body: LoadingView(
          bloc.loadState,
          StreamBuilder<Profile>(
              stream: bloc.profile,
              initialData: null,
              builder: (context, snapshot) {
                var profile = snapshot.data;
                if (profile == null) {
                  return Container();
                }
                var imgUrls = profile.info.imgUrls;
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(children: [
                    ListView(
                      shrinkWrap: true,
                      children: [
                        Container(
                          height: 220,
                          child: Swiper(
                            autoplay: true,
                            autoplayDelay: 3000,
                            pagination: SwiperPagination(
                                builder: DotSwiperPaginationBuilder(
                                    activeColor: theme.themeColor.themeColor,
                                    color: Colors.white,
                                    size: 10,
                                    activeSize: 10,
                                    space: 3)),
                            autoplayDisableOnInteraction: true,
                            itemCount: imgUrls.length,
                            //item数量
                            itemBuilder: (BuildContext context, int index) {
                              return FadeInImage(
                                  fit: BoxFit.cover,
                                  fadeInDuration: Duration(milliseconds: 10),
                                  fadeOutDuration: Duration(milliseconds: 10),
                                  placeholder: AssetImage(
                                      "images/placeholder_w.png",
                                      package: "baselib"),
                                  image: NetworkImage(
                                    imgUrls[index],
                                  ));
                            },
                            onTap: (index) {},
                          ),
                        )
                      ],
                    ),
                  ]),
                );
              })),
    );
  }
}
