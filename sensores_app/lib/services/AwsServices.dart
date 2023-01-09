import 'package:amazon_cognito_identity_dart_2/cognito.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AwsServices{
  bool logued = false;
  final userPool = CognitoUserPool(
    '${(dotenv.env['AWS_USER_POOL_ID'])}',
    '${(dotenv.env['AWS_CLIENT_ID'])}',
  );
   late CognitoUser cognitoUser;
   late AuthenticationDetails authDetails;
   late CognitoUserSession? session;

  Future<bool> createInitialRecord(String email,String password) async {
    debugPrint("authenticating user");
    cognitoUser = CognitoUser(email, userPool);
    authDetails = AuthenticationDetails(
      username: email,
      password: password,
    );

    try {
      session = await cognitoUser.authenticateUser(authDetails);
      print("session token:");
      print(session?.getAccessToken().getJwtToken());
      logued = true;
      return true;
    } on CognitoUserNewPasswordRequiredException catch (e) {
      logued = true;
      return false;
    } on CognitoUserMfaRequiredException catch (e) {
      // handle SMS_MFA challenge
    } on CognitoUserSelectMfaTypeException catch (e) {
      // handle SELECT_MFA_TYPE challenge
    } on CognitoUserMfaSetupException catch (e) {
      // handle MFA_SETUP challenge
    } on CognitoUserTotpRequiredException catch (e) {
      // handle SOFTWARE_TOKEN_MFA challenge
    } on CognitoUserCustomChallengeException catch (e) {
      // handle CUSTOM_CHALLENGE challenge
    } on CognitoUserConfirmationNecessaryException catch (e) {
      // handle User Confirmation Necessary
    } catch (e) {
      print(e);
    }
    return false;
  }

  Future NewPasswordRequired(newPassword)async{

    try {
      session = await cognitoUser.sendNewPasswordRequiredAnswer(newPassword);
      print("session token:");
      logued = true;
      print(session?.getAccessToken().getJwtToken());
    } on CognitoUserNewPasswordRequiredException catch (e) {
      // handle New Password Required
    } on CognitoUserMfaRequiredException catch (e) {
      // handle SMS_MFA challenge
    } on CognitoUserSelectMfaTypeException catch (e) {
      // handle SELECT_MFA_TYPE challenge
    } on CognitoUserMfaSetupException catch (e) {
      // handle MFA_SETUP challenge
    } on CognitoUserTotpRequiredException catch (e) {
      // handle SOFTWARE_TOKEN_MFA challenge
    } on CognitoUserCustomChallengeException catch (e) {
      // handle CUSTOM_CHALLENGE challenge
    } catch (e) {
      print(e);
    }
  }
}