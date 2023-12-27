import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:education_app/data/datasources/auth_remote_data_source.dart';
import 'package:education_app/data/datasources/on_boarding_local_data_source.dart';
import 'package:education_app/data/repos/auth_repo_impl.dart';
import 'package:education_app/data/repos/on_boarding_repo_impl.dart';
import 'package:education_app/domain/repos/auth_repo.dart';
import 'package:education_app/domain/usecases/cache_first_timer.dart';
import 'package:education_app/domain/usecases/check_if_user_is_first_timer.dart';
import 'package:education_app/domain/usecases/forgot_password.dart';
import 'package:education_app/domain/usecases/sign_in.dart';
import 'package:education_app/domain/usecases/sign_up.dart';
import 'package:education_app/domain/usecases/update_user.dart';
import 'package:education_app/presentation/blocs/auth/auth_bloc.dart';
import 'package:education_app/presentation/cubit/onboard/on_boarding_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repos/on_boarding_repo.dart';

part 'injection_container.main.dart';
