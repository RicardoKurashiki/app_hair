import 'package:app_hair/app/features/auth/interactors/cubit/login_cubit.dart';
import 'package:app_hair/app/features/auth/interactors/state/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final cubit = Modular.get<LoginCubit>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  InputDecoration get _decoration {
    return InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 8).copyWith(left: 16),
    );
  }

  AppBar _appBar() {
    return AppBar();
  }

  Widget _buildTitle() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome back!",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            decoration: _decoration.copyWith(
              hintText: "name@example.com",
              labelText: "E-mail",
            ),
            validator: (value) {
              if ((value ?? "").isEmpty) return "Campo obrigatório!";
              return null;
            },
          ),
          const SizedBox(height: 24),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: _decoration.copyWith(
              hintText: "*********",
              labelText: "Password",
            ),
            validator: (value) {
              if ((value ?? "").isEmpty) return "Campo obrigatório!";
              return null;
            },
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () async {
                if (_formKey.currentState?.validate() ?? false) {
                  cubit.saveEmail(_emailController.text);
                  cubit.savePassword(_passwordController.text);
                  final result = await cubit.login();
                  print(result);
                }
              },
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                shadowColor:
                    MaterialStateProperty.all(Colors.purple.withOpacity(0.2)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                elevation: MaterialStateProperty.all(5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(LoginState state) {
    return Stack(
      children: [
        Positioned.fill(
          child: ListView(
            padding: const EdgeInsets.all(16),
            physics: const BouncingScrollPhysics(),
            children: [_buildTitle(), const SizedBox(height: 24), _buildForm()],
          ),
        ),
        if (state.loading) ...[
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
              child: Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildStream() {
    return StreamBuilder(
      initialData: cubit.state,
      stream: cubit.stream,
      builder: (context, snapshot) {
        return _buildPage(snapshot.data!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildStream(),
    );
  }
}
