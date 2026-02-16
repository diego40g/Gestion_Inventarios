{
  description = "Entorno de desarrollo Java para Gestión de Inventarios";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        
        # Configuración de Java
        jdk = pkgs.javaPackages.compiler.openjdk25;
        
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            # Java JDK
            jdk
            
            # Maven para gestión de dependencias
            maven
            
            # Herramientas adicionales útiles
            git
            
            # Opcional: Gradle si lo prefieres sobre Maven
            # gradle
          ];

          shellHook = ''
            echo "🚀 Entorno de desarrollo Java activado"
            echo "📦 Java version: $(java -version 2>&1 | head -n 1)"
            echo "📦 Maven version: $(mvn -version | head -n 1)"
            echo ""
            echo "Proyecto: Gestión de Inventarios"
            echo "📂 Ubicación: $PWD"
            echo ""
            
            # Configurar JAVA_HOME
            export JAVA_HOME="${jdk}"
            export PATH="$JAVA_HOME/bin:$PATH"
            
            # Configurar Maven
            export MAVEN_OPTS="-Xmx2048m"
            
            # Opcional: Configurar variables de entorno para VS Code
            export VSCODE_JAVA_HOME="${jdk}"
          '';

          # Variables de entorno
          JAVA_HOME = "${jdk}";
          
          # Opcional: Si necesitas configurar el classpath
          # CLASSPATH = "./target/classes:./target/test-classes";
        };
      }
    );
}
