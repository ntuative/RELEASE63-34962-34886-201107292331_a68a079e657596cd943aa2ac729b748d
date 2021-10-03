package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1200:int = 1;
      
      public static const const_903:int = 2;
      
      public static const const_876:int = 3;
      
      public static const const_2005:int = 4;
       
      
      private var _index:int;
      
      private var var_2328:String;
      
      private var var_2329:String;
      
      private var var_2326:Boolean;
      
      private var var_2331:String;
      
      private var var_970:String;
      
      private var var_2325:int;
      
      private var var_2327:int;
      
      private var _type:int;
      
      private var var_2330:String;
      
      private var var_959:GuestRoomData;
      
      private var var_958:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2328 = param1.readString();
         this.var_2329 = param1.readString();
         this.var_2326 = param1.readInteger() == 1;
         this.var_2331 = param1.readString();
         this.var_970 = param1.readString();
         this.var_2325 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1200)
         {
            this.var_2330 = param1.readString();
         }
         else if(this._type == const_876)
         {
            this.var_958 = new PublicRoomData(param1);
         }
         else if(this._type == const_903)
         {
            this.var_959 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_959 != null)
         {
            this.var_959.dispose();
            this.var_959 = null;
         }
         if(this.var_958 != null)
         {
            this.var_958.dispose();
            this.var_958 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2328;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2329;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2326;
      }
      
      public function get picText() : String
      {
         return this.var_2331;
      }
      
      public function get picRef() : String
      {
         return this.var_970;
      }
      
      public function get folderId() : int
      {
         return this.var_2325;
      }
      
      public function get tag() : String
      {
         return this.var_2330;
      }
      
      public function get userCount() : int
      {
         return this.var_2327;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_959;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_958;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1200)
         {
            return 0;
         }
         if(this.type == const_903)
         {
            return this.var_959.maxUserCount;
         }
         if(this.type == const_876)
         {
            return this.var_958.maxUsers;
         }
         return 0;
      }
   }
}
