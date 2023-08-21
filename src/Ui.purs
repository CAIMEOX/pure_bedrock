module Minecraft.Server.Ui where
import Minecraft.Server
import Data.Nullable
import Data.Maybe (Maybe)
import Untagged.Union (type (|+|))
import Control.Promise (Promise)
data FormCancelationReason = FormCancelationReason String
data FormRejectReason = FormRejectReason String
data ActionFormData = ActionFormData

type ActionFormResponse = {
  selection :: Nullable (Int),
  cancelationReason :: Nullable (FormCancelationReason),
  canceled :: Boolean
}

type FormResponse = {
  cancelationReason :: Nullable (FormCancelationReason),
  canceled :: Boolean
}

data MessageFormData = MessageFormData

type MessageFormResponse = {
  selection :: Nullable (Int),
  cancelationReason :: Nullable (FormCancelationReason),
  canceled :: Boolean
}

data ModalFormData = ModalFormData

type ModalFormResponse = {
  formValues :: Nullable (Array ((Boolean |+| Number |+| String))),
  cancelationReason :: Nullable (FormCancelationReason),
  canceled :: Boolean
}

foreign import body_ActionFormData :: ActionFormData -> (RawMessage |+| String) -> ActionFormData
foreign import _prim_button :: ActionFormData -> (RawMessage |+| String) -> Nullable (String) -> ActionFormData
button :: ActionFormData -> (RawMessage |+| String) -> Maybe (String) -> ActionFormData
button a b c =  (_prim_button a b (toNullable c))
foreign import mk_ActionFormData :: ActionFormData
foreign import show_ActionFormData :: ActionFormData -> Player -> Promise (ActionFormResponse)
foreign import title_ActionFormData :: ActionFormData -> (RawMessage |+| String) -> ActionFormData
foreign import body_MessageFormData :: MessageFormData -> (RawMessage |+| String) -> MessageFormData
foreign import button1 :: MessageFormData -> (RawMessage |+| String) -> MessageFormData
foreign import button2 :: MessageFormData -> (RawMessage |+| String) -> MessageFormData
foreign import mk_MessageFormData :: MessageFormData
foreign import show_MessageFormData :: MessageFormData -> Player -> Promise (MessageFormResponse)
foreign import title_MessageFormData :: MessageFormData -> (RawMessage |+| String) -> MessageFormData
foreign import mk_ModalFormData :: ModalFormData
foreign import _prim_dropdown :: ModalFormData -> (RawMessage |+| String) -> Array ((RawMessage |+| String)) -> Nullable (Int) -> ModalFormData
dropdown :: ModalFormData -> (RawMessage |+| String) -> Array ((RawMessage |+| String)) -> Maybe (Int) -> ModalFormData
dropdown a b c d =  (_prim_dropdown a b c (toNullable d))
foreign import show_ModalFormData :: ModalFormData -> Player -> Promise (ModalFormResponse)
foreign import _prim_slider :: ModalFormData -> (RawMessage |+| String) -> Number -> Number -> Number -> Nullable (Number) -> ModalFormData
slider :: ModalFormData -> (RawMessage |+| String) -> Number -> Number -> Number -> Maybe (Number) -> ModalFormData
slider a b c d e f =  (_prim_slider a b c d e (toNullable f))
foreign import _prim_textField :: ModalFormData -> (RawMessage |+| String) -> (RawMessage |+| String) -> Nullable (String) -> ModalFormData
textField :: ModalFormData -> (RawMessage |+| String) -> (RawMessage |+| String) -> Maybe (String) -> ModalFormData
textField a b c d =  (_prim_textField a b c (toNullable d))
foreign import title_ModalFormData :: ModalFormData -> (RawMessage |+| String) -> ModalFormData
foreign import _prim_toggle :: ModalFormData -> (RawMessage |+| String) -> Nullable (Boolean) -> ModalFormData
toggle :: ModalFormData -> (RawMessage |+| String) -> Maybe (Boolean) -> ModalFormData
toggle a b c =  (_prim_toggle a b (toNullable c))