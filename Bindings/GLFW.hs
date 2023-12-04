{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

--------------------------------------------------------------------------------






--------------------------------------------------------------------------------

module Bindings.GLFW where

import Prelude (Eq, IO, Num, Show)
import Prelude (($), return, error, (++), undefined, div, take)

import Data.Data             (Data)
import Data.Int              (Int32)
import Data.Word             (Word32, Word64)
import Data.Typeable         (Typeable)
import Foreign.C.Types       (CChar, CUChar, CUShort)
import Foreign.C.Types       (CDouble(..), CFloat(..), CInt(..), CUInt(..))
import Foreign.C.String      (CString)
import Foreign.Marshal.Array (peekArray,pokeArray)
import Foreign.Ptr           (FunPtr, nullFunPtr, Ptr, plusPtr)
import Foreign.Storable      (Storable(..))
--------------------------------------------------------------------------------

c'GLFW_VERSION_MAJOR = 3
c'GLFW_VERSION_MAJOR :: (Num a) => a

c'GLFW_VERSION_MINOR = 3
c'GLFW_VERSION_MINOR :: (Num a) => a

c'GLFW_VERSION_REVISION = 2
c'GLFW_VERSION_REVISION :: (Num a) => a


c'GLFW_RELEASE = 0
c'GLFW_RELEASE :: (Num a) => a

c'GLFW_PRESS = 1
c'GLFW_PRESS :: (Num a) => a

c'GLFW_REPEAT = 2
c'GLFW_REPEAT :: (Num a) => a


c'GLFW_KEY_UNKNOWN = -1
c'GLFW_KEY_UNKNOWN :: (Num a) => a


c'GLFW_KEY_SPACE = 32
c'GLFW_KEY_SPACE :: (Num a) => a

c'GLFW_KEY_APOSTROPHE = 39
c'GLFW_KEY_APOSTROPHE :: (Num a) => a

c'GLFW_KEY_COMMA = 44
c'GLFW_KEY_COMMA :: (Num a) => a

c'GLFW_KEY_MINUS = 45
c'GLFW_KEY_MINUS :: (Num a) => a

c'GLFW_KEY_PERIOD = 46
c'GLFW_KEY_PERIOD :: (Num a) => a

c'GLFW_KEY_SLASH = 47
c'GLFW_KEY_SLASH :: (Num a) => a

c'GLFW_KEY_0 = 48
c'GLFW_KEY_0 :: (Num a) => a

c'GLFW_KEY_1 = 49
c'GLFW_KEY_1 :: (Num a) => a

c'GLFW_KEY_2 = 50
c'GLFW_KEY_2 :: (Num a) => a

c'GLFW_KEY_3 = 51
c'GLFW_KEY_3 :: (Num a) => a

c'GLFW_KEY_4 = 52
c'GLFW_KEY_4 :: (Num a) => a

c'GLFW_KEY_5 = 53
c'GLFW_KEY_5 :: (Num a) => a

c'GLFW_KEY_6 = 54
c'GLFW_KEY_6 :: (Num a) => a

c'GLFW_KEY_7 = 55
c'GLFW_KEY_7 :: (Num a) => a

c'GLFW_KEY_8 = 56
c'GLFW_KEY_8 :: (Num a) => a

c'GLFW_KEY_9 = 57
c'GLFW_KEY_9 :: (Num a) => a

c'GLFW_KEY_SEMICOLON = 59
c'GLFW_KEY_SEMICOLON :: (Num a) => a

c'GLFW_KEY_EQUAL = 61
c'GLFW_KEY_EQUAL :: (Num a) => a

c'GLFW_KEY_A = 65
c'GLFW_KEY_A :: (Num a) => a

c'GLFW_KEY_B = 66
c'GLFW_KEY_B :: (Num a) => a

c'GLFW_KEY_C = 67
c'GLFW_KEY_C :: (Num a) => a

c'GLFW_KEY_D = 68
c'GLFW_KEY_D :: (Num a) => a

c'GLFW_KEY_E = 69
c'GLFW_KEY_E :: (Num a) => a

c'GLFW_KEY_F = 70
c'GLFW_KEY_F :: (Num a) => a

c'GLFW_KEY_G = 71
c'GLFW_KEY_G :: (Num a) => a

c'GLFW_KEY_H = 72
c'GLFW_KEY_H :: (Num a) => a

c'GLFW_KEY_I = 73
c'GLFW_KEY_I :: (Num a) => a

c'GLFW_KEY_J = 74
c'GLFW_KEY_J :: (Num a) => a

c'GLFW_KEY_K = 75
c'GLFW_KEY_K :: (Num a) => a

c'GLFW_KEY_L = 76
c'GLFW_KEY_L :: (Num a) => a

c'GLFW_KEY_M = 77
c'GLFW_KEY_M :: (Num a) => a

c'GLFW_KEY_N = 78
c'GLFW_KEY_N :: (Num a) => a

c'GLFW_KEY_O = 79
c'GLFW_KEY_O :: (Num a) => a

c'GLFW_KEY_P = 80
c'GLFW_KEY_P :: (Num a) => a

c'GLFW_KEY_Q = 81
c'GLFW_KEY_Q :: (Num a) => a

c'GLFW_KEY_R = 82
c'GLFW_KEY_R :: (Num a) => a

c'GLFW_KEY_S = 83
c'GLFW_KEY_S :: (Num a) => a

c'GLFW_KEY_T = 84
c'GLFW_KEY_T :: (Num a) => a

c'GLFW_KEY_U = 85
c'GLFW_KEY_U :: (Num a) => a

c'GLFW_KEY_V = 86
c'GLFW_KEY_V :: (Num a) => a

c'GLFW_KEY_W = 87
c'GLFW_KEY_W :: (Num a) => a

c'GLFW_KEY_X = 88
c'GLFW_KEY_X :: (Num a) => a

c'GLFW_KEY_Y = 89
c'GLFW_KEY_Y :: (Num a) => a

c'GLFW_KEY_Z = 90
c'GLFW_KEY_Z :: (Num a) => a

c'GLFW_KEY_LEFT_BRACKET = 91
c'GLFW_KEY_LEFT_BRACKET :: (Num a) => a

c'GLFW_KEY_BACKSLASH = 92
c'GLFW_KEY_BACKSLASH :: (Num a) => a

c'GLFW_KEY_RIGHT_BRACKET = 93
c'GLFW_KEY_RIGHT_BRACKET :: (Num a) => a

c'GLFW_KEY_GRAVE_ACCENT = 96
c'GLFW_KEY_GRAVE_ACCENT :: (Num a) => a

c'GLFW_KEY_WORLD_1 = 161
c'GLFW_KEY_WORLD_1 :: (Num a) => a

c'GLFW_KEY_WORLD_2 = 162
c'GLFW_KEY_WORLD_2 :: (Num a) => a


c'GLFW_KEY_ESCAPE = 256
c'GLFW_KEY_ESCAPE :: (Num a) => a

c'GLFW_KEY_ENTER = 257
c'GLFW_KEY_ENTER :: (Num a) => a

c'GLFW_KEY_TAB = 258
c'GLFW_KEY_TAB :: (Num a) => a

c'GLFW_KEY_BACKSPACE = 259
c'GLFW_KEY_BACKSPACE :: (Num a) => a

c'GLFW_KEY_INSERT = 260
c'GLFW_KEY_INSERT :: (Num a) => a

c'GLFW_KEY_DELETE = 261
c'GLFW_KEY_DELETE :: (Num a) => a

c'GLFW_KEY_RIGHT = 262
c'GLFW_KEY_RIGHT :: (Num a) => a

c'GLFW_KEY_LEFT = 263
c'GLFW_KEY_LEFT :: (Num a) => a

c'GLFW_KEY_DOWN = 264
c'GLFW_KEY_DOWN :: (Num a) => a

c'GLFW_KEY_UP = 265
c'GLFW_KEY_UP :: (Num a) => a

c'GLFW_KEY_PAGE_UP = 266
c'GLFW_KEY_PAGE_UP :: (Num a) => a

c'GLFW_KEY_PAGE_DOWN = 267
c'GLFW_KEY_PAGE_DOWN :: (Num a) => a

c'GLFW_KEY_HOME = 268
c'GLFW_KEY_HOME :: (Num a) => a

c'GLFW_KEY_END = 269
c'GLFW_KEY_END :: (Num a) => a

c'GLFW_KEY_CAPS_LOCK = 280
c'GLFW_KEY_CAPS_LOCK :: (Num a) => a

c'GLFW_KEY_SCROLL_LOCK = 281
c'GLFW_KEY_SCROLL_LOCK :: (Num a) => a

c'GLFW_KEY_NUM_LOCK = 282
c'GLFW_KEY_NUM_LOCK :: (Num a) => a

c'GLFW_KEY_PRINT_SCREEN = 283
c'GLFW_KEY_PRINT_SCREEN :: (Num a) => a

c'GLFW_KEY_PAUSE = 284
c'GLFW_KEY_PAUSE :: (Num a) => a

c'GLFW_KEY_F1 = 290
c'GLFW_KEY_F1 :: (Num a) => a

c'GLFW_KEY_F2 = 291
c'GLFW_KEY_F2 :: (Num a) => a

c'GLFW_KEY_F3 = 292
c'GLFW_KEY_F3 :: (Num a) => a

c'GLFW_KEY_F4 = 293
c'GLFW_KEY_F4 :: (Num a) => a

c'GLFW_KEY_F5 = 294
c'GLFW_KEY_F5 :: (Num a) => a

c'GLFW_KEY_F6 = 295
c'GLFW_KEY_F6 :: (Num a) => a

c'GLFW_KEY_F7 = 296
c'GLFW_KEY_F7 :: (Num a) => a

c'GLFW_KEY_F8 = 297
c'GLFW_KEY_F8 :: (Num a) => a

c'GLFW_KEY_F9 = 298
c'GLFW_KEY_F9 :: (Num a) => a

c'GLFW_KEY_F10 = 299
c'GLFW_KEY_F10 :: (Num a) => a

c'GLFW_KEY_F11 = 300
c'GLFW_KEY_F11 :: (Num a) => a

c'GLFW_KEY_F12 = 301
c'GLFW_KEY_F12 :: (Num a) => a

c'GLFW_KEY_F13 = 302
c'GLFW_KEY_F13 :: (Num a) => a

c'GLFW_KEY_F14 = 303
c'GLFW_KEY_F14 :: (Num a) => a

c'GLFW_KEY_F15 = 304
c'GLFW_KEY_F15 :: (Num a) => a

c'GLFW_KEY_F16 = 305
c'GLFW_KEY_F16 :: (Num a) => a

c'GLFW_KEY_F17 = 306
c'GLFW_KEY_F17 :: (Num a) => a

c'GLFW_KEY_F18 = 307
c'GLFW_KEY_F18 :: (Num a) => a

c'GLFW_KEY_F19 = 308
c'GLFW_KEY_F19 :: (Num a) => a

c'GLFW_KEY_F20 = 309
c'GLFW_KEY_F20 :: (Num a) => a

c'GLFW_KEY_F21 = 310
c'GLFW_KEY_F21 :: (Num a) => a

c'GLFW_KEY_F22 = 311
c'GLFW_KEY_F22 :: (Num a) => a

c'GLFW_KEY_F23 = 312
c'GLFW_KEY_F23 :: (Num a) => a

c'GLFW_KEY_F24 = 313
c'GLFW_KEY_F24 :: (Num a) => a

c'GLFW_KEY_F25 = 314
c'GLFW_KEY_F25 :: (Num a) => a

c'GLFW_KEY_KP_0 = 320
c'GLFW_KEY_KP_0 :: (Num a) => a

c'GLFW_KEY_KP_1 = 321
c'GLFW_KEY_KP_1 :: (Num a) => a

c'GLFW_KEY_KP_2 = 322
c'GLFW_KEY_KP_2 :: (Num a) => a

c'GLFW_KEY_KP_3 = 323
c'GLFW_KEY_KP_3 :: (Num a) => a

c'GLFW_KEY_KP_4 = 324
c'GLFW_KEY_KP_4 :: (Num a) => a

c'GLFW_KEY_KP_5 = 325
c'GLFW_KEY_KP_5 :: (Num a) => a

c'GLFW_KEY_KP_6 = 326
c'GLFW_KEY_KP_6 :: (Num a) => a

c'GLFW_KEY_KP_7 = 327
c'GLFW_KEY_KP_7 :: (Num a) => a

c'GLFW_KEY_KP_8 = 328
c'GLFW_KEY_KP_8 :: (Num a) => a

c'GLFW_KEY_KP_9 = 329
c'GLFW_KEY_KP_9 :: (Num a) => a

c'GLFW_KEY_KP_DECIMAL = 330
c'GLFW_KEY_KP_DECIMAL :: (Num a) => a

c'GLFW_KEY_KP_DIVIDE = 331
c'GLFW_KEY_KP_DIVIDE :: (Num a) => a

c'GLFW_KEY_KP_MULTIPLY = 332
c'GLFW_KEY_KP_MULTIPLY :: (Num a) => a

c'GLFW_KEY_KP_SUBTRACT = 333
c'GLFW_KEY_KP_SUBTRACT :: (Num a) => a

c'GLFW_KEY_KP_ADD = 334
c'GLFW_KEY_KP_ADD :: (Num a) => a

c'GLFW_KEY_KP_ENTER = 335
c'GLFW_KEY_KP_ENTER :: (Num a) => a

c'GLFW_KEY_KP_EQUAL = 336
c'GLFW_KEY_KP_EQUAL :: (Num a) => a

c'GLFW_KEY_LEFT_SHIFT = 340
c'GLFW_KEY_LEFT_SHIFT :: (Num a) => a

c'GLFW_KEY_LEFT_CONTROL = 341
c'GLFW_KEY_LEFT_CONTROL :: (Num a) => a

c'GLFW_KEY_LEFT_ALT = 342
c'GLFW_KEY_LEFT_ALT :: (Num a) => a

c'GLFW_KEY_LEFT_SUPER = 343
c'GLFW_KEY_LEFT_SUPER :: (Num a) => a

c'GLFW_KEY_RIGHT_SHIFT = 344
c'GLFW_KEY_RIGHT_SHIFT :: (Num a) => a

c'GLFW_KEY_RIGHT_CONTROL = 345
c'GLFW_KEY_RIGHT_CONTROL :: (Num a) => a

c'GLFW_KEY_RIGHT_ALT = 346
c'GLFW_KEY_RIGHT_ALT :: (Num a) => a

c'GLFW_KEY_RIGHT_SUPER = 347
c'GLFW_KEY_RIGHT_SUPER :: (Num a) => a

c'GLFW_KEY_MENU = 348
c'GLFW_KEY_MENU :: (Num a) => a

c'GLFW_KEY_LAST = 348
c'GLFW_KEY_LAST :: (Num a) => a


c'GLFW_MOD_SHIFT = 1
c'GLFW_MOD_SHIFT :: (Num a) => a

c'GLFW_MOD_CONTROL = 2
c'GLFW_MOD_CONTROL :: (Num a) => a

c'GLFW_MOD_ALT = 4
c'GLFW_MOD_ALT :: (Num a) => a

c'GLFW_MOD_SUPER = 8
c'GLFW_MOD_SUPER :: (Num a) => a


c'GLFW_MOUSE_BUTTON_1 = 0
c'GLFW_MOUSE_BUTTON_1 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_2 = 1
c'GLFW_MOUSE_BUTTON_2 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_3 = 2
c'GLFW_MOUSE_BUTTON_3 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_4 = 3
c'GLFW_MOUSE_BUTTON_4 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_5 = 4
c'GLFW_MOUSE_BUTTON_5 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_6 = 5
c'GLFW_MOUSE_BUTTON_6 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_7 = 6
c'GLFW_MOUSE_BUTTON_7 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_8 = 7
c'GLFW_MOUSE_BUTTON_8 :: (Num a) => a

c'GLFW_MOUSE_BUTTON_LAST = 7
c'GLFW_MOUSE_BUTTON_LAST :: (Num a) => a

c'GLFW_MOUSE_BUTTON_LEFT = 0
c'GLFW_MOUSE_BUTTON_LEFT :: (Num a) => a

c'GLFW_MOUSE_BUTTON_RIGHT = 1
c'GLFW_MOUSE_BUTTON_RIGHT :: (Num a) => a

c'GLFW_MOUSE_BUTTON_MIDDLE = 2
c'GLFW_MOUSE_BUTTON_MIDDLE :: (Num a) => a


c'GLFW_JOYSTICK_1 = 0
c'GLFW_JOYSTICK_1 :: (Num a) => a

c'GLFW_JOYSTICK_2 = 1
c'GLFW_JOYSTICK_2 :: (Num a) => a

c'GLFW_JOYSTICK_3 = 2
c'GLFW_JOYSTICK_3 :: (Num a) => a

c'GLFW_JOYSTICK_4 = 3
c'GLFW_JOYSTICK_4 :: (Num a) => a

c'GLFW_JOYSTICK_5 = 4
c'GLFW_JOYSTICK_5 :: (Num a) => a

c'GLFW_JOYSTICK_6 = 5
c'GLFW_JOYSTICK_6 :: (Num a) => a

c'GLFW_JOYSTICK_7 = 6
c'GLFW_JOYSTICK_7 :: (Num a) => a

c'GLFW_JOYSTICK_8 = 7
c'GLFW_JOYSTICK_8 :: (Num a) => a

c'GLFW_JOYSTICK_9 = 8
c'GLFW_JOYSTICK_9 :: (Num a) => a

c'GLFW_JOYSTICK_10 = 9
c'GLFW_JOYSTICK_10 :: (Num a) => a

c'GLFW_JOYSTICK_11 = 10
c'GLFW_JOYSTICK_11 :: (Num a) => a

c'GLFW_JOYSTICK_12 = 11
c'GLFW_JOYSTICK_12 :: (Num a) => a

c'GLFW_JOYSTICK_13 = 12
c'GLFW_JOYSTICK_13 :: (Num a) => a

c'GLFW_JOYSTICK_14 = 13
c'GLFW_JOYSTICK_14 :: (Num a) => a

c'GLFW_JOYSTICK_15 = 14
c'GLFW_JOYSTICK_15 :: (Num a) => a

c'GLFW_JOYSTICK_16 = 15
c'GLFW_JOYSTICK_16 :: (Num a) => a

c'GLFW_JOYSTICK_LAST = 15
c'GLFW_JOYSTICK_LAST :: (Num a) => a


c'GLFW_NOT_INITIALIZED = 65537
c'GLFW_NOT_INITIALIZED :: (Num a) => a

c'GLFW_NO_CURRENT_CONTEXT = 65538
c'GLFW_NO_CURRENT_CONTEXT :: (Num a) => a

c'GLFW_INVALID_ENUM = 65539
c'GLFW_INVALID_ENUM :: (Num a) => a

c'GLFW_INVALID_VALUE = 65540
c'GLFW_INVALID_VALUE :: (Num a) => a

c'GLFW_OUT_OF_MEMORY = 65541
c'GLFW_OUT_OF_MEMORY :: (Num a) => a

c'GLFW_API_UNAVAILABLE = 65542
c'GLFW_API_UNAVAILABLE :: (Num a) => a

c'GLFW_VERSION_UNAVAILABLE = 65543
c'GLFW_VERSION_UNAVAILABLE :: (Num a) => a

c'GLFW_PLATFORM_ERROR = 65544
c'GLFW_PLATFORM_ERROR :: (Num a) => a

c'GLFW_FORMAT_UNAVAILABLE = 65545
c'GLFW_FORMAT_UNAVAILABLE :: (Num a) => a


c'GLFW_FOCUSED = 131073
c'GLFW_FOCUSED :: (Num a) => a

c'GLFW_ICONIFIED = 131074
c'GLFW_ICONIFIED :: (Num a) => a

c'GLFW_RESIZABLE = 131075
c'GLFW_RESIZABLE :: (Num a) => a

c'GLFW_VISIBLE = 131076
c'GLFW_VISIBLE :: (Num a) => a

c'GLFW_DECORATED = 131077
c'GLFW_DECORATED :: (Num a) => a


c'GLFW_RED_BITS = 135169
c'GLFW_RED_BITS :: (Num a) => a

c'GLFW_GREEN_BITS = 135170
c'GLFW_GREEN_BITS :: (Num a) => a

c'GLFW_BLUE_BITS = 135171
c'GLFW_BLUE_BITS :: (Num a) => a

c'GLFW_ALPHA_BITS = 135172
c'GLFW_ALPHA_BITS :: (Num a) => a

c'GLFW_DEPTH_BITS = 135173
c'GLFW_DEPTH_BITS :: (Num a) => a

c'GLFW_STENCIL_BITS = 135174
c'GLFW_STENCIL_BITS :: (Num a) => a

c'GLFW_ACCUM_RED_BITS = 135175
c'GLFW_ACCUM_RED_BITS :: (Num a) => a

c'GLFW_ACCUM_GREEN_BITS = 135176
c'GLFW_ACCUM_GREEN_BITS :: (Num a) => a

c'GLFW_ACCUM_BLUE_BITS = 135177
c'GLFW_ACCUM_BLUE_BITS :: (Num a) => a

c'GLFW_ACCUM_ALPHA_BITS = 135178
c'GLFW_ACCUM_ALPHA_BITS :: (Num a) => a

c'GLFW_AUX_BUFFERS = 135179
c'GLFW_AUX_BUFFERS :: (Num a) => a

c'GLFW_STEREO = 135180
c'GLFW_STEREO :: (Num a) => a

c'GLFW_SAMPLES = 135181
c'GLFW_SAMPLES :: (Num a) => a

c'GLFW_SRGB_CAPABLE = 135182
c'GLFW_SRGB_CAPABLE :: (Num a) => a

c'GLFW_REFRESH_RATE = 135183
c'GLFW_REFRESH_RATE :: (Num a) => a


c'GLFW_CLIENT_API = 139265
c'GLFW_CLIENT_API :: (Num a) => a

c'GLFW_CONTEXT_VERSION_MAJOR = 139266
c'GLFW_CONTEXT_VERSION_MAJOR :: (Num a) => a

c'GLFW_CONTEXT_VERSION_MINOR = 139267
c'GLFW_CONTEXT_VERSION_MINOR :: (Num a) => a

c'GLFW_CONTEXT_REVISION = 139268
c'GLFW_CONTEXT_REVISION :: (Num a) => a

c'GLFW_CONTEXT_ROBUSTNESS = 139269
c'GLFW_CONTEXT_ROBUSTNESS :: (Num a) => a

c'GLFW_OPENGL_FORWARD_COMPAT = 139270
c'GLFW_OPENGL_FORWARD_COMPAT :: (Num a) => a

c'GLFW_OPENGL_DEBUG_CONTEXT = 139271
c'GLFW_OPENGL_DEBUG_CONTEXT :: (Num a) => a

c'GLFW_OPENGL_PROFILE = 139272
c'GLFW_OPENGL_PROFILE :: (Num a) => a


c'GLFW_OPENGL_API = 196609
c'GLFW_OPENGL_API :: (Num a) => a

c'GLFW_OPENGL_ES_API = 196610
c'GLFW_OPENGL_ES_API :: (Num a) => a


c'GLFW_NO_ROBUSTNESS = 0
c'GLFW_NO_ROBUSTNESS :: (Num a) => a

c'GLFW_NO_RESET_NOTIFICATION = 200705
c'GLFW_NO_RESET_NOTIFICATION :: (Num a) => a

c'GLFW_LOSE_CONTEXT_ON_RESET = 200706
c'GLFW_LOSE_CONTEXT_ON_RESET :: (Num a) => a


c'GLFW_OPENGL_ANY_PROFILE = 0
c'GLFW_OPENGL_ANY_PROFILE :: (Num a) => a

c'GLFW_OPENGL_CORE_PROFILE = 204801
c'GLFW_OPENGL_CORE_PROFILE :: (Num a) => a

c'GLFW_OPENGL_COMPAT_PROFILE = 204802
c'GLFW_OPENGL_COMPAT_PROFILE :: (Num a) => a


c'GLFW_CURSOR = 208897
c'GLFW_CURSOR :: (Num a) => a

c'GLFW_STICKY_KEYS = 208898
c'GLFW_STICKY_KEYS :: (Num a) => a

c'GLFW_STICKY_MOUSE_BUTTONS = 208899
c'GLFW_STICKY_MOUSE_BUTTONS :: (Num a) => a


c'GLFW_CURSOR_NORMAL = 212993
c'GLFW_CURSOR_NORMAL :: (Num a) => a

c'GLFW_CURSOR_HIDDEN = 212994
c'GLFW_CURSOR_HIDDEN :: (Num a) => a

c'GLFW_CURSOR_DISABLED = 212995
c'GLFW_CURSOR_DISABLED :: (Num a) => a


c'GLFW_CONNECTED = 262145
c'GLFW_CONNECTED :: (Num a) => a

c'GLFW_DISCONNECTED = 262146
c'GLFW_DISCONNECTED :: (Num a) => a


type C'GLFWglproc = FunPtr (IO ())
foreign import ccall "wrapper" mk'GLFWglproc
  :: (IO ()) -> IO C'GLFWglproc
foreign import ccall "dynamic" mK'GLFWglproc
  :: C'GLFWglproc -> (IO ())


data C'GLFWmonitor = C'GLFWmonitor

deriving instance Typeable C'GLFWmonitor
deriving instance Data     C'GLFWmonitor

data C'GLFWwindow = C'GLFWwindow

deriving instance Typeable C'GLFWwindow
deriving instance Data     C'GLFWwindow

type C'GLFWerrorfun = FunPtr (CInt -> Ptr CChar -> IO ())
foreign import ccall "wrapper" mk'GLFWerrorfun
  :: (CInt -> Ptr CChar -> IO ()) -> IO C'GLFWerrorfun
foreign import ccall "dynamic" mK'GLFWerrorfun
  :: C'GLFWerrorfun -> (CInt -> Ptr CChar -> IO ())

type C'GLFWwindowposfun = FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowposfun
  :: (Ptr C'GLFWwindow -> CInt -> CInt -> IO ()) -> IO C'GLFWwindowposfun
foreign import ccall "dynamic" mK'GLFWwindowposfun
  :: C'GLFWwindowposfun -> (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

type C'GLFWwindowsizefun = FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowsizefun
  :: (Ptr C'GLFWwindow -> CInt -> CInt -> IO ()) -> IO C'GLFWwindowsizefun
foreign import ccall "dynamic" mK'GLFWwindowsizefun
  :: C'GLFWwindowsizefun -> (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

type C'GLFWwindowclosefun = FunPtr (Ptr C'GLFWwindow -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowclosefun
  :: (Ptr C'GLFWwindow -> IO ()) -> IO C'GLFWwindowclosefun
foreign import ccall "dynamic" mK'GLFWwindowclosefun
  :: C'GLFWwindowclosefun -> (Ptr C'GLFWwindow -> IO ())

type C'GLFWwindowrefreshfun = FunPtr (Ptr C'GLFWwindow -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowrefreshfun
  :: (Ptr C'GLFWwindow -> IO ()) -> IO C'GLFWwindowrefreshfun
foreign import ccall "dynamic" mK'GLFWwindowrefreshfun
  :: C'GLFWwindowrefreshfun -> (Ptr C'GLFWwindow -> IO ())

type C'GLFWwindowfocusfun = FunPtr (Ptr C'GLFWwindow -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowfocusfun
  :: (Ptr C'GLFWwindow -> CInt -> IO ()) -> IO C'GLFWwindowfocusfun
foreign import ccall "dynamic" mK'GLFWwindowfocusfun
  :: C'GLFWwindowfocusfun -> (Ptr C'GLFWwindow -> CInt -> IO ())

type C'GLFWwindowiconifyfun = FunPtr (Ptr C'GLFWwindow -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowiconifyfun
  :: (Ptr C'GLFWwindow -> CInt -> IO ()) -> IO C'GLFWwindowiconifyfun
foreign import ccall "dynamic" mK'GLFWwindowiconifyfun
  :: C'GLFWwindowiconifyfun -> (Ptr C'GLFWwindow -> CInt -> IO ())

type C'GLFWframebuffersizefun = FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWframebuffersizefun
  :: (Ptr C'GLFWwindow -> CInt -> CInt -> IO ()) -> IO C'GLFWframebuffersizefun
foreign import ccall "dynamic" mK'GLFWframebuffersizefun
  :: C'GLFWframebuffersizefun -> (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

type C'GLFWmousebuttonfun = FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWmousebuttonfun
  :: (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> IO ()) -> IO C'GLFWmousebuttonfun
foreign import ccall "dynamic" mK'GLFWmousebuttonfun
  :: C'GLFWmousebuttonfun -> (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> IO ())

type C'GLFWcursorposfun = FunPtr (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ())
foreign import ccall "wrapper" mk'GLFWcursorposfun
  :: (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ()) -> IO C'GLFWcursorposfun
foreign import ccall "dynamic" mK'GLFWcursorposfun
  :: C'GLFWcursorposfun -> (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ())

type C'GLFWcursorenterfun = FunPtr (Ptr C'GLFWwindow -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWcursorenterfun
  :: (Ptr C'GLFWwindow -> CInt -> IO ()) -> IO C'GLFWcursorenterfun
foreign import ccall "dynamic" mK'GLFWcursorenterfun
  :: C'GLFWcursorenterfun -> (Ptr C'GLFWwindow -> CInt -> IO ())

type C'GLFWscrollfun = FunPtr (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ())
foreign import ccall "wrapper" mk'GLFWscrollfun
  :: (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ()) -> IO C'GLFWscrollfun
foreign import ccall "dynamic" mK'GLFWscrollfun
  :: C'GLFWscrollfun -> (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ())

type C'GLFWkeyfun = FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWkeyfun
  :: (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> CInt -> IO ()) -> IO C'GLFWkeyfun
foreign import ccall "dynamic" mK'GLFWkeyfun
  :: C'GLFWkeyfun -> (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> CInt -> IO ())

type C'GLFWcharfun = FunPtr (Ptr C'GLFWwindow -> CUInt -> IO ())
foreign import ccall "wrapper" mk'GLFWcharfun
  :: (Ptr C'GLFWwindow -> CUInt -> IO ()) -> IO C'GLFWcharfun
foreign import ccall "dynamic" mK'GLFWcharfun
  :: C'GLFWcharfun -> (Ptr C'GLFWwindow -> CUInt -> IO ())

type C'GLFWmonitorfun = FunPtr (Ptr C'GLFWmonitor -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWmonitorfun
  :: (Ptr C'GLFWmonitor -> CInt -> IO ()) -> IO C'GLFWmonitorfun
foreign import ccall "dynamic" mK'GLFWmonitorfun
  :: C'GLFWmonitorfun -> (Ptr C'GLFWmonitor -> CInt -> IO ())

type C'GLFWwindowcontentscalefun = FunPtr (Ptr C'GLFWwindow -> CFloat -> CFloat -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowcontentscalefun
  :: (Ptr C'GLFWwindow -> CFloat -> CFloat -> IO ()) -> IO C'GLFWwindowcontentscalefun
foreign import ccall "dynamic" mK'GLFWwindowcontentscalefun
  :: C'GLFWwindowcontentscalefun -> (Ptr C'GLFWwindow -> CFloat -> CFloat -> IO ())

type C'GLFWwindowmaximizefun = FunPtr (Ptr C'GLFWwindow -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWwindowmaximizefun
  :: (Ptr C'GLFWwindow -> CInt -> IO ()) -> IO C'GLFWwindowmaximizefun
foreign import ccall "dynamic" mK'GLFWwindowmaximizefun
  :: C'GLFWwindowmaximizefun -> (Ptr C'GLFWwindow -> CInt -> IO ())









data C'GLFWvidmode = C'GLFWvidmode{
  c'GLFWvidmode'width :: CInt,
  c'GLFWvidmode'height :: CInt,
  c'GLFWvidmode'redBits :: CInt,
  c'GLFWvidmode'greenBits :: CInt,
  c'GLFWvidmode'blueBits :: CInt,
  c'GLFWvidmode'refreshRate :: CInt
} deriving (Eq,Show)
p'GLFWvidmode'width p = plusPtr p 0
p'GLFWvidmode'width :: Ptr (C'GLFWvidmode) -> Ptr (CInt)
p'GLFWvidmode'height p = plusPtr p 4
p'GLFWvidmode'height :: Ptr (C'GLFWvidmode) -> Ptr (CInt)
p'GLFWvidmode'redBits p = plusPtr p 8
p'GLFWvidmode'redBits :: Ptr (C'GLFWvidmode) -> Ptr (CInt)
p'GLFWvidmode'greenBits p = plusPtr p 12
p'GLFWvidmode'greenBits :: Ptr (C'GLFWvidmode) -> Ptr (CInt)
p'GLFWvidmode'blueBits p = plusPtr p 16
p'GLFWvidmode'blueBits :: Ptr (C'GLFWvidmode) -> Ptr (CInt)
p'GLFWvidmode'refreshRate p = plusPtr p 20
p'GLFWvidmode'refreshRate :: Ptr (C'GLFWvidmode) -> Ptr (CInt)
instance Storable C'GLFWvidmode where
  sizeOf _ = 24
  alignment _ = 4
  peek _p = do
    v0 <- peekByteOff _p 0
    v1 <- peekByteOff _p 4
    v2 <- peekByteOff _p 8
    v3 <- peekByteOff _p 12
    v4 <- peekByteOff _p 16
    v5 <- peekByteOff _p 20
    return $ C'GLFWvidmode v0 v1 v2 v3 v4 v5
  poke _p (C'GLFWvidmode v0 v1 v2 v3 v4 v5) = do
    pokeByteOff _p 0 v0
    pokeByteOff _p 4 v1
    pokeByteOff _p 8 v2
    pokeByteOff _p 12 v3
    pokeByteOff _p 16 v4
    pokeByteOff _p 20 v5
    return ()







data C'GLFWgammaramp = C'GLFWgammaramp{
  c'GLFWgammaramp'red :: Ptr CUShort,
  c'GLFWgammaramp'green :: Ptr CUShort,
  c'GLFWgammaramp'blue :: Ptr CUShort,
  c'GLFWgammaramp'size :: CUInt
} deriving (Eq,Show)
p'GLFWgammaramp'red p = plusPtr p 0
p'GLFWgammaramp'red :: Ptr (C'GLFWgammaramp) -> Ptr (Ptr CUShort)
p'GLFWgammaramp'green p = plusPtr p 8
p'GLFWgammaramp'green :: Ptr (C'GLFWgammaramp) -> Ptr (Ptr CUShort)
p'GLFWgammaramp'blue p = plusPtr p 16
p'GLFWgammaramp'blue :: Ptr (C'GLFWgammaramp) -> Ptr (Ptr CUShort)
p'GLFWgammaramp'size p = plusPtr p 24
p'GLFWgammaramp'size :: Ptr (C'GLFWgammaramp) -> Ptr (CUInt)
instance Storable C'GLFWgammaramp where
  sizeOf _ = 32
  alignment _ = 8
  peek _p = do
    v0 <- peekByteOff _p 0
    v1 <- peekByteOff _p 8
    v2 <- peekByteOff _p 16
    v3 <- peekByteOff _p 24
    return $ C'GLFWgammaramp v0 v1 v2 v3
  poke _p (C'GLFWgammaramp v0 v1 v2 v3) = do
    pokeByteOff _p 0 v0
    pokeByteOff _p 8 v1
    pokeByteOff _p 16 v2
    pokeByteOff _p 24 v3
    return ()


foreign import ccall "glfwInit" c'glfwInit
  :: IO CInt
foreign import ccall "&glfwInit" p'glfwInit
  :: FunPtr (IO CInt)

foreign import ccall "glfwTerminate" c'glfwTerminate
  :: IO ()
foreign import ccall "&glfwTerminate" p'glfwTerminate
  :: FunPtr (IO ())

foreign import ccall "glfwGetVersion" c'glfwGetVersion
  :: Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetVersion" p'glfwGetVersion
  :: FunPtr (Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwGetVersionString" c'glfwGetVersionString
  :: IO (Ptr CChar)
foreign import ccall "&glfwGetVersionString" p'glfwGetVersionString
  :: FunPtr (IO (Ptr CChar))

foreign import ccall "glfwSetErrorCallback" c'glfwSetErrorCallback
  :: C'GLFWerrorfun -> IO C'GLFWerrorfun
foreign import ccall "&glfwSetErrorCallback" p'glfwSetErrorCallback
  :: FunPtr (C'GLFWerrorfun -> IO C'GLFWerrorfun)

foreign import ccall "glfwGetMonitors" c'glfwGetMonitors
  :: Ptr CInt -> IO (Ptr (Ptr C'GLFWmonitor))
foreign import ccall "&glfwGetMonitors" p'glfwGetMonitors
  :: FunPtr (Ptr CInt -> IO (Ptr (Ptr C'GLFWmonitor)))

foreign import ccall "glfwGetPrimaryMonitor" c'glfwGetPrimaryMonitor
  :: IO (Ptr C'GLFWmonitor)
foreign import ccall "&glfwGetPrimaryMonitor" p'glfwGetPrimaryMonitor
  :: FunPtr (IO (Ptr C'GLFWmonitor))

foreign import ccall "glfwGetMonitorPos" c'glfwGetMonitorPos
  :: Ptr C'GLFWmonitor -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetMonitorPos" p'glfwGetMonitorPos
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwGetMonitorPhysicalSize" c'glfwGetMonitorPhysicalSize
  :: Ptr C'GLFWmonitor -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetMonitorPhysicalSize" p'glfwGetMonitorPhysicalSize
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwGetMonitorName" c'glfwGetMonitorName
  :: Ptr C'GLFWmonitor -> IO (Ptr CChar)
foreign import ccall "&glfwGetMonitorName" p'glfwGetMonitorName
  :: FunPtr (Ptr C'GLFWmonitor -> IO (Ptr CChar))

foreign import ccall "glfwSetMonitorCallback" c'glfwSetMonitorCallback
  :: C'GLFWmonitorfun -> IO C'GLFWmonitorfun
foreign import ccall "&glfwSetMonitorCallback" p'glfwSetMonitorCallback
  :: FunPtr (C'GLFWmonitorfun -> IO C'GLFWmonitorfun)

foreign import ccall "glfwGetVideoModes" c'glfwGetVideoModes
  :: Ptr C'GLFWmonitor -> Ptr CInt -> IO (Ptr C'GLFWvidmode)
foreign import ccall "&glfwGetVideoModes" p'glfwGetVideoModes
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr CInt -> IO (Ptr C'GLFWvidmode))

foreign import ccall "glfwGetVideoMode" c'glfwGetVideoMode
  :: Ptr C'GLFWmonitor -> IO (Ptr C'GLFWvidmode)
foreign import ccall "&glfwGetVideoMode" p'glfwGetVideoMode
  :: FunPtr (Ptr C'GLFWmonitor -> IO (Ptr C'GLFWvidmode))

foreign import ccall "glfwSetGamma" c'glfwSetGamma
  :: Ptr C'GLFWmonitor -> CFloat -> IO ()
foreign import ccall "&glfwSetGamma" p'glfwSetGamma
  :: FunPtr (Ptr C'GLFWmonitor -> CFloat -> IO ())

foreign import ccall "glfwGetGammaRamp" c'glfwGetGammaRamp
  :: Ptr C'GLFWmonitor -> IO (Ptr C'GLFWgammaramp)
foreign import ccall "&glfwGetGammaRamp" p'glfwGetGammaRamp
  :: FunPtr (Ptr C'GLFWmonitor -> IO (Ptr C'GLFWgammaramp))

foreign import ccall "glfwSetGammaRamp" c'glfwSetGammaRamp
  :: Ptr C'GLFWmonitor -> Ptr C'GLFWgammaramp -> IO ()
foreign import ccall "&glfwSetGammaRamp" p'glfwSetGammaRamp
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr C'GLFWgammaramp -> IO ())

foreign import ccall "glfwDefaultWindowHints" c'glfwDefaultWindowHints
  :: IO ()
foreign import ccall "&glfwDefaultWindowHints" p'glfwDefaultWindowHints
  :: FunPtr (IO ())

foreign import ccall "glfwWindowHint" c'glfwWindowHint
  :: CInt -> CInt -> IO ()
foreign import ccall "&glfwWindowHint" p'glfwWindowHint
  :: FunPtr (CInt -> CInt -> IO ())

foreign import ccall "glfwCreateWindow" c'glfwCreateWindow
  :: CInt -> CInt -> Ptr CChar -> Ptr C'GLFWmonitor -> Ptr C'GLFWwindow -> IO (Ptr C'GLFWwindow)
foreign import ccall "&glfwCreateWindow" p'glfwCreateWindow
  :: FunPtr (CInt -> CInt -> Ptr CChar -> Ptr C'GLFWmonitor -> Ptr C'GLFWwindow -> IO (Ptr C'GLFWwindow))

foreign import ccall "glfwDestroyWindow" c'glfwDestroyWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwDestroyWindow" p'glfwDestroyWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwWindowShouldClose" c'glfwWindowShouldClose
  :: Ptr C'GLFWwindow -> IO CInt
foreign import ccall "&glfwWindowShouldClose" p'glfwWindowShouldClose
  :: FunPtr (Ptr C'GLFWwindow -> IO CInt)

foreign import ccall "glfwSetWindowShouldClose" c'glfwSetWindowShouldClose
  :: Ptr C'GLFWwindow -> CInt -> IO ()
foreign import ccall "&glfwSetWindowShouldClose" p'glfwSetWindowShouldClose
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> IO ())

foreign import ccall "glfwSetWindowTitle" c'glfwSetWindowTitle
  :: Ptr C'GLFWwindow -> Ptr CChar -> IO ()
foreign import ccall "&glfwSetWindowTitle" p'glfwSetWindowTitle
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CChar -> IO ())

foreign import ccall "glfwGetWindowPos" c'glfwGetWindowPos
  :: Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetWindowPos" p'glfwGetWindowPos
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwSetWindowPos" c'glfwSetWindowPos
  :: Ptr C'GLFWwindow -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetWindowPos" p'glfwSetWindowPos
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

foreign import ccall "glfwGetWindowSize" c'glfwGetWindowSize
  :: Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetWindowSize" p'glfwGetWindowSize
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwSetWindowSize" c'glfwSetWindowSize
  :: Ptr C'GLFWwindow -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetWindowSize" p'glfwSetWindowSize
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

foreign import ccall "glfwGetFramebufferSize" c'glfwGetFramebufferSize
  :: Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetFramebufferSize" p'glfwGetFramebufferSize
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwIconifyWindow" c'glfwIconifyWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwIconifyWindow" p'glfwIconifyWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwRestoreWindow" c'glfwRestoreWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwRestoreWindow" p'glfwRestoreWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwShowWindow" c'glfwShowWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwShowWindow" p'glfwShowWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwHideWindow" c'glfwHideWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwHideWindow" p'glfwHideWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwGetWindowMonitor" c'glfwGetWindowMonitor
  :: Ptr C'GLFWwindow -> IO (Ptr C'GLFWmonitor)
foreign import ccall "&glfwGetWindowMonitor" p'glfwGetWindowMonitor
  :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr C'GLFWmonitor))

foreign import ccall "glfwGetWindowAttrib" c'glfwGetWindowAttrib
  :: Ptr C'GLFWwindow -> CInt -> IO CInt
foreign import ccall "&glfwGetWindowAttrib" p'glfwGetWindowAttrib
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> IO CInt)

foreign import ccall "glfwSetWindowUserPointer" c'glfwSetWindowUserPointer
  :: Ptr C'GLFWwindow -> Ptr () -> IO ()
foreign import ccall "&glfwSetWindowUserPointer" p'glfwSetWindowUserPointer
  :: FunPtr (Ptr C'GLFWwindow -> Ptr () -> IO ())

foreign import ccall "glfwGetWindowUserPointer" c'glfwGetWindowUserPointer
  :: Ptr C'GLFWwindow -> IO (Ptr ())
foreign import ccall "&glfwGetWindowUserPointer" p'glfwGetWindowUserPointer
  :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))

foreign import ccall "glfwSetWindowPosCallback" c'glfwSetWindowPosCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowposfun -> IO C'GLFWwindowposfun
foreign import ccall "&glfwSetWindowPosCallback" p'glfwSetWindowPosCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowposfun -> IO C'GLFWwindowposfun)

foreign import ccall "glfwSetWindowSizeCallback" c'glfwSetWindowSizeCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowsizefun -> IO C'GLFWwindowsizefun
foreign import ccall "&glfwSetWindowSizeCallback" p'glfwSetWindowSizeCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowsizefun -> IO C'GLFWwindowsizefun)

foreign import ccall "glfwSetWindowCloseCallback" c'glfwSetWindowCloseCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowclosefun -> IO C'GLFWwindowclosefun
foreign import ccall "&glfwSetWindowCloseCallback" p'glfwSetWindowCloseCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowclosefun -> IO C'GLFWwindowclosefun)

foreign import ccall "glfwSetWindowRefreshCallback" c'glfwSetWindowRefreshCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowrefreshfun -> IO C'GLFWwindowrefreshfun
foreign import ccall "&glfwSetWindowRefreshCallback" p'glfwSetWindowRefreshCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowrefreshfun -> IO C'GLFWwindowrefreshfun)

foreign import ccall "glfwSetWindowFocusCallback" c'glfwSetWindowFocusCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowfocusfun -> IO C'GLFWwindowfocusfun
foreign import ccall "&glfwSetWindowFocusCallback" p'glfwSetWindowFocusCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowfocusfun -> IO C'GLFWwindowfocusfun)

foreign import ccall "glfwSetWindowIconifyCallback" c'glfwSetWindowIconifyCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowiconifyfun -> IO C'GLFWwindowiconifyfun
foreign import ccall "&glfwSetWindowIconifyCallback" p'glfwSetWindowIconifyCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowiconifyfun -> IO C'GLFWwindowiconifyfun)

foreign import ccall "glfwSetFramebufferSizeCallback" c'glfwSetFramebufferSizeCallback
  :: Ptr C'GLFWwindow -> C'GLFWframebuffersizefun -> IO C'GLFWframebuffersizefun
foreign import ccall "&glfwSetFramebufferSizeCallback" p'glfwSetFramebufferSizeCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWframebuffersizefun -> IO C'GLFWframebuffersizefun)

foreign import ccall "glfwPollEvents" c'glfwPollEvents
  :: IO ()
foreign import ccall "&glfwPollEvents" p'glfwPollEvents
  :: FunPtr (IO ())

foreign import ccall "glfwWaitEvents" c'glfwWaitEvents
  :: IO ()
foreign import ccall "&glfwWaitEvents" p'glfwWaitEvents
  :: FunPtr (IO ())

foreign import ccall "glfwPostEmptyEvent" c'glfwPostEmptyEvent
  :: IO ()
foreign import ccall "&glfwPostEmptyEvent" p'glfwPostEmptyEvent
  :: FunPtr (IO ())

foreign import ccall "glfwGetInputMode" c'glfwGetInputMode
  :: Ptr C'GLFWwindow -> CInt -> IO CInt
foreign import ccall "&glfwGetInputMode" p'glfwGetInputMode
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> IO CInt)

foreign import ccall "glfwSetInputMode" c'glfwSetInputMode
  :: Ptr C'GLFWwindow -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetInputMode" p'glfwSetInputMode
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

foreign import ccall "glfwGetKey" c'glfwGetKey
  :: Ptr C'GLFWwindow -> CInt -> IO CInt
foreign import ccall "&glfwGetKey" p'glfwGetKey
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> IO CInt)

foreign import ccall "glfwGetMouseButton" c'glfwGetMouseButton
  :: Ptr C'GLFWwindow -> CInt -> IO CInt
foreign import ccall "&glfwGetMouseButton" p'glfwGetMouseButton
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> IO CInt)

foreign import ccall "glfwGetCursorPos" c'glfwGetCursorPos
  :: Ptr C'GLFWwindow -> Ptr CDouble -> Ptr CDouble -> IO ()
foreign import ccall "&glfwGetCursorPos" p'glfwGetCursorPos
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CDouble -> Ptr CDouble -> IO ())

foreign import ccall "glfwSetCursorPos" c'glfwSetCursorPos
  :: Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ()
foreign import ccall "&glfwSetCursorPos" p'glfwSetCursorPos
  :: FunPtr (Ptr C'GLFWwindow -> CDouble -> CDouble -> IO ())

foreign import ccall "glfwSetKeyCallback" c'glfwSetKeyCallback
  :: Ptr C'GLFWwindow -> C'GLFWkeyfun -> IO C'GLFWkeyfun
foreign import ccall "&glfwSetKeyCallback" p'glfwSetKeyCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWkeyfun -> IO C'GLFWkeyfun)

foreign import ccall "glfwSetCharCallback" c'glfwSetCharCallback
  :: Ptr C'GLFWwindow -> C'GLFWcharfun -> IO C'GLFWcharfun
foreign import ccall "&glfwSetCharCallback" p'glfwSetCharCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWcharfun -> IO C'GLFWcharfun)

foreign import ccall "glfwSetMouseButtonCallback" c'glfwSetMouseButtonCallback
  :: Ptr C'GLFWwindow -> C'GLFWmousebuttonfun -> IO C'GLFWmousebuttonfun
foreign import ccall "&glfwSetMouseButtonCallback" p'glfwSetMouseButtonCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWmousebuttonfun -> IO C'GLFWmousebuttonfun)

foreign import ccall "glfwSetCursorPosCallback" c'glfwSetCursorPosCallback
  :: Ptr C'GLFWwindow -> C'GLFWcursorposfun -> IO C'GLFWcursorposfun
foreign import ccall "&glfwSetCursorPosCallback" p'glfwSetCursorPosCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWcursorposfun -> IO C'GLFWcursorposfun)

foreign import ccall "glfwSetCursorEnterCallback" c'glfwSetCursorEnterCallback
  :: Ptr C'GLFWwindow -> C'GLFWcursorenterfun -> IO C'GLFWcursorenterfun
foreign import ccall "&glfwSetCursorEnterCallback" p'glfwSetCursorEnterCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWcursorenterfun -> IO C'GLFWcursorenterfun)

foreign import ccall "glfwSetScrollCallback" c'glfwSetScrollCallback
  :: Ptr C'GLFWwindow -> C'GLFWscrollfun -> IO C'GLFWscrollfun
foreign import ccall "&glfwSetScrollCallback" p'glfwSetScrollCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWscrollfun -> IO C'GLFWscrollfun)

foreign import ccall "glfwJoystickPresent" c'glfwJoystickPresent
  :: CInt -> IO CInt
foreign import ccall "&glfwJoystickPresent" p'glfwJoystickPresent
  :: FunPtr (CInt -> IO CInt)

foreign import ccall "glfwGetJoystickAxes" c'glfwGetJoystickAxes
  :: CInt -> Ptr CInt -> IO (Ptr CFloat)
foreign import ccall "&glfwGetJoystickAxes" p'glfwGetJoystickAxes
  :: FunPtr (CInt -> Ptr CInt -> IO (Ptr CFloat))

foreign import ccall "glfwGetJoystickButtons" c'glfwGetJoystickButtons
  :: CInt -> Ptr CInt -> IO (Ptr CUChar)
foreign import ccall "&glfwGetJoystickButtons" p'glfwGetJoystickButtons
  :: FunPtr (CInt -> Ptr CInt -> IO (Ptr CUChar))

foreign import ccall "glfwGetJoystickName" c'glfwGetJoystickName
  :: CInt -> IO (Ptr CChar)
foreign import ccall "&glfwGetJoystickName" p'glfwGetJoystickName
  :: FunPtr (CInt -> IO (Ptr CChar))

foreign import ccall "glfwSetClipboardString" c'glfwSetClipboardString
  :: Ptr C'GLFWwindow -> Ptr CChar -> IO ()
foreign import ccall "&glfwSetClipboardString" p'glfwSetClipboardString
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CChar -> IO ())

foreign import ccall "glfwGetClipboardString" c'glfwGetClipboardString
  :: Ptr C'GLFWwindow -> IO (Ptr CChar)
foreign import ccall "&glfwGetClipboardString" p'glfwGetClipboardString
  :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr CChar))

foreign import ccall "glfwGetTime" c'glfwGetTime
  :: IO CDouble
foreign import ccall "&glfwGetTime" p'glfwGetTime
  :: FunPtr (IO CDouble)

foreign import ccall "glfwSetTime" c'glfwSetTime
  :: CDouble -> IO ()
foreign import ccall "&glfwSetTime" p'glfwSetTime
  :: FunPtr (CDouble -> IO ())

foreign import ccall "glfwMakeContextCurrent" c'glfwMakeContextCurrent
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwMakeContextCurrent" p'glfwMakeContextCurrent
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwGetCurrentContext" c'glfwGetCurrentContext
  :: IO (Ptr C'GLFWwindow)
foreign import ccall "&glfwGetCurrentContext" p'glfwGetCurrentContext
  :: FunPtr (IO (Ptr C'GLFWwindow))

foreign import ccall "glfwSwapBuffers" c'glfwSwapBuffers
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwSwapBuffers" p'glfwSwapBuffers
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwSwapInterval" c'glfwSwapInterval
  :: CInt -> IO ()
foreign import ccall "&glfwSwapInterval" p'glfwSwapInterval
  :: FunPtr (CInt -> IO ())

foreign import ccall "glfwExtensionSupported" c'glfwExtensionSupported
  :: Ptr CChar -> IO CInt
foreign import ccall "&glfwExtensionSupported" p'glfwExtensionSupported
  :: FunPtr (Ptr CChar -> IO CInt)

foreign import ccall "glfwGetProcAddress" c'glfwGetProcAddress
  :: Ptr CChar -> IO C'GLFWglproc
foreign import ccall "&glfwGetProcAddress" p'glfwGetProcAddress
  :: FunPtr (Ptr CChar -> IO C'GLFWglproc)


--------------------------------------------------------------------------------
-- GLFW 3.1 additions
--------------------------------------------------------------------------------

c'GLFW_ARROW_CURSOR = 221185
c'GLFW_ARROW_CURSOR :: (Num a) => a

c'GLFW_IBEAM_CURSOR = 221186
c'GLFW_IBEAM_CURSOR :: (Num a) => a

c'GLFW_CROSSHAIR_CURSOR = 221187
c'GLFW_CROSSHAIR_CURSOR :: (Num a) => a

c'GLFW_HAND_CURSOR = 221188
c'GLFW_HAND_CURSOR :: (Num a) => a

c'GLFW_HRESIZE_CURSOR = 221189
c'GLFW_HRESIZE_CURSOR :: (Num a) => a

c'GLFW_VRESIZE_CURSOR = 221190
c'GLFW_VRESIZE_CURSOR :: (Num a) => a

c'GLFW_DONT_CARE = -1
c'GLFW_DONT_CARE :: (Num a) => a

c'GLFW_DOUBLEBUFFER = 135184
c'GLFW_DOUBLEBUFFER :: (Num a) => a

c'GLFW_AUTO_ICONIFY = 131078
c'GLFW_AUTO_ICONIFY :: (Num a) => a

c'GLFW_FLOATING = 131079
c'GLFW_FLOATING :: (Num a) => a

c'GLFW_CONTEXT_RELEASE_BEHAVIOR = 139273
c'GLFW_CONTEXT_RELEASE_BEHAVIOR :: (Num a) => a

c'GLFW_ANY_RELEASE_BEHAVIOR = 0
c'GLFW_ANY_RELEASE_BEHAVIOR :: (Num a) => a

c'GLFW_RELEASE_BEHAVIOR_FLUSH = 217089
c'GLFW_RELEASE_BEHAVIOR_FLUSH :: (Num a) => a

c'GLFW_RELEASE_BEHAVIOR_NONE = 217090
c'GLFW_RELEASE_BEHAVIOR_NONE :: (Num a) => a






data C'GLFWimage = C'GLFWimage{
  c'GLFWimage'width :: CInt,
  c'GLFWimage'height :: CInt,
  c'GLFWimage'pixels :: Ptr CUChar
} deriving (Eq,Show)
p'GLFWimage'width p = plusPtr p 0
p'GLFWimage'width :: Ptr (C'GLFWimage) -> Ptr (CInt)
p'GLFWimage'height p = plusPtr p 4
p'GLFWimage'height :: Ptr (C'GLFWimage) -> Ptr (CInt)
p'GLFWimage'pixels p = plusPtr p 8
p'GLFWimage'pixels :: Ptr (C'GLFWimage) -> Ptr (Ptr CUChar)
instance Storable C'GLFWimage where
  sizeOf _ = 16
  alignment _ = 8
  peek _p = do
    v0 <- peekByteOff _p 0
    v1 <- peekByteOff _p 4
    v2 <- peekByteOff _p 8
    return $ C'GLFWimage v0 v1 v2
  poke _p (C'GLFWimage v0 v1 v2) = do
    pokeByteOff _p 0 v0
    pokeByteOff _p 4 v1
    pokeByteOff _p 8 v2
    return ()


data C'GLFWcursor = C'GLFWcursor

deriving instance Typeable C'GLFWcursor
deriving instance Data     C'GLFWcursor

type C'GLFWdropfun = FunPtr (Ptr C'GLFWwindow -> CInt -> Ptr (Ptr CChar) -> IO ())
foreign import ccall "wrapper" mk'GLFWdropfun
  :: (Ptr C'GLFWwindow -> CInt -> Ptr (Ptr CChar) -> IO ()) -> IO C'GLFWdropfun
foreign import ccall "dynamic" mK'GLFWdropfun
  :: C'GLFWdropfun -> (Ptr C'GLFWwindow -> CInt -> Ptr (Ptr CChar) -> IO ())

type C'GLFWcharmodsfun = FunPtr (Ptr C'GLFWwindow -> CUInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWcharmodsfun
  :: (Ptr C'GLFWwindow -> CUInt -> CInt -> IO ()) -> IO C'GLFWcharmodsfun
foreign import ccall "dynamic" mK'GLFWcharmodsfun
  :: C'GLFWcharmodsfun -> (Ptr C'GLFWwindow -> CUInt -> CInt -> IO ())


foreign import ccall "glfwCreateCursor" c'glfwCreateCursor
  :: Ptr C'GLFWimage -> CInt -> CInt -> IO (Ptr C'GLFWcursor)
foreign import ccall "&glfwCreateCursor" p'glfwCreateCursor
  :: FunPtr (Ptr C'GLFWimage -> CInt -> CInt -> IO (Ptr C'GLFWcursor))

foreign import ccall "glfwCreateStandardCursor" c'glfwCreateStandardCursor
  :: CInt -> IO (Ptr C'GLFWcursor)
foreign import ccall "&glfwCreateStandardCursor" p'glfwCreateStandardCursor
  :: FunPtr (CInt -> IO (Ptr C'GLFWcursor))

foreign import ccall "glfwSetCursor" c'glfwSetCursor
  :: Ptr C'GLFWwindow -> Ptr C'GLFWcursor -> IO ()
foreign import ccall "&glfwSetCursor" p'glfwSetCursor
  :: FunPtr (Ptr C'GLFWwindow -> Ptr C'GLFWcursor -> IO ())

foreign import ccall "glfwDestroyCursor" c'glfwDestroyCursor
  :: Ptr C'GLFWcursor -> IO ()
foreign import ccall "&glfwDestroyCursor" p'glfwDestroyCursor
  :: FunPtr (Ptr C'GLFWcursor -> IO ())

foreign import ccall "glfwSetDropCallback" c'glfwSetDropCallback
  :: Ptr C'GLFWwindow -> C'GLFWdropfun -> IO C'GLFWdropfun
foreign import ccall "&glfwSetDropCallback" p'glfwSetDropCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWdropfun -> IO C'GLFWdropfun)

foreign import ccall "glfwSetCharModsCallback" c'glfwSetCharModsCallback
  :: Ptr C'GLFWwindow -> C'GLFWcharmodsfun -> IO C'GLFWcharmodsfun
foreign import ccall "&glfwSetCharModsCallback" p'glfwSetCharModsCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWcharmodsfun -> IO C'GLFWcharmodsfun)

foreign import ccall "glfwGetWindowFrameSize" c'glfwGetWindowFrameSize
  :: Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetWindowFrameSize" p'glfwGetWindowFrameSize
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ())


--------------------------------------------------------------------------------
-- GLFW 3.2 additions
--------------------------------------------------------------------------------

c'GLFW_NO_API = 0
c'GLFW_NO_API :: (Num a) => a

c'GLFW_CONTEXT_CREATION_API = 139275
c'GLFW_CONTEXT_CREATION_API :: (Num a) => a

c'GLFW_NATIVE_CONTEXT_API = 221185
c'GLFW_NATIVE_CONTEXT_API :: (Num a) => a

c'GLFW_EGL_CONTEXT_API = 221186
c'GLFW_EGL_CONTEXT_API :: (Num a) => a

c'GLFW_CONTEXT_NO_ERROR = 139274
c'GLFW_CONTEXT_NO_ERROR :: (Num a) => a

c'GLFW_TRUE = 1
c'GLFW_TRUE :: (Num a) => a

c'GLFW_FALSE = 0
c'GLFW_FALSE :: (Num a) => a

c'GLFW_MAXIMIZED = 131080
c'GLFW_MAXIMIZED :: (Num a) => a


foreign import ccall "glfwFocusWindow" c'glfwFocusWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwFocusWindow" p'glfwFocusWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwMaximizeWindow" c'glfwMaximizeWindow
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwMaximizeWindow" p'glfwMaximizeWindow
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwSetWindowMonitor" c'glfwSetWindowMonitor
  :: Ptr C'GLFWwindow -> Ptr C'GLFWmonitor -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetWindowMonitor" p'glfwSetWindowMonitor
  :: FunPtr (Ptr C'GLFWwindow -> Ptr C'GLFWmonitor -> CInt -> CInt -> CInt -> CInt -> CInt -> IO ())

foreign import ccall "glfwSetWindowIcon" c'glfwSetWindowIcon
  :: Ptr C'GLFWwindow -> CInt -> Ptr C'GLFWimage -> IO ()
foreign import ccall "&glfwSetWindowIcon" p'glfwSetWindowIcon
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> Ptr C'GLFWimage -> IO ())

foreign import ccall "glfwWaitEventsTimeout" c'glfwWaitEventsTimeout
  :: CDouble -> IO ()
foreign import ccall "&glfwWaitEventsTimeout" p'glfwWaitEventsTimeout
  :: FunPtr (CDouble -> IO ())

foreign import ccall "glfwSetWindowSizeLimits" c'glfwSetWindowSizeLimits
  :: Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetWindowSizeLimits" p'glfwSetWindowSizeLimits
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> CInt -> CInt -> IO ())

foreign import ccall "glfwSetWindowAspectRatio" c'glfwSetWindowAspectRatio
  :: Ptr C'GLFWwindow -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetWindowAspectRatio" p'glfwSetWindowAspectRatio
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

foreign import ccall "glfwGetKeyName" c'glfwGetKeyName
  :: CInt -> CInt -> IO CString
foreign import ccall "&glfwGetKeyName" p'glfwGetKeyName
  :: FunPtr (CInt -> CInt -> IO CString)

foreign import ccall "glfwGetTimerValue" c'glfwGetTimerValue
  :: IO Word64
foreign import ccall "&glfwGetTimerValue" p'glfwGetTimerValue
  :: FunPtr (IO Word64)

foreign import ccall "glfwGetTimerFrequency" c'glfwGetTimerFrequency
  :: IO Word64
foreign import ccall "&glfwGetTimerFrequency" p'glfwGetTimerFrequency
  :: FunPtr (IO Word64)


type C'GLFWjoystickfun = FunPtr (CInt -> CInt -> IO ())
foreign import ccall "wrapper" mk'GLFWjoystickfun
  :: (CInt -> CInt -> IO ()) -> IO C'GLFWjoystickfun
foreign import ccall "dynamic" mK'GLFWjoystickfun
  :: C'GLFWjoystickfun -> (CInt -> CInt -> IO ())

foreign import ccall "glfwSetJoystickCallback" c'glfwSetJoystickCallback
  :: C'GLFWjoystickfun -> IO C'GLFWjoystickfun
foreign import ccall "&glfwSetJoystickCallback" p'glfwSetJoystickCallback
  :: FunPtr (C'GLFWjoystickfun -> IO C'GLFWjoystickfun)


foreign import ccall "glfwVulkanSupported" c'glfwVulkanSupported
  :: IO CInt
foreign import ccall "&glfwVulkanSupported" p'glfwVulkanSupported
  :: FunPtr (IO CInt)

foreign import ccall "glfwGetRequiredInstanceExtensions" c'glfwGetRequiredInstanceExtensions
  :: Ptr Word32 -> IO (Ptr CString)
foreign import ccall "&glfwGetRequiredInstanceExtensions" p'glfwGetRequiredInstanceExtensions
  :: FunPtr (Ptr Word32 -> IO (Ptr CString))


-- GLFW prevents the declaration of some of the Vulkan functions in its header
-- glfw3.h if it cannot find the required Vulkan headers. As of now (4/2018),
-- these functions are still *defined* in vulkan.c, which is built regardless of
-- whether or not the Vulkan headers were found. Internally, the required types
-- are defined locally in order to make the build work, and h2c will still link
-- against them without a problem. Whether or not you have a valid Vulkan
-- implementation might not be clear though. Nothing is preventing the glfw3
-- authors from hiding the Vulkan functions without valid headers, which could
-- cause some pain in the future, so use the following functions with caution.
-- See commit @521d161af85047 for a way to deal with this more annoyingly.
foreign import ccall "glfwGetInstanceProcAddress" c'glfwGetInstanceProcAddress
  :: Ptr vkInstance -> CString -> IO (FunPtr vkProc)
foreign import ccall "&glfwGetInstanceProcAddress" p'glfwGetInstanceProcAddress
  :: FunPtr (Ptr vkInstance -> CString -> IO (FunPtr vkProc))

foreign import ccall "glfwGetPhysicalDevicePresentationSupport" c'glfwGetPhysicalDevicePresentationSupport
  :: Ptr vkInstance -> Ptr vkPhysicalDevice -> Word32 -> IO CInt
foreign import ccall "&glfwGetPhysicalDevicePresentationSupport" p'glfwGetPhysicalDevicePresentationSupport
  :: FunPtr (Ptr vkInstance -> Ptr vkPhysicalDevice -> Word32 -> IO CInt)

foreign import ccall "glfwCreateWindowSurface" c'glfwCreateWindowSurface
  :: Ptr vkInstance -> Ptr C'GLFWwindow -> Ptr vkAllocationCallbacks -> Ptr vkSurfaceKHR -> IO Int32
foreign import ccall "&glfwCreateWindowSurface" p'glfwCreateWindowSurface
  :: FunPtr (Ptr vkInstance -> Ptr C'GLFWwindow -> Ptr vkAllocationCallbacks -> Ptr vkSurfaceKHR -> IO Int32)


--------------------------------------------------------------------------------
-- GLFW 3.3 additions
--------------------------------------------------------------------------------

c'GLFW_OSMESA_CONTEXT_API = 221187
c'GLFW_OSMESA_CONTEXT_API :: (Num a) => a


c'GLFW_NO_ERROR = 0
c'GLFW_NO_ERROR :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_A = 0
c'GLFW_GAMEPAD_BUTTON_A :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_B = 1
c'GLFW_GAMEPAD_BUTTON_B :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_X = 2
c'GLFW_GAMEPAD_BUTTON_X :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_Y = 3
c'GLFW_GAMEPAD_BUTTON_Y :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_LEFT_BUMPER = 4
c'GLFW_GAMEPAD_BUTTON_LEFT_BUMPER :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER = 5
c'GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_BACK = 6
c'GLFW_GAMEPAD_BUTTON_BACK :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_START = 7
c'GLFW_GAMEPAD_BUTTON_START :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_GUIDE = 8
c'GLFW_GAMEPAD_BUTTON_GUIDE :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_LEFT_THUMB = 9
c'GLFW_GAMEPAD_BUTTON_LEFT_THUMB :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_RIGHT_THUMB = 10
c'GLFW_GAMEPAD_BUTTON_RIGHT_THUMB :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_DPAD_UP = 11
c'GLFW_GAMEPAD_BUTTON_DPAD_UP :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_DPAD_RIGHT = 12
c'GLFW_GAMEPAD_BUTTON_DPAD_RIGHT :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_DPAD_DOWN = 13
c'GLFW_GAMEPAD_BUTTON_DPAD_DOWN :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_DPAD_LEFT = 14
c'GLFW_GAMEPAD_BUTTON_DPAD_LEFT :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_LAST = 14
c'GLFW_GAMEPAD_BUTTON_LAST :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_CROSS = 0
c'GLFW_GAMEPAD_BUTTON_CROSS :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_CIRCLE = 1
c'GLFW_GAMEPAD_BUTTON_CIRCLE :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_SQUARE = 2
c'GLFW_GAMEPAD_BUTTON_SQUARE :: (Num a) => a

c'GLFW_GAMEPAD_BUTTON_TRIANGLE = 3
c'GLFW_GAMEPAD_BUTTON_TRIANGLE :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_LEFT_X = 0
c'GLFW_GAMEPAD_AXIS_LEFT_X :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_LEFT_Y = 1
c'GLFW_GAMEPAD_AXIS_LEFT_Y :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_RIGHT_X = 2
c'GLFW_GAMEPAD_AXIS_RIGHT_X :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_RIGHT_Y = 3
c'GLFW_GAMEPAD_AXIS_RIGHT_Y :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_LEFT_TRIGGER = 4
c'GLFW_GAMEPAD_AXIS_LEFT_TRIGGER :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = 5
c'GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER :: (Num a) => a

c'GLFW_GAMEPAD_AXIS_LAST = 5
c'GLFW_GAMEPAD_AXIS_LAST :: (Num a) => a


c'GLFW_HAT_CENTERED = 0
c'GLFW_HAT_CENTERED :: (Num a) => a

c'GLFW_HAT_UP = 1
c'GLFW_HAT_UP :: (Num a) => a

c'GLFW_HAT_RIGHT = 2
c'GLFW_HAT_RIGHT :: (Num a) => a

c'GLFW_HAT_DOWN = 4
c'GLFW_HAT_DOWN :: (Num a) => a

c'GLFW_HAT_LEFT = 8
c'GLFW_HAT_LEFT :: (Num a) => a

c'GLFW_HAT_RIGHT_UP = 3
c'GLFW_HAT_RIGHT_UP :: (Num a) => a

c'GLFW_HAT_RIGHT_DOWN = 6
c'GLFW_HAT_RIGHT_DOWN :: (Num a) => a

c'GLFW_HAT_LEFT_UP = 9
c'GLFW_HAT_LEFT_UP :: (Num a) => a

c'GLFW_HAT_LEFT_DOWN = 12
c'GLFW_HAT_LEFT_DOWN :: (Num a) => a


-- Misc
c'GLFW_HOVERED = 131083
c'GLFW_HOVERED :: (Num a) => a

c'GLFW_LOCK_KEY_MODS = 208900
c'GLFW_LOCK_KEY_MODS :: (Num a) => a

c'GLFW_MOD_CAPS_LOCK = 16
c'GLFW_MOD_CAPS_LOCK :: (Num a) => a

c'GLFW_MOD_NUM_LOCK = 32
c'GLFW_MOD_NUM_LOCK :: (Num a) => a

c'GLFW_RAW_MOUSE_MOTION = 208901
c'GLFW_RAW_MOUSE_MOTION :: (Num a) => a


-- Init hints
c'GLFW_JOYSTICK_HAT_BUTTONS = 327681
c'GLFW_JOYSTICK_HAT_BUTTONS :: (Num a) => a

c'GLFW_COCOA_CHDIR_RESOURCES = 331777
c'GLFW_COCOA_CHDIR_RESOURCES :: (Num a) => a

c'GLFW_COCOA_MENUBAR = 331778
c'GLFW_COCOA_MENUBAR :: (Num a) => a


-- Window hints
c'GLFW_TRANSPARENT_FRAMEBUFFER = 131082
c'GLFW_TRANSPARENT_FRAMEBUFFER :: (Num a) => a

c'GLFW_CENTER_CURSOR = 131081
c'GLFW_CENTER_CURSOR :: (Num a) => a

c'GLFW_FOCUS_ON_SHOW = 131084
c'GLFW_FOCUS_ON_SHOW :: (Num a) => a

c'GLFW_SCALE_TO_MONITOR = 139276
c'GLFW_SCALE_TO_MONITOR :: (Num a) => a

c'GLFW_COCOA_RETINA_FRAMEBUFFER = 143361
c'GLFW_COCOA_RETINA_FRAMEBUFFER :: (Num a) => a

c'GLFW_COCOA_FRAME_NAME = 143362
c'GLFW_COCOA_FRAME_NAME :: (Num a) => a

c'GLFW_COCOA_GRAPHICS_SWITCHING = 143363
c'GLFW_COCOA_GRAPHICS_SWITCHING :: (Num a) => a

c'GLFW_X11_CLASS_NAME = 147457
c'GLFW_X11_CLASS_NAME :: (Num a) => a

c'GLFW_X11_INSTANCE_NAME = 147458
c'GLFW_X11_INSTANCE_NAME :: (Num a) => a





data C'GLFWgamepadstate = C'GLFWgamepadstate{
  c'GLFWgamepadstate'buttons :: [CUChar],
  c'GLFWgamepadstate'axes :: [CFloat]
} deriving (Eq,Show)
p'GLFWgamepadstate'buttons p = plusPtr p 0
p'GLFWgamepadstate'buttons :: Ptr (C'GLFWgamepadstate) -> Ptr (CUChar)
p'GLFWgamepadstate'axes p = plusPtr p 16
p'GLFWgamepadstate'axes :: Ptr (C'GLFWgamepadstate) -> Ptr (CFloat)
instance Storable C'GLFWgamepadstate where
  sizeOf _ = 40
  alignment _ = 4
  peek _p = do
    v0 <- let s0 = div 15 $ sizeOf $ (undefined :: CUChar) in peekArray s0 (plusPtr _p 0)
    v1 <- let s1 = div 24 $ sizeOf $ (undefined :: CFloat) in peekArray s1 (plusPtr _p 16)
    return $ C'GLFWgamepadstate v0 v1
  poke _p (C'GLFWgamepadstate v0 v1) = do
    let s0 = div 15 $ sizeOf $ (undefined :: CUChar)
    pokeArray (plusPtr _p 0) (take s0 v0)
    let s1 = div 24 $ sizeOf $ (undefined :: CFloat)
    pokeArray (plusPtr _p 16) (take s1 v1)
    return ()


foreign import ccall "glfwGetError" c'glfwGetError
  :: Ptr CString -> IO CInt
foreign import ccall "&glfwGetError" p'glfwGetError
  :: FunPtr (Ptr CString -> IO CInt)

foreign import ccall "glfwUpdateGamepadMappings" c'glfwUpdateGamepadMappings
  :: CString -> IO CInt
foreign import ccall "&glfwUpdateGamepadMappings" p'glfwUpdateGamepadMappings
  :: FunPtr (CString -> IO CInt)

foreign import ccall "glfwJoystickIsGamepad" c'glfwJoystickIsGamepad
  :: CInt -> IO CInt
foreign import ccall "&glfwJoystickIsGamepad" p'glfwJoystickIsGamepad
  :: FunPtr (CInt -> IO CInt)

foreign import ccall "glfwGetJoystickGUID" c'glfwGetJoystickGUID
  :: CInt -> IO CString
foreign import ccall "&glfwGetJoystickGUID" p'glfwGetJoystickGUID
  :: FunPtr (CInt -> IO CString)

foreign import ccall "glfwGetGamepadName" c'glfwGetGamepadName
  :: CInt -> IO CString
foreign import ccall "&glfwGetGamepadName" p'glfwGetGamepadName
  :: FunPtr (CInt -> IO CString)

foreign import ccall "glfwGetGamepadState" c'glfwGetGamepadState
  :: CInt -> Ptr C'GLFWgamepadstate -> IO CInt
foreign import ccall "&glfwGetGamepadState" p'glfwGetGamepadState
  :: FunPtr (CInt -> Ptr C'GLFWgamepadstate -> IO CInt)

foreign import ccall "glfwGetWindowContentScale" c'glfwGetWindowContentScale
  :: Ptr C'GLFWwindow -> Ptr CFloat -> Ptr CFloat -> IO ()
foreign import ccall "&glfwGetWindowContentScale" p'glfwGetWindowContentScale
  :: FunPtr (Ptr C'GLFWwindow -> Ptr CFloat -> Ptr CFloat -> IO ())

foreign import ccall "glfwGetMonitorContentScale" c'glfwGetMonitorContentScale
  :: Ptr C'GLFWmonitor -> Ptr CFloat -> Ptr CFloat -> IO ()
foreign import ccall "&glfwGetMonitorContentScale" p'glfwGetMonitorContentScale
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr CFloat -> Ptr CFloat -> IO ())

foreign import ccall "glfwSetWindowContentScaleCallback" c'glfwSetWindowContentScaleCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowcontentscalefun -> IO C'GLFWwindowcontentscalefun
foreign import ccall "&glfwSetWindowContentScaleCallback" p'glfwSetWindowContentScaleCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowcontentscalefun -> IO C'GLFWwindowcontentscalefun)

foreign import ccall "glfwRequestWindowAttention" c'glfwRequestWindowAttention
  :: Ptr C'GLFWwindow -> IO ()
foreign import ccall "&glfwRequestWindowAttention" p'glfwRequestWindowAttention
  :: FunPtr (Ptr C'GLFWwindow -> IO ())

foreign import ccall "glfwGetMonitorWorkarea" c'glfwGetMonitorWorkarea
  :: Ptr C'GLFWmonitor -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ()
foreign import ccall "&glfwGetMonitorWorkarea" p'glfwGetMonitorWorkarea
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr CInt -> IO ())

foreign import ccall "glfwGetKeyScancode" c'glfwGetKeyScancode
  :: CInt -> IO CInt
foreign import ccall "&glfwGetKeyScancode" p'glfwGetKeyScancode
  :: FunPtr (CInt -> IO CInt)

foreign import ccall "glfwSetWindowMaximizeCallback" c'glfwSetWindowMaximizeCallback
  :: Ptr C'GLFWwindow -> C'GLFWwindowmaximizefun -> IO C'GLFWwindowmaximizefun
foreign import ccall "&glfwSetWindowMaximizeCallback" p'glfwSetWindowMaximizeCallback
  :: FunPtr (Ptr C'GLFWwindow -> C'GLFWwindowmaximizefun -> IO C'GLFWwindowmaximizefun)

foreign import ccall "glfwSetWindowAttrib" c'glfwSetWindowAttrib
  :: Ptr C'GLFWwindow -> CInt -> CInt -> IO ()
foreign import ccall "&glfwSetWindowAttrib" p'glfwSetWindowAttrib
  :: FunPtr (Ptr C'GLFWwindow -> CInt -> CInt -> IO ())

foreign import ccall "glfwGetJoystickHats" c'glfwGetJoystickHats
  :: CInt -> Ptr CInt -> IO (Ptr CUChar)
foreign import ccall "&glfwGetJoystickHats" p'glfwGetJoystickHats
  :: FunPtr (CInt -> Ptr CInt -> IO (Ptr CUChar))

foreign import ccall "glfwInitHint" c'glfwInitHint
  :: CInt -> CInt -> IO ()
foreign import ccall "&glfwInitHint" p'glfwInitHint
  :: FunPtr (CInt -> CInt -> IO ())

foreign import ccall "glfwWindowHintString" c'glfwWindowHintString
  :: CInt -> CString -> IO ()
foreign import ccall "&glfwWindowHintString" p'glfwWindowHintString
  :: FunPtr (CInt -> CString -> IO ())

foreign import ccall "glfwGetWindowOpacity" c'glfwGetWindowOpacity
  :: Ptr C'GLFWwindow -> IO CFloat
foreign import ccall "&glfwGetWindowOpacity" p'glfwGetWindowOpacity
  :: FunPtr (Ptr C'GLFWwindow -> IO CFloat)

foreign import ccall "glfwSetWindowOpacity" c'glfwSetWindowOpacity
  :: Ptr C'GLFWwindow -> CFloat -> IO ()
foreign import ccall "&glfwSetWindowOpacity" p'glfwSetWindowOpacity
  :: FunPtr (Ptr C'GLFWwindow -> CFloat -> IO ())

foreign import ccall "glfwSetMonitorUserPointer" c'glfwSetMonitorUserPointer
  :: Ptr C'GLFWmonitor -> Ptr () -> IO ()
foreign import ccall "&glfwSetMonitorUserPointer" p'glfwSetMonitorUserPointer
  :: FunPtr (Ptr C'GLFWmonitor -> Ptr () -> IO ())

foreign import ccall "glfwGetMonitorUserPointer" c'glfwGetMonitorUserPointer
  :: Ptr C'GLFWmonitor -> IO (Ptr ())
foreign import ccall "&glfwGetMonitorUserPointer" p'glfwGetMonitorUserPointer
  :: FunPtr (Ptr C'GLFWmonitor -> IO (Ptr ()))

foreign import ccall "glfwSetJoystickUserPointer" c'glfwSetJoystickUserPointer
  :: CInt -> Ptr () -> IO ()
foreign import ccall "&glfwSetJoystickUserPointer" p'glfwSetJoystickUserPointer
  :: FunPtr (CInt -> Ptr () -> IO ())

foreign import ccall "glfwGetJoystickUserPointer" c'glfwGetJoystickUserPointer
  :: CInt -> IO (Ptr ())
foreign import ccall "&glfwGetJoystickUserPointer" p'glfwGetJoystickUserPointer
  :: FunPtr (CInt -> IO (Ptr ()))

foreign import ccall "glfwRawMouseMotionSupported" c'glfwRawMouseMotionSupported
  :: IO CInt
foreign import ccall "&glfwRawMouseMotionSupported" p'glfwRawMouseMotionSupported
  :: FunPtr (IO CInt)


--------------------------------------------------------------------------------
-- Native APIs
--------------------------------------------------------------------------------



p'glfwGetWin32Adapter :: FunPtr (Ptr C'GLFWwindow -> IO CString)
p'glfwGetWin32Adapter = nullFunPtr

c'glfwGetWin32Adapter :: Ptr C'GLFWwindow -> IO CString
c'glfwGetWin32Adapter =
  error $ "c'glfwGetWin32Adapter undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetWin32Monitor :: FunPtr (Ptr C'GLFWwindow -> IO CString)
p'glfwGetWin32Monitor = nullFunPtr

c'glfwGetWin32Monitor :: Ptr C'GLFWwindow -> IO CString
c'glfwGetWin32Monitor =
  error $ "c'glfwGetWin32Monitor undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetWin32Window :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetWin32Window = nullFunPtr

c'glfwGetWin32Window ::  Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetWin32Window =
  error $ "c'glfwGetWin32Window undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetWGLContext :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetWGLContext = nullFunPtr

c'glfwGetWGLContext :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetWGLContext =
  error $ "c'glfwGetWGLContext undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetCocoaMonitor :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr Word32))
p'glfwGetCocoaMonitor = nullFunPtr

c'glfwGetCocoaMonitor :: Ptr C'GLFWwindow -> IO (Ptr Word32)
c'glfwGetCocoaMonitor =
  error $ "c'glfwGetCocoaMonitor undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetCocoaWindow :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetCocoaWindow = nullFunPtr

c'glfwGetCocoaWindow :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetCocoaWindow =
  error $ "c'glfwGetCocoaWindow undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetNSGLContext :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetNSGLContext = nullFunPtr

c'glfwGetNSGLContext :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetNSGLContext =
  error $ "c'glfwGetNSGLContext undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetX11Display :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr display))
p'glfwGetX11Display = nullFunPtr

c'glfwGetX11Display :: Ptr C'GLFWwindow -> IO (Ptr display)
c'glfwGetX11Display =
  error $ "c'glfwGetX11Display undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetX11Adapter :: FunPtr (Ptr C'GLFWwindow -> IO Word64)
p'glfwGetX11Adapter = nullFunPtr

c'glfwGetX11Adapter :: Ptr C'GLFWwindow -> IO Word64
c'glfwGetX11Adapter =
  error $ "c'glfwGetX11Adapter undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetX11Monitor :: FunPtr (Ptr C'GLFWwindow -> IO Word64)
p'glfwGetX11Monitor = nullFunPtr

c'glfwGetX11Monitor :: Ptr C'GLFWwindow -> IO Word64
c'glfwGetX11Monitor =
  error $ "c'glfwGetX11Monitor undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetX11Window :: FunPtr (Ptr C'GLFWwindow -> IO Word64)
p'glfwGetX11Window = nullFunPtr

c'glfwGetX11Window ::  Ptr C'GLFWwindow -> IO Word64
c'glfwGetX11Window =
  error $ "c'glfwGetX11Window undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetX11SelectionString :: FunPtr (IO CString)
p'glfwGetX11SelectionString = nullFunPtr

c'glfwGetX11SelectionString :: IO CString
c'glfwGetX11SelectionString =
  error $ "c'glfwGetX11SelectionString undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwSetX11SelectionString :: FunPtr (CString -> IO ())
p'glfwSetX11SelectionString = nullFunPtr

c'glfwSetX11SelectionString :: CString -> IO ()
c'glfwSetX11SelectionString =
  error $ "c'glfwSetX11SelectionString undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetGLXContext :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetGLXContext = nullFunPtr

c'glfwGetGLXContext :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetGLXContext =
  error $ "c'glfwGetGLXContext undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetGLXWindow :: FunPtr (Ptr C'GLFWwindow -> IO Word64)
p'glfwGetGLXWindow = nullFunPtr

c'glfwGetGLXWindow ::  Ptr C'GLFWwindow -> IO Word64
c'glfwGetGLXWindow =
  error $ "c'glfwGetGLXWindow undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetWaylandDisplay :: FunPtr (IO (Ptr wl_display))
p'glfwGetWaylandDisplay = nullFunPtr

c'glfwGetWaylandDisplay :: IO (Ptr wl_display)
c'glfwGetWaylandDisplay =
  error $ "c'glfwGetWaylandDisplay undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetWaylandMonitor :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr wl_output))
p'glfwGetWaylandMonitor = nullFunPtr

c'glfwGetWaylandMonitor :: Ptr C'GLFWwindow -> IO (Ptr wl_output)
c'glfwGetWaylandMonitor =
  error $ "c'glfwGetWaylandMonitor undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetWaylandWindow :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr wl_surface))
p'glfwGetWaylandWindow = nullFunPtr

c'glfwGetWaylandWindow :: Ptr C'GLFWwindow -> IO (Ptr wl_surface)
c'glfwGetWaylandWindow =
  error $ "c'glfwGetWaylandWindow undefined! -- "
       ++ "Did you use the wrong glfw3native API?"



p'glfwGetEGLDisplay :: FunPtr (IO (Ptr ()))
p'glfwGetEGLDisplay = nullFunPtr

c'glfwGetEGLDisplay :: IO (Ptr ())
c'glfwGetEGLDisplay =
  error $ "c'glfwGetEGLDisplay undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetEGLContext :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetEGLContext = nullFunPtr

c'glfwGetEGLContext :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetEGLContext =
  error $ "c'glfwGetEGLContext undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetEGLSurface :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetEGLSurface = nullFunPtr

c'glfwGetEGLSurface :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetEGLSurface =
  error $ "c'glfwGetEGLSurface undefined! -- "
       ++ "Did you use the wrong glfw3native API?"




p'glfwGetOSMesaColorBuffer :: FunPtr (Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr (Ptr ()) -> IO CInt)
p'glfwGetOSMesaColorBuffer = nullFunPtr

c'glfwGetOSMesaColorBuffer :: Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr (Ptr ()) -> IO CInt
c'glfwGetOSMesaColorBuffer =
  error $ "c'glfwGetOSMesaColorBuffer undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetOSMesaDepthBuffer :: FunPtr (Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr (Ptr ()) -> IO CInt)
p'glfwGetOSMesaDepthBuffer = nullFunPtr

c'glfwGetOSMesaDepthBuffer :: Ptr C'GLFWwindow -> Ptr CInt -> Ptr CInt -> Ptr CInt -> Ptr (Ptr ()) -> IO CInt
c'glfwGetOSMesaDepthBuffer =
  error $ "c'glfwGetOSMesaDepthBuffer undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

p'glfwGetOSMesaContext :: FunPtr (Ptr C'GLFWwindow -> IO (Ptr ()))
p'glfwGetOSMesaContext = nullFunPtr

c'glfwGetOSMesaContext :: Ptr C'GLFWwindow -> IO (Ptr ())
c'glfwGetOSMesaContext =
  error $ "c'glfwGetOSMesaContext undefined! -- "
       ++ "Did you use the wrong glfw3native API?"

