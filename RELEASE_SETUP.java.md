---
title: "How to Release an Open Source Java Library on Maven Central"
slug: how-to-release-an-open-source-java-library-on-maven-central
date: 2018-11-04T14:33:43+07:00
draft: true
---

This was going to be a blog post, but I just found out that people
use "jcenter" now, instead of Maven Central. So will keep it for internal
reference.

-------------------------------------------------------------------------------------

FormAPI uses [openapi-generator](https://github.com/OpenAPITools/openapi-generator) to automatically generate a set of API clients from our [Swagger](https://swagger.io/) API specification. It was very easy to release libraries for Ruby, Python, C#, PHP, and JavaScript. However, Java has been an extremely convoluted and difficult process. I decided that I would try to write a simple step-by-step guide for developers who don't have much Java experience.

This guide is mostly based on these two posts:

* [Distribute project’s artifacts in Maven Central with OSSRH](http://ruleoftech.com/2014/distribute-projects-artifacts-in-maven-central-with-ossrh) (for Maven)
* [How to publish your open source library to Maven central](https://medium.com/@scottyab/how-to-publish-your-open-source-library-to-maven-central-5178d9579c5) (for Gradle)

I've tried to turn these into a simple step-by-step guide, and it's hopefully a bit easier to follow. There are also a few specific instructions that I've added for the `openapi-generator` Java client.

> If something has changed, please send an email to developers@formapi.io, and I will update this post with new instructions.

## Requirements

* Mac or Linux
* [Homebrew](https://brew.sh/) (for Mac)
* A Java project that uses [Maven](https://maven.apache.org/), and is ready to publish.
  * If you use [Gradle](https://gradle.org/) then many of these steps will be different, and you will need to configure things in different places.

## Things You Really Need to Know

* [Maven Central](https://mvnrepository.com/repos/central) is a repository for Java libraries.
* You cannot publish a library directly to the Maven Central repository.
* Some companies provide a service that helps you to publish your libraries to Maven Central. One of these companies is [Sonatype](https://www.sonatype.com/).
* This guide uses the Sonatype "Central OSSRH" service.
  * OSSRH stands for *Open Source Software Repository Hosting Service*.
* [Maven](https://maven.apache.org/) and [Gradle](https://gradle.org/) are two competing build tools. Whatever you do, just pick one of these, and ignore any articles or blog posts that talk about the other one.
  * (I read a lot of different articles and blog posts and got pretty confused. Hopefully you'll only need to read this one!)


## Step-by-step Guide

### 1) Sign up for an account on Sonatype's Jira project

* Visit the [Sonatype Jira sign-up page](https://issues.sonatype.org/secure/Signup!default.jspa)
* Sign up for an account using your email address and password

> Note: This will also give you an account on [oss.sonatype.org](https://oss.sonatype.org) via LDAP authentication. (You can sign in with the same username and password.)

### 2) Create a Jira ticket to request a new repository

* Visit the [Create New Issue page](https://issues.sonatype.org/secure/CreateIssue.jspa?issuetype=21&pid=10134)
* Fill in the fields with the following details:

|  Field  | Details | Example |
|  :----  | :------ | :------ |
| **Summary** | A short summary | "FormAPI Java Client" |
| **Description** | A short message that explains why you need to release a package | See the [FormAPI Jira ticket](https://issues.sonatype.org/browse/OSSRH-43807) for an example |
| **Attachment** | Leave this blank | |
| **Group Id** | Your project's Group Id, from your `pom.xml` | "io.formapi" |
| **Project URL** | Your GitHub URL | https://github.com/FormAPI/formapi-java |
| **SCM URL** | Your GitHub "git" URL | https://github.com/FormAPI/formapi-java.git |
| **Username(s)** | Your Jira username | |
| **Already Synced to Central** | Choose "**No**" | |

[Here's the Jira ticket I created for FormAPI](https://issues.sonatype.org/browse/OSSRH-43807).

They say that someone will process your new ticket within 2 business days, but I actually got a response in about 10 minutes. YMMV.

### 3) Install GPG2

* Mac: `brew install gpg2`
* Linux: `sudo apt-get install gnupg2`

> The following instructions have been tested with GPG version `2.2.0`.
> You can check your version by running: `gpg2 --version`.

> If you see a "command not found" error, try calling `gpg` instead of `gpg2`.

### 4) Create a new PGP key, using the same email address as your Sonatype Jira account

This PGP key is used to sign your Java package. The email address for the PGP key must be the same as the email for your Sonatype Jira account.

Run the following command in your terminal:

```bash
$ gpg2 --generate-key
```

> If you are using an older version of GPG, you will need to use `--new-key` instead of `--generate-key`.

You will be prompted to enter your name, email address, and a password to protect your PGP key. (Save this password somewhere like [1Password](https://1password.com/) or [LastPass](http://lastpass.com/).)

The details of your new key will be printed to the terminal:

```
pub   rsa2048 2018-11-04 [SC] [expires: 2020-11-03]
      3B4614B08E48509751217E6AB7E6D8BCDA5D117B
uid                      Your Name <yourname@example.com>
sub   rsa2048 2018-11-04 [E] [expires: 2020-11-03]
```

Save your PGP key ID for later. In the example output above,
this is the long string starting with "3B4614B".

### 5) Publish your PGP public key to some key servers

Run the following commands, replacing `YOUR_PGP_KEY_ID_FROM_STEP_4` with your PGP key ID.

```
PGP_KEY_ID="YOUR_PGP_KEY_ID_FROM_STEP_4"
gpg2 --keyserver keyserver.ubuntu.com --send-keys $PGP_KEY_ID
gpg2 --keyserver pgp.mit.edu --send-keys $PGP_KEY_ID
```

*If you've lost your PGP key ID, you can find it by running: `gpg2 --list-keys`.*

### 6) Configure your OSSRH credentials and PGP key ID in `~/.m2/settings.xml`

It's a bad idea to store passwords in your git repo, so we store these in `~/.m2/settings.xml`. Run the following commands in your terminal to make sure that this file exists:

```
mkdir -p ~/.m2
touch ~/.m2/settings.xml
```

Now open `~/.m2/settings.xml` in your text editor, and add the following lines:

```xml
<settings>
  <servers>
    <server>
      <id>ossrh</id>
      <username>YOUR_SONATYPE_JIRA_USERNAME</username>
      <password><![CDATA[YOUR_SONATYPE_JIRA_PASSWORD]]></password>
    </server>
  </servers>

  <profiles>
    <profile>
      <id>gpg-settings</id>
      <properties>
        <gpg.keyname>YOUR_PGP_KEY_ID_FROM_STEP_4</gpg.keyname>
      </properties>
    </profile>
  </profiles>
  <activeProfiles>
    <activeProfile>gpg-settings</activeProfile>
  </activeProfiles>
</settings>
```

Make sure you set the correct values for `YOUR_SONATYPE_JIRA_USERNAME`, `YOUR_SONATYPE_JIRA_PASSWORD`, and `YOUR_PGP_KEY_ID_FROM_STEP_4`. *(Putting your password inside `<![CDATA[ ... ]]>` escapes any special characters, such as ampersands (&).)*

### 7) Configure your `pom.xml`

Open your project's `pom.xml` (in the root directory of your project). And add the following sections.

*For reference, here is the [pom.xml for `formapi-java`](https://github.com/FormAPI/formapi-java/blob/master/pom.xml).*

* Add a `<distributionManagement>` section under `<project>`:

```xml
<project>
  <distributionManagement>
    <snapshotRepository>
      <id>ossrh</id>
      <url>https://oss.sonatype.org/content/repositories/snapshots</url>
    </snapshotRepository>
    <repository>
      <id>ossrh</id>
      <url>https://oss.sonatype.org/service/local/staging/deploy/maven2/</url>
    </repository>
  </distributionManagement>
```

* Add a `<plugin>` section to configure `maven-release-plugin`, under `<project>` => `<build>` => `<pluginManagement>` => `<plugins>`:

```xml
<project>
  <build>
    <pluginManagement>
      <plugins>
        <plugin>
          <groupId>org.apache.maven.plugins</groupId>
          <artifactId>maven-release-plugin</artifactId>
          <version>2.5.3</version>
          <configuration>
            <useReleaseProfile>false</useReleaseProfile>
            <releaseProfiles>release</releaseProfiles>
            <goals>deploy</goals>
          </configuration>
        </plugin>
      </plugins>
    </pluginManagement>
```

* Add a `<plugin` section for `nexus-staging-maven-plugin`, under `<project>` => `<build>` => `<plugins>`:

```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groupId>org.sonatype.plugins</groupId>
        <artifactId>nexus-staging-maven-plugin</artifactId>
        <version>1.6.3</version>
        <extensions>true</extensions>
        <configuration>
          <serverId>ossrh</serverId>
          <nexusUrl>https://oss.sonatype.org/</nexusUrl>
          <autoReleaseAfterClose>true</autoReleaseAfterClose>
        </configuration>
      </plugin>
```

#### For the `openapi-generator` and `swagger-codegen` Java clients:

Find the `sign-artifacts` profile in your `pom.xml`:

```xml
<profiles>
  <profile>
    <id>sign-artifacts</id>
```

Add the following lines immediately after the `<id>sign-artifacts</id>` line:

```xml
    <activation>
      <activeByDefault>true</activeByDefault>
    </activation>
```

(`maven-gpg-plugin` is inside a "profile" that is disabled by default.)

> Alternatively, you can enable the "sign-artifacts" profile by using a command-line flag: `mvn deploy -Psign-artifacts`


#### For other Java projects:

Make sure you have `<plugin>` section for `maven-gpg-plugin`, under `<project>` => `<build>` => `<plugins>`:

```xml
<project>
  <build>
    <plugins>
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-gpg-plugin</artifactId>
        <version>1.5</version>
        <executions>
          <execution>
            <id>sign-artifacts</id>
            <phase>verify</phase>
            <goals>
              <goal>sign</goal>
            </goals>
          </execution>
        </executions>
      </plugin>
```

> If you find the `maven-gpg-plugin` inside a `<profiles>` section, then read the section above for details about activating the profile.

### 8) Make sure your version ends with `-SNAPSHOT`

In `pom.xml`, make sure your `<version>` ends with `-SNAPSHOT`. This will
upload your package to a staging repository before it is released.

### 9) Perform a "Snapshot Deployment"

This will build and push your package to the staging repository.

Run:

```bash
$ mvn clean deploy
```

You will be prompted for your PGP key password when the `maven-gpg-plugin` step signs your package.

> Tip: To skip tests, run: `mvn -DskipTests clean deploy`. (I need to do this because I run the tests inside a test harness that starts a mock server.)

### 11) Visit https://oss.sonatype.org and search for your package name

You should be able to see your package:

<img src="/blog/images/nexus-sonatype-listing.png" alt="Nexus Sonatype OSS Search" style="    box-shadow: none; max-width: 600px;">

### 12) Perform a "Release Deployment"

The Maven Release Plugin takes care of all the git operations.
It bumps the version and adds some commits and tags, and then it even pushes everything to GitHub.

*If you don't want to use the Maven Release Plugin to manage your git workflow, then you can just update your `pom.xml` manually and remove `-SNAPSHOT` from the version. Then run `mvn clean deploy` (instead of using the following `release:*` commands.)*

Run `git status`, and make sure you don't have any local changes to your git repo.
Then run:

```bash
$ mvn release:clean release:prepare
```

> Tip: To skip tests, run: `mvn -DskipTests -Darguments=-DskipTests`
> `release:clean release:prepare`.

This will prompt you for the new versions and tags. When the command has finished, you will see two new commits in your git history, like this:

```
* f3190fd - (HEAD -> master) [maven-release-plugin] prepare for next development iteration (9 minutes ago) <Nathan Broadbent>
* 6a32b72 - (tag: FormAPI-1.0.0) [maven-release-plugin] prepare release FormAPI-1.0.0 (9 minutes ago) <Nathan Broadbent>
* db47650 - (origin/master) Initial Commit (10 minutes ago) <Nathan Broadbent>
```

You will also see your compiled package in the `./target` directory.

Now you can run the following command to upload and release your package:

```bash
$ mvn release:perform
```

Now your package is in the Releases repository.

### 13) Comment on the OSSRH Jira ticket

Now that your package is ready, you must go back to the Jira ticket from step 1.

Leave a comment, saying something like:

> Hello, I have promoted my first release. Thanks!

After that, someone will get your releases synced up with The Maven Central Repository. And then it might take a few hours before your package appears in the Maven Central search results.

Congratulations, you've released an open source library for Java! Now people can use your library by adding the following to their `pom.xml`:

```xml
<dependency>
  <groupId>com.yourlibrary</groupId>
  <artifactId>YourLibrary</artifactId>
  <version>1.0.0</version>
</dependency>
```


## Conclusion

Figuring out to release an open source Java library has been an absolute nightmare.I lost count of all the little problems I had to solve, like escaping my password with `<![CDATA[` and setting the default PGP key in `~/.m2/settings.xml`. I was trying to get Gradle to work for a while, and then I found some Maven instructions that were easier to follow.

Anyway, I hope this post has been helpful!


--------------------------------------------------

# Other Options

* [Bintray](https://bintray.com/) also provides a similar service.
* [JitPack](https://jitpack.io/) might be a much easier way to release libraries.
  * I didn't try this out because it sounds a bit "magical".
  * I was worried that I would have to spend a lot of time debugging broken builds, and just thought it would be a better idea to release this package on the Maven Central repository.


# References

**Some of these links might help if you get stuck:**

* [Sonatype OSSRH Guide](https://central.sonatype.org/pages/ossrh-guide.html)
  * [Working with PGP signatures](https://central.sonatype.org/pages/working-with-pgp-signatures.html)
  * [Deploying to OSSRH with Apache Maven](https://central.sonatype.org/pages/apache-maven.html)
  * [Releasing Deployment from OSSRH to the Central Repository](https://central.sonatype.org/pages/releasing-the-deployment.html)
* Rule of Tech Blog post: [Distribute project’s artifacts in Maven Central with OSSRH](http://ruleoftech.com/2014/distribute-projects-artifacts-in-maven-central-with-ossrh)
* Medium Article: [How to publish your open source library to Maven central](https://medium.com/@scottyab/how-to-publish-your-open-source-library-to-maven-central-5178d9579c5)
  * This method uses gradle and the [gradle-mvn-push](https://github.com/chrisbanes/gradle-mvn-push) project. Tip: Just pick one post that uses either maven or gradle. Don't try to follow the steps from multiple posts, because you'll get pretty confused!
* maven.apache.org: [Guide to uploading artifacts to the Central Repository](https://maven.apache.org/repository/guide-central-repository-upload.html)
* GPG 2.1+ Secret Keyring Removal:
  * GPG 2.1 release notes: [Removal of the secret keyring](https://gnupg.org/faq/whats-new-in-2.1.html#nosecring)
  * Gradle GitHub Issue: [Signing plugin doesn't work with GPG 2.1](https://github.com/gradle/gradle/issues/888)
    * The solution: [gpg --export-secret-keys > ~/.gnupg/secring.gpg](https://github.com/gradle/gradle/issues/888#issuecomment-291802365)
  * sbt/sbt-pgp GitHub Issue: [GPG 2.1+ doesn't use secret keyring anymore](https://github.com/sbt/sbt-pgp/issues/72)
* [Pushing AARs to Maven Central](https://chris.banes.me/2013/08/27/pushing-aars-to-maven-central/)

### SEO

* How to publish a swagger-codegen Java library
* How to release an openapi-generator Java library
* How to release an open source Java API client
