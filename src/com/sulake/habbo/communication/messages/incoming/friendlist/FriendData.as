package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1028:int;
      
      private var var_809:Boolean;
      
      private var var_1856:Boolean;
      
      private var var_666:String;
      
      private var var_1470:int;
      
      private var var_1858:String;
      
      private var var_1857:String;
      
      private var var_1859:String;
      
      private var var_2734:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1028 = param1.readInteger();
         this.var_809 = param1.readBoolean();
         this.var_1856 = param1.readBoolean();
         this.var_666 = param1.readString();
         this.var_1470 = param1.readInteger();
         this.var_1858 = param1.readString();
         this.var_1857 = param1.readString();
         this.var_1859 = param1.readString();
         this.var_2734 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1028;
      }
      
      public function get online() : Boolean
      {
         return this.var_809;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1856;
      }
      
      public function get figure() : String
      {
         return this.var_666;
      }
      
      public function get categoryId() : int
      {
         return this.var_1470;
      }
      
      public function get motto() : String
      {
         return this.var_1858;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1857;
      }
      
      public function get realName() : String
      {
         return this.var_1859;
      }
      
      public function get facebookId() : String
      {
         return this.var_2734;
      }
   }
}
