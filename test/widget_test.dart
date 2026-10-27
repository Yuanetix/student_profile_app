import 'package:flutter_test/flutter_test.dart';
import 'package:student_profile_app/student_profile_app.dart';

void main() {
  testWidgets('StudentProfileApp loads and displays student information', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const StudentProfileApp());

    // Verify key elements exist.
    expect(find.text('Student Profile'), findsOneWidget);
    expect(find.text('YM'), findsOneWidget);
    expect(find.text('Yuan Misoles'), findsOneWidget);
    expect(find.text('BS Information Technology'), findsOneWidget);
    expect(find.text('555062'), findsOneWidget);
    expect(find.text('About Me'), findsOneWidget);
    expect(find.text('Hobbies and Interests'), findsOneWidget);
    expect(find.text('Coding'), findsOneWidget);
  });
}
