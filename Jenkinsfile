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

pipeline{
  agent any
  
  stages{
  
  stage('SCM Checkout'){
    steps{
       git 'https://github.com/abhisheknegi941/javaprojects'
    }
    
  }
  stage('Compile-Package'){
    // Get maven home path
    steps{
      def mvnHome = tool name: 'maven-3', type: 'maven'
      bat "${mvnHome}/bin/mvn package"
    }
  }
  }  
}
