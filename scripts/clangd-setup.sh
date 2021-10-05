# project_type;

# clang=$(which clang)
# clang++=$(which clang++)

[ "$1" == "c" ] && project_type="c" && clang_exec=$(which clang)
[ "$1" == "cpp" ] && project_type="cpp" && clang_exec=$(which clang++)
# [ -z $project_type ] && echo "Error enter language type c or cpp"

template="[\n\t{\n\t\t\"directory\": \"$(pwd)\",\n\t\t\"command\": \"$clang_exec $(pwd)/src/main.$project_type -I /usr/local/include -I $(pwd)/include\",\n\t\t\"file\": \"$(pwd)/src/main.$project_type\"\n\t}\n]"
touch compile_commands.json
echo $template > compile_commands.json
# echo $template

# template="cool\nbeens"

# echo $template
