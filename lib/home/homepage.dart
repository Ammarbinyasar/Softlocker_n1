import 'package:flutter/material.dart';
// import 'storage_info.dart';
// import 'navigation_bar.dart';
import 'empty_state.dart';
// import 'folder_details_widget.dart';
// import 'file_list_screen.dart';
// import 'profile_screen.dart'; // Import ProfileScreen

class HomeFolderScreen extends StatelessWidget {
  const HomeFolderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> folders = [
      {'name': 'Education', 'items': 10, 'size': 223},
      {'name': 'Personal', 'items': 5, 'size': 120},
      {'name': 'Work', 'items': 20, 'size': 340},
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              size: 42,
              color: Color(0xFF0071A5),
            ),
          )
        ],
        automaticallyImplyLeading: false,
        title: Container(
          child: Image.asset(
            'assets/logo.png',
            width: 40,
            height: 33,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0), // Height of the bottom border
          child: Container(
            color: Colors.grey, // Color of the border
            height: 1.0, // Thickness of the border
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(17, 14, 17, 0),
          child: Column(
            children: [
              // Header Section with Logos and User Icon

              const SizedBox(height: 20),

              // Folder Grid Section
              Expanded(
                child: folders.isEmpty
                    ? const EmptyState()
                    : GridView.builder(
                        itemCount: folders.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (context, index) {
                          final folder = folders[index];
                          return GestureDetector(
                            onTap: () {
                              // Navigate to FileListScreen with folder name
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => FileListScreen(
                              //       folderName: folder['name'],
                              //     ),
                              //   ),
                              // );
                            },
                            onLongPress: () {
                              // Show folder details on long press
                              // showModalBottomSheet(
                              //   context: context,
                              //   isScrollControlled: true,
                              //   backgroundColor: Colors.transparent,
                              //   builder: (_) => FractionallySizedBox(
                              //     heightFactor: 0.4,
                              //     child: FolderDetailsScreen(
                              //       folderName: folder['name'],
                              //       itemCount: folder['items'],
                              //       folderSize: folder['size'],
                              //     ),
                              //   ),
                              // );
                            },
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.folder,
                                  color: Color(0xFF0071A5),
                                  size: 50,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  folder['name'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF0071A5),
                                  ),
                                ),
                                Text(
                                  "${folder['items']} items",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  "${folder['size']} MB",
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),

              const SizedBox(height: 16),
              // const StorageWidget(),
              const SizedBox(height: 39),
              // const CustomNavigationBar(),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
