package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_1777:int;
      
      private var _currentPosition:int;
      
      private var var_1775:int;
      
      private var var_1774:int;
      
      private var var_1776:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_1777;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_1775;
      }
      
      public function get nextPosition() : int
      {
         return this.var_1774;
      }
      
      public function get syncCount() : int
      {
         return this.var_1776;
      }
      
      public function flush() : Boolean
      {
         this.var_1777 = -1;
         this._currentPosition = -1;
         this.var_1775 = -1;
         this.var_1774 = -1;
         this.var_1776 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1777 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_1775 = param1.readInteger();
         this.var_1774 = param1.readInteger();
         this.var_1776 = param1.readInteger();
         return true;
      }
   }
}
