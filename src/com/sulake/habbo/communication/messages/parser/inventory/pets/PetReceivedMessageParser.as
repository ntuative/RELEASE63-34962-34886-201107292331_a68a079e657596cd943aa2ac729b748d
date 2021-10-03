package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1929:Boolean;
      
      private var var_1031:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1929 = param1.readBoolean();
         this.var_1031 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1929 + ", " + this.var_1031.id + ", " + this.var_1031.name + ", " + this.var_1031.type + ", " + this.var_1031.breed + ", " + this.pet.color);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1929;
      }
      
      public function get pet() : PetData
      {
         return this.var_1031;
      }
   }
}
