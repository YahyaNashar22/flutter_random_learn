import 'package:flutter/material.dart';
import 'package:random_learn/screens/counter_screen.dart';
import 'package:random_learn/screens/form_inputs_screen.dart';
import 'package:random_learn/screens/image_viewer_screen.dart';
import 'package:random_learn/screens/videoplayer_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void screenSelector(screen) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return screen;
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Screen"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Where Do You Want To Go?",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ElevatedButton(
              onPressed: () => screenSelector(const CounterScreen()),
              child: const Text("Counter"),
            ),
            ElevatedButton(
              onPressed: () => screenSelector(const VideoPlayerScreen()),
              child: const Text("Video Player"),
            ),
            ElevatedButton(
              onPressed: () => screenSelector(const FormInputsScreen()),
              child: const Text("Form Inputs"),
            ),
            ElevatedButton(
              onPressed: () => screenSelector(const ImageViewerScreen()),
              child: const Text("Image Viewer"),
            ),
          ],
        ),
      ),
    );
  }
}
