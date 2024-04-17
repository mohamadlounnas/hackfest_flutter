import 'package:hackfest_flutter/widgets/app_logo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motif/motif.dart';

import '../progress/progress.dart';
import '../widgets/app_container.dart';

class AuthGuard extends StatelessWidget {
  final Widget child;
  const AuthGuard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: AppManager.instance,
      builder: (context, _) {
        if (AppManager.instance.authResponse == null || AppManager.instance.student == null) {
          return const _Login();
        }
        return child;
      },
    );
  }
}

/// implementation of the [Progress] interface
/// uses username and password to authenticate the user
class _Login extends StatefulWidget {
  const _Login({Key? key}) : super(key: key);

  @override
  State<_Login> createState() => _LoginState();
}

class _LoginState extends State<_Login> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _saveCredentials = true;
  bool loading = false;
  String? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Login'),
      // ),
      body: Stack(
        children: [
          const Positioned.fill(child: SinosoidalMotif()),
          Center(
            child: SingleChildScrollView(
              child: AppContainer.sm(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const AppLogo(),
                    const SizedBox(height: 20),
                    Card(
                      margin: const EdgeInsets.all(24),
                      color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.5),
                          width: 1,
                        ),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 12),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: MenuAnchor(
                                  builder: (context, controller, _) {
                                    return TextFormField(
                                      controller: _usernameController,
                                      decoration: InputDecoration(
                                        isDense: true,
                                        border: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(8)),
                                        ),
                                        prefixIcon: const Icon(Icons.person_outline_outlined),
                                        labelText: 'Username',
                                        hintText: '202YXXXXXXX',
                                        alignLabelWithHint: true,
                                        suffixIcon: AppManager.instance.savedCredentials.isEmpty
                                            ? null
                                            : IconButton(
                                                icon: const Icon(Icons.key_rounded),
                                                onPressed: () {
                                                  if (controller.isOpen) {
                                                    controller.close();
                                                  } else {
                                                    controller.open();
                                                  }
                                                },
                                              ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                    );
                                  },

                                  // items is credentials
                                  menuChildren: [
                                    for (var entry in AppManager.instance.savedCredentials.entries)
                                      MenuItemButton(
                                        leadingIcon: const Icon(Icons.person_outline_outlined),
                                        onPressed: () {
                                          _usernameController.text = entry.key;
                                          _passwordController.text = entry.value['password'] ?? '';
                                        },
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(entry.key),
                                            Text(entry.value['name']!, style: Theme.of(context).textTheme.bodySmall),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                child: TextFormField(
                                  controller: _passwordController,
                                  decoration: const InputDecoration(
                                    alignLabelWithHint: true,
                                    isDense: true,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(8)),
                                    ),
                                    prefixIcon: Icon(Icons.lock_outline_rounded),
                                    labelText: 'Password',
                                    helperText: 'a password by default is birthday "DDMMYYYY"',
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(height: 20),
                              // checkbox for save credentials
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: ListTile(
                                  trailing: Switch(
                                    activeColor: Theme.of(context).colorScheme.primary,
                                    value: _saveCredentials,
                                    onChanged: (bool value) {
                                      setState(() {
                                        _saveCredentials = value;
                                      });
                                    },
                                  ),
                                  title: const Text('Save credentials'),
                                  subtitle: const Text('Save your credentials for the next time'),
                                  leading: const Icon(Icons.key_rounded),
                                  onTap: () {
                                    setState(() {
                                      _saveCredentials = !_saveCredentials;
                                    });
                                  },
                                ),
                              ),
                              const SizedBox(height: 12),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: Material(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Theme.of(context).colorScheme.primary,
                                  elevation: 3,
                                  child: ListTile(
                                    leading: const Icon(Icons.fingerprint_rounded, color: Colors.white),
                                    title: const Center(child: Text('Signin with progress', style: TextStyle(color: Colors.white))),
                                    onTap: () async {
                                      if (_formKey.currentState!.validate()) {
                                        setState(() {
                                          loading = true;
                                          error = null;
                                        });
                                        try {
                                          await AppManager.instance.login(
                                            username: _usernameController.text,
                                            password: _passwordController.text,
                                            saveCredentials: _saveCredentials,
                                          );
                                        }
                                        // on DioException
                                        on DioException catch (e) {
                                          error = e.response?.data ?? e.message ?? e.error.toString();
                                          if (mounted) {
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                              content: Text(error!),
                                              backgroundColor: Theme.of(context).colorScheme.error,
                                              behavior: SnackBarBehavior.floating,
                                              width: 400,
                                            ));
                                          }
                                        } catch (e) {
                                          error = e.toString();
                                          if (mounted) {
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                              content: Text(error!),
                                              backgroundColor: Theme.of(context).colorScheme.error,
                                              behavior: SnackBarBehavior.floating,
                                              width: 400,
                                            ));
                                          }
                                        }
                                        loading = false;
                                        if (mounted) {
                                          setState(() {});
                                        }
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (loading)
            Positioned.fill(
              child: Container(
                color: Theme.of(context).colorScheme.surface.withOpacity(0.8),
                child: const Center(
                  child: CircularProgressIndicator(strokeWidth: 3),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
