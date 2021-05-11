import 'package:akudo_task/models/rewards_model.dart';
import 'package:akudo_task/models/transaction_model.dart';
import 'package:flutter/material.dart';

class UserModel {
  String name;
  int userId;
  double accountBalance;
  List<String> userFriends;
  List<RewardModel> rewards;
  List<TransactionModel> transactions;

  UserModel(this.name, this.userId, this.accountBalance, this.userFriends,
      this.rewards, this.transactions);
}

List<String> userFriends = ['Jay', 'Harsh', 'Kushal'];
List<RewardModel> listOfRewards = [
  RewardModel('Goal 1 Achieved', 'You saved Rs1000', 100),
  RewardModel('Goal 1 Achieved', 'You saved Rs2000', 100),
  RewardModel('Goal 1 Achieved', 'You saved Rs4000', 100),
];
List<TransactionModel> listOfTransaction = [
  TransactionModel('t1', 2000, 100, 'description', true, 'Father', null),
  TransactionModel('t2', 20000, 101, 'description', false, null, 'Shopkeeper'),
  TransactionModel('t3', 300, 102, 'description', true, 'Mother', null),
  TransactionModel('t4', 20, 103, 'description', true, 'Chocolate', null),
  TransactionModel('t5', 100, 104, 'description', true, 'McDonalds', null),
];

List<UserModel> listOfUsers = [
  UserModel(
      'Harsh', 100, 4000.0, userFriends, listOfRewards, listOfTransaction),
  UserModel('Jay', 100, 4000.0, userFriends, listOfRewards, listOfTransaction),
  UserModel(
      'Father', 100, 4000.0, userFriends, listOfRewards, listOfTransaction),
  UserModel(
      'Mother', 100, 4000.0, userFriends, listOfRewards, listOfTransaction),
  UserModel(
      'Shopkeeper', 100, 4000.0, userFriends, listOfRewards, listOfTransaction),
  UserModel(
      'McDonalds', 100, 4000.0, userFriends, listOfRewards, listOfTransaction),
];

int totalRewards() {
  int sum = 0;
  for (var reward in listOfRewards) {
    sum += reward.rewardMoney;
  }
  return sum;
}

List<String> getNameOfUsers() {
  return userFriends;
}
