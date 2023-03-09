import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../feature/authentication/bloc/authentication_cubit.dart';
import '../../../feature/authentication/resource/user_repository.dart';

class MultiBlocListing extends StatelessWidget {
  const MultiBlocListing({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthenticationCubit(
            userRepository: RepositoryProvider.of<UserRepository>(context),
          ),
        )
      ],
      child: child,
    );
  }
}
