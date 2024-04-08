<project xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xmlns="http://maven.apache.org/POM/4.0.0"
        xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
                     http://maven.apache.org/xsd/maven-4.0.0.xsd">
   <modelVersion>4.0.0</modelVersion>

   <groupId>com.github.javarushcommunity</groupId>
   <artifactId>maven-demo</artifactId>
   <version>1.0-SNAPSHOT</version>
   <packaging>jar</packaging>

   <name>Maven Demo Project</name>

   <url>https://github.com/javarushcommunity/maven-demo/</url>

   <licenses>
       <license>
           <name>The Apache Software License, Version 2.0</name>
           <url>http://www.apache.org/licenses/LICENSE-2.0.txt</url>
       </license>
   </licenses>

   <developers>
       <developer>
           <id>Sergey</id>
           <name>Slusarev</name>
           <email>Azoniques@gmail.com</email>
       </developer>
   </developers>

   <scm>
       <connection>git@github.com:javarushcommunity/maven-demo.git</connection>
       <developerConnection>git@github.com:javarushcommunity/maven-demo.git</developerConnection>
       <url>https://github.com/javarushcommunity/maven-demo</url>
   </scm>

   <properties>
       <mockito.version>2.26.0</mockito.version>
       <junit.version>5.5.2</junit.version>
       <image.comparison.version>4.3.0</image.comparison.version>
       <maven.compiler.source>1.8</maven.compiler.source>
       <maven.compiler.target>1.8</maven.compiler.target>
       <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
       <javadoc.plugin.version>3.1.1</javadoc.plugin.version>
       <source.plugin.version>3.2.0</source.plugin.version>

   </properties>

   <dependencies>
       <dependency>
           <groupId>org.mockito</groupId>
           <artifactId>mockito-core</artifactId>
           <version>${mockito.version}</version>
           <scope>test</scope>
       </dependency>
       <dependency>
           <groupId>org.junit.jupiter</groupId>
           <artifactId>junit-jupiter-api</artifactId>
           <version>${junit.version}</version>
           <scope>test</scope>
       </dependency>
       <dependency>
           <groupId>com.github.romankh3</groupId>
           <artifactId>image-comparison</artifactId>
           <version>${image.comparison.version}</version>
       </dependency>
   </dependencies>

   <build>
       <plugins>

           <plugin>
               <groupId>org.apache.maven.plugins</groupId>
               <artifactId>maven-source-plugin</artifactId>
               <version>${source.plugin.version}</version>
               <executions>
                   <execution>
                       <id>attach-sources</id>
                       <goals>
                           <goal>jar</goal>
                       </goals>
                   </execution>
               </executions>
           </plugin>

           <plugin>
               <groupId>org.apache.maven.plugins</groupId>
               <artifactId>maven-javadoc-plugin</artifactId>
               <version>${javadoc.plugin.version}</version>
               <executions>
                   <execution>
                       <id>attach-javadocs</id>
                       <goals>
                           <goal>jar</goal>
                       </goals>
                   </execution>
               </executions>
           </plugin>
       </plugins>
   </build>
</project>