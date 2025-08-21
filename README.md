### Eclipse Maven War Project 만들기

#### 1. war packaging maven project 생성

#### 2. pom.xml 수정

1) properties -> java version 21

	```xml
	<properties>
		<project.build.sourceEncoding>utf-8</project.build.sourceEncoding>
		<maven.compiler.source>21</maven.compiler.source>
		<maven.compiler.target>21</maven.compiler.target>
	</properties>
	```
	
2) 패키징 war 파일 이름 지정

	```xml
	<build>
		<finalName>helloweb</finalName>
	</build>
	```
3) dependency(servlet API, JSP API) 추가

```
<dependencies>
		<!-- servlet api -->
		<dependency>
		    <groupId>jakarta.servlet</groupId>
		    <artifactId>jakarta.servlet-api</artifactId>
		    <version>5.0.0</version>
		    <scope>provided</scope>
		</dependency>
		
		<!-- jsp api -->
		<dependency>
		    <groupId>jakarta.servlet.jsp</groupId>
		    <artifactId>jakarta.servlet.jsp-api</artifactId>
		    <version>4.0.0</version>
		    <scope>provided</scope>
		</dependency>
	</dependencies>
```

#### 3. webx.xml 생성
프로젝트 컨텍스트 메뉴 > Java EE Tools > Generate Deployment Descriptor 메뉴 선택 (2번하기)

#### 4. target runtime 설정
프로젝트 오른쪽 메뉴 (properties) > Tageted Runtime
프로젝트의 서버 선택
