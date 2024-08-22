import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Row(
            children: [
              !isDesktop ?
              Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: IconButton(onPressed: (){Scaffold.of(context).openDrawer();}, icon: Icon(Icons.menu)),
              )
              :
              Text(
                'Dashboard',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        Spacer(),
        SearchField(),
        ProfileCard()
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
                vertical: defaultPadding / 1.2, horizontal: defaultPadding/2),
            suffixIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor
              ),
              padding: const EdgeInsets.all(defaultPadding *0.75),
              margin: EdgeInsets.all(defaultPadding/2),
              child: SvgPicture.asset('assets/icons/Search.svg'),
            ),
            fillColor: secondaryColor,
            filled: true,
            border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ))),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: defaultPadding / 2,
          horizontal: defaultPadding,
        ),
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: Colors.white10)
            ),
            
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Image(
              image: AssetImage('assets/images/profile_pic.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding/2,),
              child: Text(
                'Muhammet Vural',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ),
      ),
    );
  }
}
