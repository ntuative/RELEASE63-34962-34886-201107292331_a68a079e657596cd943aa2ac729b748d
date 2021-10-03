package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var var_51:HabboQuestEngine;
      
      private var var_567:QuestsList;
      
      private var var_476:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_399:QuestTracker;
      
      private var var_683:NextQuestTimer;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this.var_51 = param1;
         this.var_399 = new QuestTracker(this.var_51);
         this.var_567 = new QuestsList(this.var_51);
         this.var_476 = new QuestDetails(this.var_51);
         this._questCompleted = new QuestCompleted(this.var_51);
         this.var_683 = new NextQuestTimer(this.var_51);
      }
      
      public function onToolbarClick() : void
      {
         this.var_567.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_567.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_399.onQuest(param1);
         this.var_476.onQuest(param1);
         this._questCompleted.onQuest(param1);
         this.var_683.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_399.onQuestCompleted(param1);
         this.var_476.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_399.onQuestCancelled();
         this.var_476.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
         this.var_683.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_399.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_567.onRoomExit();
         this.var_399.onRoomExit();
         this.var_476.onRoomExit();
         this.var_683.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_399.update(param1);
         this.var_683.update(param1);
         this.var_567.update(param1);
         this.var_476.update(param1);
      }
      
      public function dispose() : void
      {
         this.var_51 = null;
         if(this.var_567)
         {
            this.var_567.dispose();
            this.var_567 = null;
         }
         if(this.var_399)
         {
            this.var_399.dispose();
            this.var_399 = null;
         }
         if(this.var_476)
         {
            this.var_476.dispose();
            this.var_476 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_683)
         {
            this.var_683.dispose();
            this.var_683 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this.var_51 == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_567;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_476;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_399;
      }
   }
}
