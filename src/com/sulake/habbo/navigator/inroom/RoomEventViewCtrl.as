package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CancelEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.EditEventMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.TextFieldManager;
   
   public class RoomEventViewCtrl
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var _eventNameInput:TextFieldManager;
      
      private var var_898:TextFieldManager;
      
      private var var_1110:TextFieldManager;
      
      private var var_1111:TextFieldManager;
      
      private var _active:Boolean;
      
      private var var_2128:IWindowContainer;
      
      private var var_2920:ITextWindow;
      
      private var var_2130:ITextWindow;
      
      private var var_2129:ITextWindow;
      
      private var var_1650:IButtonWindow;
      
      private var var_1652:IButtonWindow;
      
      private var var_2921:IButtonWindow;
      
      private var var_1651:IButtonWindow;
      
      private var var_1109:IDropMenuWindow;
      
      public function RoomEventViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
      }
      
      public function set active(param1:Boolean) : void
      {
         this._active = param1;
      }
      
      public function get active() : Boolean
      {
         return this._active;
      }
      
      public function refresh(param1:IWindowContainer) : void
      {
         if(!this._active)
         {
            return;
         }
         this.prepareWindow(param1);
         this.clearErrors();
         var _loc2_:RoomEventData = this._navigator.data.roomEventData;
         if(_loc2_ == null)
         {
            this.createEvent();
         }
         else
         {
            this.editEvent(_loc2_);
         }
         this._window.visible = true;
      }
      
      private function editEvent(param1:RoomEventData) : void
      {
         this.var_1109.visible = false;
         this.var_2128.visible = true;
         this.var_2920.text = this._navigator.getText("roomevent_type_" + param1.eventType);
         this._eventNameInput.setText(param1.eventName);
         this.var_898.setText(param1.eventDescription);
         this.var_1110.setText(this.getTagFromEvent(param1,1));
         this.var_1111.setText(this.getTagFromEvent(param1,2));
         this.var_1650.visible = false;
         this.var_1652.visible = true;
         this.var_1651.visible = true;
         this.var_2130.visible = false;
         this.var_2129.visible = true;
      }
      
      private function createEvent() : void
      {
         this.var_1109.visible = true;
         this.var_2128.visible = false;
         this.var_1650.visible = true;
         this.var_1652.visible = false;
         this.var_1651.visible = false;
         this.var_898.goBackToInitialState();
         this._eventNameInput.goBackToInitialState();
         this.var_1110.goBackToInitialState();
         this.var_1111.goBackToInitialState();
         this.var_1109.selection = 0;
         this.var_2130.visible = true;
         this.var_2129.visible = false;
      }
      
      private function getInput(param1:String) : ITextFieldWindow
      {
         return ITextFieldWindow(this._window.findChildByName(param1));
      }
      
      private function getEventType() : int
      {
         var _loc1_:int = this.var_1109.selection;
         return _loc1_ + 1;
      }
      
      private function onCreateButtonClick(param1:WindowEvent) : void
      {
         var _loc2_:int = this.getEventType();
         var _loc3_:String = this._eventNameInput.getText();
         var _loc4_:String = this.var_898.getText();
         var _loc5_:Array = new Array();
         this.addTag(_loc5_,this.var_1110.getText());
         this.addTag(_loc5_,this.var_1111.getText());
         if(!this.isMandatoryFieldsFilled())
         {
            return;
         }
         this._navigator.send(new CreateEventMessageComposer(_loc2_,_loc3_,_loc4_,_loc5_));
         this.endEdit();
      }
      
      private function onEditButtonClick(param1:WindowEvent) : void
      {
         var _loc2_:int = this._navigator.data.roomEventData.eventType;
         var _loc3_:String = this._eventNameInput.getText();
         var _loc4_:String = this.var_898.getText();
         var _loc5_:Array = new Array();
         this.addTag(_loc5_,this.var_1110.getText());
         this.addTag(_loc5_,this.var_1111.getText());
         if(!this.isMandatoryFieldsFilled())
         {
            return;
         }
         this._navigator.send(new EditEventMessageComposer(_loc2_,_loc3_,_loc4_,_loc5_));
         this.endEdit();
      }
      
      private function onEndButtonClick(param1:WindowEvent) : void
      {
         this._navigator.send(new CancelEventMessageComposer());
         this.endEdit();
      }
      
      private function onCancelButtonClick(param1:WindowEvent) : void
      {
         this.endEdit();
      }
      
      private function isMandatoryFieldsFilled() : Boolean
      {
         this.clearErrors();
         if(!this._eventNameInput.checkMandatory(this._navigator.getText("navigator.eventsettings.nameerr")))
         {
            return false;
         }
         if(!this.var_898.checkMandatory(this._navigator.getText("navigator.eventsettings.descerr")))
         {
            return false;
         }
         return true;
      }
      
      private function clearErrors() : void
      {
         this._eventNameInput.clearErrors();
         this.var_898.clearErrors();
         this.var_1110.clearErrors();
         this.var_1111.clearErrors();
      }
      
      private function prepareWindow(param1:IWindowContainer) : void
      {
         if(this._window == null)
         {
            this._window = IWindowContainer(this._navigator.getXmlWindow("iro_event_settings"));
            this.var_2128 = IWindowContainer(this.find("event_type_disabled_cont"));
            this.var_2920 = ITextWindow(this.find("event_type_disabled_text"));
            this.var_2130 = ITextWindow(this.find("create_caption"));
            this.var_2129 = ITextWindow(this.find("edit_caption"));
            this.var_1650 = IButtonWindow(this.find("create_button"));
            this.var_1652 = IButtonWindow(this.find("edit_button"));
            this.var_2921 = IButtonWindow(this.find("cancel_button"));
            this.var_1651 = IButtonWindow(this.find("end_button"));
            this.var_1109 = IDropMenuWindow(this.find("event_type"));
            this.prepareEventTypes();
            this.addMouseClickListener(this.var_1650,this.onCreateButtonClick);
            this.addMouseClickListener(this.var_1652,this.onEditButtonClick);
            this.addMouseClickListener(this.var_1651,this.onEndButtonClick);
            this.addMouseClickListener(this.var_2921,this.onCancelButtonClick);
            this._eventNameInput = new TextFieldManager(this._navigator,this.getInput("event_name"),25);
            this.var_898 = new TextFieldManager(this._navigator,this.getInput("event_desc"),100);
            this.var_1110 = new TextFieldManager(this._navigator,this.getInput("event_tag_1"),25);
            this.var_1111 = new TextFieldManager(this._navigator,this.getInput("event_tag_2"),25);
            param1.addChild(this._window);
         }
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function prepareEventTypes() : void
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc3_:int = 1;
         while(_loc3_ < 100)
         {
            _loc4_ = "roomevent_type_" + _loc3_;
            _loc5_ = this._navigator.getText(_loc4_);
            if(_loc5_ == null || _loc5_ == _loc4_)
            {
               break;
            }
            _loc1_.push(_loc5_);
            _loc3_++;
         }
         this.var_1109.populate(_loc1_);
      }
      
      private function endEdit() : void
      {
         this._active = false;
         this._navigator.roomInfoViewCtrl.reload();
      }
      
      private function getTagFromEvent(param1:RoomEventData, param2:int) : String
      {
         var _loc3_:String = param1.tags[param2 - 1];
         return _loc3_ == null ? "" : _loc3_;
      }
      
      private function addTag(param1:Array, param2:String) : void
      {
         if(param2 != "")
         {
            param1.push(param2);
         }
      }
   }
}
