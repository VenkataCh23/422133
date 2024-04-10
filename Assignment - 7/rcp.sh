mkdir example_directory

touch example_directory/file1.txt
touch example_directory/file2.txt

echo "Directory contents:"
ls -l example_directory

cp example_directory/file1.txt example_directory/copied_file.txt

echo "Updated directory contents:"
ls -l example_directory

mv example_directory/file2.txt example_directory/moved_file.txt

echo "Updated directory contents after moving file2.txt:"
ls -l example_directory

echo "Copying file1.txt to a remote host..."
rcp example_directory/file1.txt remote.example.com:/tmp/file1.txt

rm example_directory/copied_file.txt
rm example_directory/moved_file.txt
rmdir example_directory

echo "Files and directory removed."

