if status is-interactive; 
  if test -d /usr/lib/jvm/default/bin/;
    fish_add_path /usr/lib/jvm/default/bin/
    set -Ux GRADLE_USER_HOME $HOME/.gradle
    set -Ux JAVA_HOME /usr/lib/jvm/java-21-openjdk/
  end
end
