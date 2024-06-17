import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_passwords_app/bloc/local_bloc/core/local_bloc.dart';
import 'package:store_passwords_app/bloc/local_bloc/models/resource.dart';
import 'package:store_passwords_app/ui/reusable/text_field/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<LocalBloc, LocalStates>(
        builder: (context, state) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.lightGreen,
              title: const Text('Учетные записи'),
              actions: [
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  onSelected: (value) {
                    switch (value) {
                      case 'add':
                        showInfoDialog(context);
                        break;
                      case 'clear':
                        showDeleteAllConfirmation(context);
                        break;
                    }
                  },
                  offset: const Offset(0, kToolbarHeight),
                  itemBuilder: (context) {
                    var menuList = [
                      const PopupMenuItem<String>(
                        value: 'add',
                        child: Row(
                          children: [
                            Icon(Icons.add, color: Colors.green),
                            SizedBox(width: 8),
                            Text('Добавить запись')
                          ]
                        )
                      )
                    ];
                    if (state.maybeWhen(
                      loaded: (data) => data.isNotEmpty,
                      orElse: () => false,
                    )) {
                      menuList.add(
                        const PopupMenuItem<String>(
                          value: 'clear',
                          child: Row(
                            children: [
                              Icon(Icons.delete_forever, color: Colors.red),
                              SizedBox(width: 8),
                              Text('Очистить записи')
                            ]
                          )
                        )
                      );
                    }
                    return menuList;
                  }
                )
              ]
            ),
            body: state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                loaded: (data) {
                  if (data.isNotEmpty) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, i) => Container(
                          decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(width: 1.0, color: Colors.grey.shade300), // Граница сверху
                            bottom: BorderSide(width: 1.0, color: Colors.grey.shade300), // Граница снизу
                          )),
                          child: ListTile(
                            trailing: TextButton(
                              onPressed: () => context.read<LocalBloc>().add(LocalEvents.deleteData(resourceDataID: data[i].id!)),
                              child: const Icon(Icons.delete_forever_sharp)
                            ),
                            title: Text(data[i].resourceName),
                            onTap: () => showInfoDialog(context, data[i]),
                          )
                        )
                      )
                    );
                  } else {
                    return Center(child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Нажмите кнопку ниже, чтобы добавить запись!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5),
                        TextButton(
                          onPressed: () {
                            showInfoDialog(context);
                          },
                          child: const Text(
                            "Добавить первую запись",
                            style: TextStyle(
                              color: Colors.black
                            ),
                          )
                        )
                      ]
                    ));
                  }
                },
                errorLoading: (error) => Text(error))
          )
      )
    );
  }
}

void showInfoDialog(BuildContext context, [Resource? resource]) {
  final resourceNameController = TextEditingController(text: resource != null ? resource.resourceName : "");
  final loginController = TextEditingController(text: resource != null ? resource.login : "");
  final passwordController = TextEditingController(text: resource != null ? resource.password : "");
  bool isEditMode = resource != null, readOnly = isEditMode;

  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder:(context) => StatefulBuilder(
      builder: (context, setState) => SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                resource != null ? "Редактировать запись" : "Добавить запись",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextField(
                controller: resourceNameController,
                labelText: "Название ресурса",
                prefixIcon: const Icon(Icons.alternate_email),
                readOnly: readOnly,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextField(
                controller: loginController,
                labelText: "Логин",
                prefixIcon: const Icon(Icons.web_sharp),
                readOnly: readOnly,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomTextField(
                controller: passwordController,
                labelText: "Пароль",
                prefixIcon: const Icon(Icons.lock_outline),
                readOnly: readOnly,
              )
            ),
            if (isEditMode && !readOnly)
              TextButton(
                onPressed: () {
                  context.read<LocalBloc>().add(LocalEvents.editData(data: resource.copyWith(
                    resourceName: resourceNameController.value.text,
                    login: loginController.value.text,
                    password: passwordController.value.text
                  )));
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Обновить запись",
                  style: TextStyle(
                    color: Colors.black
                  )
                )
              )
            else if (isEditMode)
              TextButton(
                onPressed: () {
                  setState(() {
                    readOnly = !readOnly;
                  });
                },
                child: const Text(
                  "Редактировать запись",
                  style: TextStyle(
                    color: Colors.black
                  )
                )
              )
            else
              TextButton(
                onPressed: () {
                  context.read<LocalBloc>().add(LocalEvents.addData(data: Resource(
                    id: math.Random().nextInt(999999),
                    resourceName: resourceNameController.value.text,
                    login: loginController.value.text,
                    password: passwordController.value.text
                    )
                  ));
                  Navigator.of(context).pop();
                },
                child: const Text(
                  "Добавить запись",
                  style: TextStyle(
                    color: Colors.black
                  )
                )
              )
          ]
        ),
      ),
    )
  ).whenComplete(() {
    resourceNameController.clear();
    loginController.clear();
    passwordController.clear();
  });
}

void showDeleteAllConfirmation(BuildContext context) {
  showDialog(
    context: context,
    builder: (dialogContext) => AlertDialog(
        title: const Text('Подтвердите действие'),
        content: const Text('Вы действительно хотите удалить все учетные записи?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
            child: const Text('Отмена')
          ),
          TextButton(
            onPressed: () {
              context.read<LocalBloc>().add(const LocalEvents.clearAllData());
              Navigator.of(dialogContext).pop();
            },
            child: const Text(
            'Очистить всё',
            style: TextStyle(color: Colors.red))
          ),
        ],
      )
  );
}
