package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2182:String;
      
      private var var_2181:int;
      
      private var var_2178:int;
      
      private var var_1986:int;
      
      private var _id:int;
      
      private var var_2179:Boolean;
      
      private var _type:String;
      
      private var var_2991:String;
      
      private var var_2993:int;
      
      private var var_2183:String;
      
      private var var_2992:int;
      
      private var var_2990:int;
      
      private var var_1681:int;
      
      private var var_2180:Date;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         this.var_2180 = new Date();
         super();
         this.var_2182 = param1.readString();
         this.var_2181 = param1.readInteger();
         this.var_2178 = param1.readInteger();
         this.var_1986 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2179 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2991 = param1.readString();
         this.var_2993 = param1.readInteger();
         this.var_2183 = param1.readString();
         this.var_2992 = param1.readInteger();
         this.var_2990 = param1.readInteger();
         this.var_1681 = param1.readInteger();
      }
      
      public function get campaignCode() : String
      {
         return this.var_2182;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2183;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2181;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2178;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1986;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2179;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2991;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this.var_2993;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2992;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2990;
      }
      
      public function get waitPeriodSeconds() : int
      {
         if(this.var_1681 < 1)
         {
            return 0;
         }
         var _loc1_:Date = new Date();
         var _loc2_:int = _loc1_.getTime() - this.var_2180.getTime();
         return int(Math.max(0,this.var_1681 - Math.floor(_loc2_ / 1000)));
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2182;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2183;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2179 = param1;
      }
      
      public function get lastQuestInCampaign() : Boolean
      {
         return this.var_2181 >= this.var_2178;
      }
      
      public function get receiveTime() : Date
      {
         return this.var_2180;
      }
      
      public function set waitPeriodSeconds(param1:int) : void
      {
         this.var_1681 = param1;
      }
   }
}
