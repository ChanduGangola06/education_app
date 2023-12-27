import 'package:education_app/core/common/views/page_under_construction.dart';
import 'package:education_app/core/extensions/context_extension.dart';
import 'package:education_app/core/services/injection_container.dart';
import 'package:education_app/data/datasources/on_boarding_local_data_source.dart';
import 'package:education_app/data/models/user_models.dart';
import 'package:education_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:education_app/presentation/cubit/onboard/on_boarding_cubit.dart';
import 'package:education_app/presentation/views/auth/sign_in_screen.dart';
import 'package:education_app/presentation/views/auth/sign_up_screen.dart';
import 'package:education_app/presentation/views/dashboard/dashboard.dart';
import 'package:education_app/presentation/views/on_boarding/on_boarding_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as fui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'router.main.dart';
