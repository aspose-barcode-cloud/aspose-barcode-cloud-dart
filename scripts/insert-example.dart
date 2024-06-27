import 'dart:io';

void main() async {
  final templateFile = File('README.template');
  final outputFile = File('README.md');

  // Read the template file
  if (!await templateFile.exists()) {
    throw Exception('Error: $templateFile does not exist.');
  }
  String templateContent = await templateFile.readAsString();

  // Regex to find the %insert path/to/file.dart% pattern
  final regex = RegExp(r'%insert ([^%]+)%');

  // Function to replace the placeholders
  String replacePlaceholders(String content) {
    return content.replaceAllMapped(regex, (match) {
      final path = match.group(1);
      if (path == null || path.isEmpty) {
        throw Exception('Incorrect value $path');
      }

      final file = File(path);
      if (!file.existsSync()) {
        throw Exception('Error: File $path does not exist.');
      }

      final fileContent = file.readAsStringSync();
      return fileContent;
    });
  }

  // Replace placeholders in the template content
  String modifiedContent = replacePlaceholders(templateContent);

  // Write the modified content to the output file
  await outputFile.writeAsString(modifiedContent);

  print('README.md file has been generated.');
}
