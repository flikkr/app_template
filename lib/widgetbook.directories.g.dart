// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_template/src/auth/presentation/login/login_button.dart'
    as _i2;
import 'package:app_template/src/auth/presentation/login/login_page.dart'
    as _i3;
import 'package:app_template/src/common/input/widgetbook_input_usecase.dart'
    as _i7;
import 'package:app_template/src/common/menu/nav_drawer.dart' as _i4;
import 'package:app_template/src/common/modal/modal_handler.dart' as _i5;
import 'package:app_template/src/error/error_page.dart' as _i6;
import 'package:app_template/src/premium/premium_star.dart' as _i9;
import 'package:app_template/src/settings/presentation/widget/settings_container_header.dart'
    as _i8;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'auth',
    children: [
      _i1.WidgetbookFolder(
        name: 'presentation',
        children: [
          _i1.WidgetbookFolder(
            name: 'login',
            children: [
              _i1.WidgetbookComponent(
                name: 'LoginButton',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Login button',
                    builder: _i2.loginButtonUseCase,
                  )
                ],
              ),
              _i1.WidgetbookComponent(
                name: 'LoginPage',
                useCases: [
                  _i1.WidgetbookUseCase(
                    name: 'Login page',
                    builder: _i3.loginPageUseCase,
                  )
                ],
              ),
            ],
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'common',
    children: [
      _i1.WidgetbookFolder(
        name: 'menu',
        children: [
          _i1.WidgetbookComponent(
            name: 'AppDrawer',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Default drawer',
                builder: _i4.appDrawerUseCase,
              )
            ],
          )
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'modal',
        children: [
          _i1.WidgetbookComponent(
            name: 'ModalHandler',
            useCases: [
              _i1.WidgetbookUseCase(
                name: 'Test',
                builder: _i5.modalUseCase,
              )
            ],
          )
        ],
      ),
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'error',
    children: [
      _i1.WidgetbookComponent(
        name: 'ErrorPage',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Error page',
            builder: _i6.errorPageUseCase,
          )
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'material',
    children: [
      _i1.WidgetbookComponent(
        name: 'TextField',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Password input',
            builder: _i7.passwordFieldUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Text input',
            builder: _i7.textFieldUseCase,
          ),
        ],
      )
    ],
  ),
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookComponent(
        name: 'Container',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Settings header',
            builder: _i8.settingsHeaderUseCase,
          )
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'Icon',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Premium star',
            builder: _i9.premiumStarUseCase,
          )
        ],
      ),
    ],
  ),
];
