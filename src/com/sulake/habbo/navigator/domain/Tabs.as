package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_380:int = 1;
      
      public static const const_215:int = 2;
      
      public static const const_266:int = 3;
      
      public static const const_374:int = 4;
      
      public static const const_282:int = 5;
      
      public static const const_425:int = 1;
      
      public static const const_858:int = 2;
      
      public static const const_764:int = 3;
      
      public static const const_998:int = 4;
      
      public static const const_311:int = 5;
      
      public static const const_919:int = 6;
      
      public static const const_760:int = 7;
      
      public static const const_415:int = 8;
      
      public static const const_555:int = 9;
      
      public static const const_2325:int = 10;
      
      public static const const_959:int = 11;
      
      public static const const_518:int = 12;
       
      
      private var var_506:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_506 = new Array();
         this.var_506.push(new Tab(this._navigator,const_380,const_518,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_635));
         this.var_506.push(new Tab(this._navigator,const_215,const_425,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_635));
         this.var_506.push(new Tab(this._navigator,const_374,const_959,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1352));
         this.var_506.push(new Tab(this._navigator,const_266,const_311,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_635));
         this.var_506.push(new Tab(this._navigator,const_282,const_415,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1284));
         this.setSelectedTab(const_380);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_374;
      }
      
      public function get tabs() : Array
      {
         return this.var_506;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_506)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_506)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_506)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
