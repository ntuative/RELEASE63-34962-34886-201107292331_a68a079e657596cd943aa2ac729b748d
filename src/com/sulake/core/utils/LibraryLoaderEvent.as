package com.sulake.core.utils
{
   import flash.events.Event;
   
   public class LibraryLoaderEvent extends Event
   {
      
      public static const LIBRARY_LOADER_EVENT_COMPLETE:String = "LIBRARY_LOADER_EVENT_COMPLETE";
      
      public static const LIBRARY_LOADER_EVENT_PROGRESS:String = "LIBRARY_LOADER_EVENT_PROGRESS";
      
      public static const LIBRARY_LOADER_EVENT_UNLOAD:String = "LIBRARY_LOADER_EVENT_UNLOAD";
      
      public static const LIBRARY_LOADER_EVENT_STATUS:String = "LIBRARY_LOADER_EVENT_STATUS";
      
      public static const LIBRARY_LOADER_EVENT_ERROR:String = "LIBRARY_LOADER_EVENT_ERROR";
      
      public static const LIBRARY_LOADER_EVENT_DEBUG:String = "LIBRARY_LOADER_EVENT_DEBUG";
      
      public static const LIBRARY_LOADER_EVENT_DISPOSE:String = "LIBRARY_LOADER_EVENT_DISPOSE";
       
      
      private var var_439:int;
      
      private var var_2177:uint;
      
      private var var_2176:uint;
      
      private var var_2727:uint;
      
      public function LibraryLoaderEvent(param1:String, param2:int, param3:uint, param4:uint, param5:uint)
      {
         this.var_439 = param2;
         this.var_2177 = param3;
         this.var_2176 = param4;
         this.var_2727 = param5;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return this.var_439;
      }
      
      public function get bytesTotal() : uint
      {
         return this.var_2177;
      }
      
      public function get bytesLoaded() : uint
      {
         return this.var_2176;
      }
      
      public function get elapsedTime() : uint
      {
         return this.var_2727;
      }
      
      override public function clone() : Event
      {
         return new LibraryLoaderEvent(type,this.var_439,this.var_2177,this.var_2176,this.elapsedTime);
      }
   }
}
