for file in "$(dirname "$BASH_SOURCE")"/.bash/{shell,aliases,commands,path,prompt,extra}; do
	[ -r "$file" ] && source "$file";
done;
unset file;
