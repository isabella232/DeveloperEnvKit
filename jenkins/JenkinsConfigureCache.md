\### Jenkins 安装、配置和使用纪实

1. 安装和配置采坑

   - Mac

​     Mac上安装一般有两种方式：`brew install jenkins` 和 [PKG](https://jenkins.io/download/) 直接下载安装包，Mac上安装Jenkins后，涉及到Jenkins的目录包括：

​     ```

​     /Library/LaunchDaemons/org.jenkins-ci.plist

​     /Library/Preferences/org.jenkins-ci.plist

​     /Library/Application\ Support/Jenkins/jenkins-runner.sh

​     /Users/Shared/Jenkins

​     ```     

/Library/Application\ Support/Jenkins/jenkins-runner.sh

   - Ubuntu 、CentOS、MacOS
     - war包进行安装

     - tomcat 部署war包

     - ```bash
       /usr/bin/daemon --name=jenkins --inherit --env=JENKINS_HOME=/var/lib/jenkins --output=/var/log/jenkins/jenkins.log --pidfile=/var/run/jenkins/jenkins.pid -- /usr/bin/java -Djava.awt.headless=true -Dsun.security.ssl.allowUnsafeRenegotiation=true -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080
       ```


       /usr/bin/java -Djava.awt.headless=true -Dsun.security.ssl.allowUnsafeRenegotiation=true -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8080
       ```
    
     - 

2. 使用实例

3. 默认插件

   ```
   Plugin:ace-editor,
   Plugin:ant,
   Plugin:antisamy-markup-formatter,
   Plugin:apache-httpcomponents-client-4-api,
   Plugin:authentication-tokens,
   Plugin:bouncycastle-api,
   Plugin:branch-api,
   Plugin:build-timeout,
   Plugin:cloudbees-folder,
   Plugin:command-launcher,
   Plugin:credentials-binding,
   Plugin:credentials,
   Plugin:display-url-api,
   Plugin:docker-commons,
   Plugin:docker-workflow,
   Plugin:durable-task,
   Plugin:email-ext,
   Plugin:git-client,
   Plugin:git-server,
   Plugin:git,
   Plugin:github-api,
   Plugin:github-branch-source,
   Plugin:github,
   Plugin:gradle,
   Plugin:handlebars,
   Plugin:jackson2-api,
   Plugin:jquery-detached,
   Plugin:jsch,
   Plugin:junit,
   Plugin:ldap,
   Plugin:mailer,
   Plugin:mapdb-api,
   Plugin:matrix-auth,
   Plugin:matrix-project,
   Plugin:momentjs,
   Plugin:pam-auth,
   Plugin:pipeline-build-step,
   Plugin:pipeline-github-lib,
   Plugin:pipeline-graph-analysis,
   Plugin:pipeline-input-step,
   Plugin:pipeline-milestone-step,
   Plugin:pipeline-model-api,
   Plugin:pipeline-model-declarative-agent,
   Plugin:pipeline-model-definition,
   Plugin:pipeline-model-extensions,
   Plugin:pipeline-rest-api,
   Plugin:pipeline-stage-step,
   Plugin:pipeline-stage-tags-metadata,
   Plugin:pipeline-stage-view,
   Plugin:plain-credentials,
   Plugin:resource-disposer,
   Plugin:scm-api,
   Plugin:script-security,
   Plugin:ssh-credentials,
   Plugin:ssh-slaves,
   Plugin:structs,
   Plugin:subversion,
   Plugin:timestamper,
   Plugin:token-macro,
   Plugin:workflow-aggregator,
   Plugin:workflow-api,
   Plugin:workflow-basic-steps,
   Plugin:workflow-cps-global-lib,
   Plugin:workflow-cps,
   Plugin:workflow-durable-task-step,
   Plugin:workflow-job,
   Plugin:workflow-multibranch,
   Plugin:workflow-scm-step,
   Plugin:workflow-step-api,
   Plugin:workflow-support,
   Plugin:ws-cleanup
   ]
   ```

   ​

4. 常用插件

   ````

   Plugin:matrix-project,
   Plugin:mailer,
   Plugin:workflow-support,
   Plugin:blueocean-autofavorite,
   Plugin:credentials-binding,
   Plugin:golang,
   Plugin:scm-api,
   Plugin:workflow-aggregator,
   Plugin:github-branch-source,
   Plugin:rebuild,
   Plugin:jquery-detached,
   Plugin:mercurial,
   Plugin:workflow-multibranch,
   Plugin:ldap,
   Plugin:config-file-provider,
   Plugin:subversion,
   Plugin:apache-httpcomponents-client-4-api,
   Plugin:blueocean-github-pipeline,
   Plugin:blueocean-events,
   Plugin:windows-slaves,
   Plugin:workflow-step-api,
   Plugin:matrix-auth,
   Plugin:pipeline-build-step,
   Plugin:artifactory,
   Plugin:blueocean-commons,
   Plugin:blueocean-bitbucket-pipeline,
   Plugin:zentimestamp,
   Plugin:github-api,
   Plugin:github,
   Plugin:antisamy-markup-formatter,
   Plugin:display-url-api,
   Plugin:javadoc,
   Plugin:script-security,
   Plugin:flexible-publish,
   Plugin:run-condition,
   Plugin:bouncycastle-api,
   Plugin:blueocean-rest-impl,
   Plugin:ant,
   Plugin:pipeline-input-step,
   Plugin:workflow-cps,
   Plugin:blueocean-i18n,
   Plugin:pipeline-stage-view,
   Plugin:workflow-scm-step,
   Plugin:pipeline-model-definition,
   Plugin:blueocean-pipeline-editor,
   Plugin:git-server,
   Plugin:workflow-api,
   Plugin:variant,
   Plugin:docker-build-publish,
   Plugin:credentials,
   Plugin:sse-gateway,
   Plugin:cloudbees-folder,
   Plugin:icon-shim,
   Plugin:blueocean-personalization,
   Plugin:handlebars,
   Plugin:aws-java-sdk,
   Plugin:blueocean-pipeline-scm-api,
   Plugin:authentication-tokens,
   Plugin:external-monitor-job,
   Plugin:docker-build-step,
   Plugin:pipeline-milestone-step,
   Plugin:pipeline-model-declarative-agent,
   Plugin:envinject-api,
   Plugin:gitlab-plugin,
   Plugin:workflow-cps-global-lib,
   Plugin:blueocean-jwt,
   Plugin:metrics,
   Plugin:ansicolor,
   Plugin:blueocean-web,
   Plugin:build-name-setter,
   Plugin:docker-commons,
   Plugin:pubsub-light,
   Plugin:pipeline-stage-step,
   Plugin:build-timestamp,
   Plugin:aws-credentials,
   Plugin:branch-api,
   Plugin:workflow-basic-steps,
   Plugin:pipeline-model-extensions,
   Plugin:cloudbees-bitbucket-branch-source,
   Plugin:amazon-ecr,
   Plugin:parameterized-trigger,
   Plugin:pipeline-model-api,
   Plugin:nodejs,
   Plugin:junit,
   Plugin:token-macro,
   Plugin:momentjs,
   Plugin:gradle,
   Plugin:ivy,
   Plugin:ssh-credentials,
   Plugin:slack,
   Plugin:conditional-buildstep,
   Plugin:mapdb-api,
   Plugin:htmlpublisher,
   Plugin:pipeline-graph-analysis,
   Plugin:ssh-slaves,
   Plugin:blueocean-pipeline-api-impl,
   Plugin:blueocean-git-pipeline,
   Plugin:s3,
   Plugin:blueocean-config,
   Plugin:blueocean-display-url,
   Plugin:blueocean-rest,
   Plugin:favorite,
   Plugin:workflow-durable-task-step,
   Plugin:envinject,
   Plugin:maven-plugin,
   Plugin:pipeline-rest-api,
   Plugin:blueocean-jira,
   Plugin:plain-credentials,
   Plugin:blueocean-dashboard,
   Plugin:jsch,
   Plugin:git-client,
   Plugin:pipeline-stage-tags-metadata,
   Plugin:git,
   Plugin:xcode-plugin,
   Plugin:durable-task,
   Plugin:ssh-agent,
   Plugin:jira,
   Plugin:blueocean,
   Plugin:workflow-job,
   Plugin:docker-workflow,
   Plugin:structs,
   Plugin:ruby-runtime,
   Plugin:ace-editor,
   Plugin:pam-auth,
   Plugin:build-environment,
   Plugin:shiningpanda,
   Plugin:gitlab-oauth,
   Plugin:copyartifact,
   Plugin:jackson2-api,
   Plugin:scm-sync-configuration
   ````

   ​








