import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          // Top container with solid color and centered camera icon
          Positioned.fill(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue, // Set the color for the top section
                    child: Center(
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Scrollable bottom sheet that can be dragged up to full screen
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 1.0, // Set to full screen when fully expanded
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  color:
                      Colors.grey[850], // Set the color for the bottom section
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16.0)),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_upward,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Select from Recent',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 16.0),
                        // Horizontally scrollable row of color blocks
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.greenAccent, // Color block 1
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.lightGreen, // Color block 2
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.teal, // Color block 3
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.orange, // Color block 4
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.redAccent, // Color block 5
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.purple, // Color block 6
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Select from Draft',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 16.0),
                        // Add your content under "Select from Start" here
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.blueAccent, // Color block 7
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.yellowAccent, // Color block 8
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.amber, // Color block 9
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                              Container(
                                width: 80,
                                height: 80,
                                color: Colors.cyan, // Color block 10
                                margin: EdgeInsets.symmetric(horizontal: 8.0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        // Center the buttons in the bottom sheet
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  // Action for importing from gallery
                                },
                                child: Text('Import from Gallery'),
                              ),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  // Action for taking from camera
                                },
                                child: Text('Taken from Camera'),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
