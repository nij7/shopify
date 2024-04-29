class AuthenticationMethods {
  //signup
  Future<String> signupUser({
    required String name,
    required String email,
    required String password,
  }) async{
    name.trim();
    email.trim();

    String output = "something went wrong";

    if (name != "" && email != "" && password != "") {
      //function
    } else {
      output = "please fill up everything";
    }
    return output;
  }
}
