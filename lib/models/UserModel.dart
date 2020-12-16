class UserModel {
  static final String UID = 'uid';
  static final String EMAIL = 'email';
  static final String PASSWORD = 'password';
  static final String AVATAR_URL = 'avatarURL';
  static final String USERNAME = 'username';
  static final String STATUS = 'status';
  static final String FOLLOWERS = 'followers';
  static final String FOLLOWINGS = 'followings';
  static final String IS_FOLLOW = 'isFollow';

  final String uid;
  final String email;
  final String password;
  final String username;
  final String status;
  final String avatarURL;

  int followers;
  int followings;
  bool isFollow;

  UserModel({
    this.uid,
    this.email,
    this.password,
    this.username,
    this.status,
    this.avatarURL,
    this.followers,
    this.followings,
    this.isFollow = false,
  });

  set isFollowed(bool value) => isFollow = value;

  set updateFollowers(int value) => followers = value;

  set updateFollowings(int value) => followings = value;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      UserModel.UID: instance.uid,
      UserModel.EMAIL: instance.email,
      UserModel.PASSWORD: instance.password,
      UserModel.AVATAR_URL: instance.avatarURL,
      UserModel.USERNAME: instance.username,
      UserModel.STATUS: instance.status,
      UserModel.FOLLOWERS: instance.followers,
      UserModel.FOLLOWINGS: instance.followings,
      UserModel.IS_FOLLOW: instance.isFollow,
    };
