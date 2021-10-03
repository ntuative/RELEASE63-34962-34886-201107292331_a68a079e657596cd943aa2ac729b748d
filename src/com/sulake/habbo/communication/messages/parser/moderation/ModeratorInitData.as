package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitData implements IDisposable
   {
       
      
      private var var_1707:Array;
      
      private var var_1706:Array;
      
      private var _issues:Array;
      
      private var var_1412:Array;
      
      private var var_3040:Boolean;
      
      private var var_3042:Boolean;
      
      private var var_3043:Boolean;
      
      private var var_3038:Boolean;
      
      private var var_3037:Boolean;
      
      private var var_3039:Boolean;
      
      private var var_3041:Boolean;
      
      private var _disposed:Boolean;
      
      public function ModeratorInitData(param1:IMessageDataWrapper)
      {
         super();
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         this._issues = [];
         this.var_1707 = [];
         this.var_1706 = [];
         this.var_1412 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(_loc2_.parse(param1))
            {
               this._issues.push(_loc2_.issueData);
            }
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1707.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1412.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         this.var_3040 = param1.readBoolean();
         this.var_3042 = param1.readBoolean();
         this.var_3043 = param1.readBoolean();
         this.var_3038 = param1.readBoolean();
         this.var_3037 = param1.readBoolean();
         this.var_3039 = param1.readBoolean();
         this.var_3041 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_1706.push(param1.readString());
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1707 = null;
         this.var_1706 = null;
         this._issues = null;
         for each(_loc1_ in this.var_1412)
         {
            _loc1_.dispose();
         }
         this.var_1412 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get messageTemplates() : Array
      {
         return this.var_1707;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return this.var_1706;
      }
      
      public function get issues() : Array
      {
         return this._issues;
      }
      
      public function get offenceCategories() : Array
      {
         return this.var_1412;
      }
      
      public function get cfhPermission() : Boolean
      {
         return this.var_3040;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return this.var_3042;
      }
      
      public function get alertPermission() : Boolean
      {
         return this.var_3043;
      }
      
      public function get kickPermission() : Boolean
      {
         return this.var_3038;
      }
      
      public function get banPermission() : Boolean
      {
         return this.var_3037;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return this.var_3039;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return this.var_3041;
      }
   }
}
