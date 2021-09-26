// node{
//   stage('SCM Checkout'){
//     git 'https://github.com/abhisheknegi941/javaprojects'
//   }
//   stage('Compile-Package'){
//     // Get maven home path
//     def mvnHome = tool name: 'maven-3', type: 'maven'
//     bat "${mvnHome}/bin/mvn package"
//   }
// }
pipeline {
    agent any
       stages {
           stage ('Compile Stage') {
              steps {
                withMaven(maven : 'maven-3') {
                    bat'mvn clean compile'
                }
              }
           }
           stage ('Testing Stage') {
              steps {
                withMaven(maven : 'maven-3') {
                    bat'mvn test'
                }
              }
           }
           stage ('Install Stage') {
              steps {
                withMaven(maven : 'maven-3') {
                    bat'mvn install'
                }
              }
           }
       }
}
