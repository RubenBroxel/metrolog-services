; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [332 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [664 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 242
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 202
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 207
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 229
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 270
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 273
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 236
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 422779754995088667, ; 11: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 12: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 272
	i64 502670939551102150, ; 13: System.Management.dll => 0x6f9d88e66daf4c6 => 212
	i64 545109961164950392, ; 14: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 304
	i64 560278790331054453, ; 15: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 634308326490598313, ; 16: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 255
	i64 649145001856603771, ; 17: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 750875890346172408, ; 18: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 798450721097591769, ; 19: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 230
	i64 799765834175365804, ; 20: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 21: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 307
	i64 872800313462103108, ; 22: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 241
	i64 895210737996778430, ; 23: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 256
	i64 940822596282819491, ; 24: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 25: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 26: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1055774368762298424, ; 27: ar/Microsoft.Maui.Controls.resources => 0xea6dd31d50a0038 => 297
	i64 1086162496853491779, ; 28: Google.Cloud.DevTools.Common => 0xf12d309414dc043 => 179
	i64 1120440138749646132, ; 29: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 285
	i64 1121665720830085036, ; 30: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 315
	i64 1268860745194512059, ; 31: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 32: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 33: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 225
	i64 1369545283391376210, ; 34: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 263
	i64 1404195534211153682, ; 35: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 36: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 37: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 38: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 204
	i64 1492954217099365037, ; 39: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 40: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1537168428375924959, ; 41: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 42: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 313
	i64 1576750169145655260, ; 43: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 284
	i64 1624659445732251991, ; 44: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 224
	i64 1628611045998245443, ; 45: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 259
	i64 1636321030536304333, ; 46: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 249
	i64 1643226597988041431, ; 47: pl/Microsoft.Maui.Controls.resources => 0x16cde9e27a8d02d7 => 317
	i64 1651782184287836205, ; 48: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 49: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1682513316613008342, ; 50: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 51: Newtonsoft.Json => 0x18071957e9b889d7 => 209
	i64 1735388228521408345, ; 52: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 53: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 54: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1769105627832031750, ; 55: Google.Protobuf => 0x188d203205129a06 => 184
	i64 1795316252682057001, ; 56: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 223
	i64 1825687700144851180, ; 57: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1836611346387731153, ; 58: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 270
	i64 1854145951182283680, ; 59: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1865037103900624886, ; 60: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 193
	i64 1875417405349196092, ; 61: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 62: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 220
	i64 1897575647115118287, ; 63: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 272
	i64 1920760634179481754, ; 64: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 205
	i64 1959996714666907089, ; 65: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 325
	i64 1972385128188460614, ; 66: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 67: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 257
	i64 1983698669889758782, ; 68: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 299
	i64 2019660174692588140, ; 69: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 317
	i64 2040001226662520565, ; 70: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 71: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 72: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 293
	i64 2080945842184875448, ; 73: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 74: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 75: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2133195048986300728, ; 76: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 209
	i64 2145898162032646099, ; 77: ko/Microsoft.Maui.Controls.resources => 0x1dc7c302481e97d3 => 313
	i64 2165310824878145998, ; 78: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 217
	i64 2165725771938924357, ; 79: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 227
	i64 2200176636225660136, ; 80: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 200
	i64 2262844636196693701, ; 81: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 241
	i64 2287834202362508563, ; 82: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 83: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 84: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 321
	i64 2304837677853103545, ; 85: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 269
	i64 2315304989185124968, ; 86: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 87: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 252
	i64 2335503487726329082, ; 88: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 89: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2405413894731521496, ; 90: da/Microsoft.Maui.Controls.resources => 0x2161bf315d42ddd8 => 300
	i64 2470498323731680442, ; 91: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 234
	i64 2479423007379663237, ; 92: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 279
	i64 2492380397191429704, ; 93: cs/Microsoft.Maui.Controls.resources => 0x2296b6c41bbdfe48 => 299
	i64 2497223385847772520, ; 94: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 95: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 218
	i64 2592350477072141967, ; 96: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2624866290265602282, ; 97: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 98: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 99: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 196
	i64 2706075432581334785, ; 100: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 101: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 102: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 274
	i64 2812926542227278819, ; 103: Google.Apis.Core.dll => 0x270985c960b98be3 => 178
	i64 2815524396660695947, ; 104: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2851879596360956261, ; 105: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 211
	i64 2923871038697555247, ; 106: Jsr305Binding => 0x2893ad37e69ec52f => 286
	i64 3017136373564924869, ; 107: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 108: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 285
	i64 3106852385031680087, ; 109: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3107556380337382748, ; 110: pt/Microsoft.Maui.Controls.resources => 0x2b2042103982255c => 319
	i64 3110390492489056344, ; 111: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 112: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3202009568827554833, ; 113: th/Microsoft.Maui.Controls.resources => 0x2c6fd2bce55e3c11 => 324
	i64 3281594302220646930, ; 114: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 115: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 250
	i64 3295199918926579119, ; 116: Google.Cloud.Logging.Type => 0x2dbae6de1783c5af => 181
	i64 3303437397778967116, ; 117: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 221
	i64 3311221304742556517, ; 118: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 119: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 120: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3344514922410554693, ; 121: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 296
	i64 3429672777697402584, ; 122: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 207
	i64 3430216265859992823, ; 123: Grpc.Auth.dll => 0x2f9a93850d5a0cf7 => 186
	i64 3437845325506641314, ; 124: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 125: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 276
	i64 3494946837667399002, ; 126: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 194
	i64 3508450208084372758, ; 127: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 128: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 275
	i64 3531994851595924923, ; 129: System.Numerics => 0x31042a9aade235bb => 83
	i64 3551103847008531295, ; 130: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3571415421602489686, ; 131: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 132: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 195
	i64 3647754201059316852, ; 133: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 134: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 194
	i64 3659371656528649588, ; 135: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 215
	i64 3716579019761409177, ; 136: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 137: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 268
	i64 3772598417116884899, ; 138: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 242
	i64 3869221888984012293, ; 139: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 198
	i64 3869649043256705283, ; 140: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3890352374528606784, ; 141: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 205
	i64 3919223565570527920, ; 142: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 143: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 144: System.Memory => 0x370b03412596249e => 62
	i64 4006972109285359177, ; 145: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 146: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4056584864658557221, ; 147: Google.Apis.Auth => 0x384be27113330925 => 177
	i64 4073500526318903918, ; 148: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 149: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 203
	i64 4148881117810174540, ; 150: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 151: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 152: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 153: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 154: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 155: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 236
	i64 4205801962323029395, ; 156: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 157: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4282138915307457788, ; 158: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4356591372459378815, ; 159: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 327
	i64 4373617458794931033, ; 160: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4397634830160618470, ; 161: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4477672992252076438, ; 162: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 163: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 164: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4636684751163556186, ; 165: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 280
	i64 4672453897036726049, ; 166: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 167: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 297
	i64 4716677666592453464, ; 168: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4743821336939966868, ; 169: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4758096918493127675, ; 170: Google.Cloud.Logging.V2 => 0x420827f019a9e3fb => 182
	i64 4759461199762736555, ; 171: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 254
	i64 4794310189461587505, ; 172: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 218
	i64 4795410492532947900, ; 173: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 275
	i64 4809057822547766521, ; 174: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 175: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4835744211636393215, ; 176: fi/Microsoft.Maui.Controls.resources => 0x431c03bd573d14ff => 304
	i64 4853321196694829351, ; 177: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 5055365687667823624, ; 178: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 219
	i64 5081566143765835342, ; 179: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 180: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 181: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 182: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 183: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 261
	i64 5244375036463807528, ; 184: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262008351437622660, ; 185: Google.Cloud.Logging.Log4Net.dll => 0x490668b760940d84 => 180
	i64 5262971552273843408, ; 186: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 187: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 188: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 253
	i64 5290786973231294105, ; 189: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5376510917114486089, ; 190: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 279
	i64 5408338804355907810, ; 191: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 277
	i64 5423376490970181369, ; 192: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5440320908473006344, ; 193: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 194: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 195: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 232
	i64 5457765010617926378, ; 196: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5507995362134886206, ; 197: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522795224367697111, ; 198: MetroLog.Maui.dll => 0x4ca4e8fedba90cd7 => 191
	i64 5527431512186326818, ; 199: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 200: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 201: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 202: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 222
	i64 5591791169662171124, ; 203: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5650097808083101034, ; 204: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5656829512427440287, ; 205: MetroLog.Maui => 0x4e8118786b2f089f => 191
	i64 5665389054145784248, ; 206: Google.Apis.Core => 0x4e9f815406bee9b8 => 178
	i64 5692067934154308417, ; 207: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 282
	i64 5724799082821825042, ; 208: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 245
	i64 5757522595884336624, ; 209: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 231
	i64 5783556987928984683, ; 210: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 251
	i64 5939174725034091446, ; 212: pt-BR/Microsoft.Maui.Controls.resources => 0x526c2ff200a2a3b6 => 318
	i64 5959344983920014087, ; 213: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 271
	i64 5979151488806146654, ; 214: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 215: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6068057819846744445, ; 216: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 320
	i64 6102788177522843259, ; 217: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 271
	i64 6222399776351216807, ; 218: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 219: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 220: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 221: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6319713645133255417, ; 222: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 255
	i64 6357457916754632952, ; 223: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 331
	i64 6401687960814735282, ; 224: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 252
	i64 6504860066809920875, ; 225: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 227
	i64 6548213210057960872, ; 226: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 238
	i64 6557084851308642443, ; 227: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 283
	i64 6560151584539558821, ; 228: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 201
	i64 6589202984700901502, ; 229: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 288
	i64 6591971792923354531, ; 230: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 253
	i64 6617685658146568858, ; 231: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6713440830605852118, ; 232: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6734140735192831707, ; 233: uk/Microsoft.Maui.Controls.resources => 0x5d747951d4a816db => 326
	i64 6739853162153639747, ; 234: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6772837112740759457, ; 235: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 236: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 319
	i64 6786606130239981554, ; 237: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6798329586179154312, ; 238: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 239: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6863786117286185127, ; 240: MetroLog.Net6 => 0x5f41111b9719c8a7 => 192
	i64 6876862101832370452, ; 241: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 242: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6987056692196838363, ; 243: System.Management => 0x60f7030ae3e88bdb => 212
	i64 6992482485055401652, ; 244: Google.Cloud.DevTools.Common.dll => 0x610a49c5bbde2eb4 => 179
	i64 7011053663211085209, ; 245: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 247
	i64 7060896174307865760, ; 246: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 247: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 248: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7102513984520274753, ; 249: MetroLog.Net6.dll => 0x629132d693934341 => 192
	i64 7103753931438454322, ; 250: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 248
	i64 7112547816752919026, ; 251: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7186972659700597177, ; 252: MauiApp2 => 0x63bd418e47e601b9 => 0
	i64 7192745174564810625, ; 253: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 217
	i64 7220009545223068405, ; 254: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 323
	i64 7270811800166795866, ; 255: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7299370801165188114, ; 256: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 257: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 258: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 259: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 216
	i64 7377312882064240630, ; 260: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7439799228237803094, ; 261: it/Microsoft.Maui.Controls.resources => 0x673f79faf756ee56 => 311
	i64 7488575175965059935, ; 262: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 263: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7592577537120840276, ; 264: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7621211152690795761, ; 265: Google.LongRunning.dll => 0x69c3fb2a1a6154f1 => 183
	i64 7637303409920963731, ; 266: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7642002156153824904, ; 267: ro/Microsoft.Maui.Controls.resources => 0x6a0dd878d2516688 => 320
	i64 7654504624184590948, ; 268: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7694700312542370399, ; 269: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 270: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 314
	i64 7714652370974252055, ; 271: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 272: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 256
	i64 7735176074855944702, ; 273: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 274: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 291
	i64 7740912860115050295, ; 275: Google.Api.CommonProtos => 0x6b6d3f3bb0691f37 => 173
	i64 7791074099216502080, ; 276: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 277: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 278: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 224
	i64 7843473411302439824, ; 279: Google.LongRunning => 0x6cd99d82d5e73b90 => 183
	i64 8025517457475554965, ; 280: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 281: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8064050204834738623, ; 282: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 283: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 250
	i64 8085230611270010360, ; 284: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 285: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 286: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 287: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 288: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 289: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 290: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 295
	i64 8246048515196606205, ; 291: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 208
	i64 8264926008854159966, ; 292: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 293: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8318905602908530212, ; 294: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 295: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 296: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 233
	i64 8400357532724379117, ; 297: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 265
	i64 8410671156615598628, ; 298: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 299: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 254
	i64 8476857680833348370, ; 300: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 213
	i64 8515752553183989521, ; 301: el/Microsoft.Maui.Controls.resources => 0x762e07d427a84f11 => 302
	i64 8518412311883997971, ; 302: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8557640666902467377, ; 303: tr/Microsoft.Maui.Controls.resources => 0x76c2d8d8a2289331 => 325
	i64 8563666267364444763, ; 304: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8573305974629105867, ; 305: sk/Microsoft.Maui.Controls.resources => 0x76fa805c508080cb => 322
	i64 8579082604483629892, ; 306: log4net.dll => 0x770f062cc2fad344 => 190
	i64 8598790081731763592, ; 307: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 244
	i64 8601935802264776013, ; 308: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 277
	i64 8614108721271900878, ; 309: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 318
	i64 8623059219396073920, ; 310: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 311: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 312: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 313: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 264
	i64 8648495978913578441, ; 314: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8684531736582871431, ; 315: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8685687024490312494, ; 316: Google.Api.Gax.Grpc => 0x7889c2547cf6f32e => 175
	i64 8725526185868997716, ; 317: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8853378295825400934, ; 318: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 292
	i64 8906941675023136603, ; 319: he/Microsoft.Maui.Controls.resources => 0x7b9bd0432ee0775b => 306
	i64 8941376889969657626, ; 320: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 321: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 267
	i64 8954753533646919997, ; 322: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 9138683372487561558, ; 323: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9312692141327339315, ; 324: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 282
	i64 9316287416046110943, ; 325: MauiApp2.dll => 0x814a1a0b8adec8df => 0
	i64 9324707631942237306, ; 326: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 223
	i64 9404599086328396064, ; 327: Grpc.Net.Client.dll => 0x8283d90a93913920 => 188
	i64 9433332390940746032, ; 328: Google.Cloud.Logging.V2.dll => 0x82e9edd46235a130 => 182
	i64 9468215723722196442, ; 329: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9554839972845591462, ; 330: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 331: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 287
	i64 9584643793929893533, ; 332: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9659729154652888475, ; 333: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 334: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 335: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 336: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 234
	i64 9702891218465930390, ; 337: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 338: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 284
	i64 9808709177481450983, ; 339: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9825649861376906464, ; 340: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 231
	i64 9834056768316610435, ; 341: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 342: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9884103019517044980, ; 343: hi/Microsoft.Maui.Controls.resources => 0x892b6353f9ade8f4 => 307
	i64 9907349773706910547, ; 344: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 244
	i64 9933555792566666578, ; 345: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 346: Microsoft.Maui => 0x8a2b8315b36616ac => 206
	i64 9959489431142554298, ; 347: System.CodeDom => 0x8a3736deb7825aba => 210
	i64 9974604633896246661, ; 348: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9991543690424095600, ; 349: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 303
	i64 10017511394021241210, ; 350: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 200
	i64 10038780035334861115, ; 351: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 352: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10051920404523413229, ; 353: Grpc.Net.Common => 0x8b7f9859be1e6eed => 189
	i64 10078727084704864206, ; 354: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 355: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 356: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 204
	i64 10105485790837105934, ; 357: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10226222362177979215, ; 358: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 293
	i64 10226489408795347955, ; 359: sv/Microsoft.Maui.Controls.resources => 0x8debc9ef5e8a8bf3 => 323
	i64 10229024438826829339, ; 360: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 238
	i64 10236703004850800690, ; 361: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 362: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10321854143672141184, ; 363: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 290
	i64 10360651442923773544, ; 364: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 365: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 366: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 276
	i64 10406448008575299332, ; 367: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 296
	i64 10430153318873392755, ; 368: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 235
	i64 10447083246144586668, ; 369: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 193
	i64 10546663366131771576, ; 370: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 371: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 372: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 373: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 374: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10785150219063592792, ; 375: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 376: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10823124638835005028, ; 377: Google.Api.Gax.dll => 0x963376840189d664 => 174
	i64 10830817578243619689, ; 378: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10847732767863316357, ; 379: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 225
	i64 10854473764158213966, ; 380: Grpc.Core.Api.dll => 0x96a2d66108728f4e => 187
	i64 10899834349646441345, ; 381: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 382: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 383: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10984274332520666918, ; 384: zh-Hant/Microsoft.Maui.Controls.resources => 0x986ffb4ee955d726 => 330
	i64 11002576679268595294, ; 385: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 199
	i64 11009005086950030778, ; 386: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 206
	i64 11019817191295005410, ; 387: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 222
	i64 11023048688141570732, ; 388: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 389: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11071824625609515081, ; 390: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 288
	i64 11128133081269842136, ; 391: vi/Microsoft.Maui.Controls.resources => 0x9a6f1213fa5cb0d8 => 327
	i64 11136029745144976707, ; 392: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 286
	i64 11150130305267896488, ; 393: zh-Hans/Microsoft.Maui.Controls.resources => 0x9abd386fcccf90a8 => 329
	i64 11162124722117608902, ; 394: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 281
	i64 11188319605227840848, ; 395: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11226290749488709958, ; 396: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 201
	i64 11235648312900863002, ; 397: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 398: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 399: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 237
	i64 11341245327015630248, ; 400: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 211
	i64 11347436699239206956, ; 401: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11392833485892708388, ; 402: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 266
	i64 11432101114902388181, ; 403: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11435314654401632883, ; 404: Grpc.Core.Api => 0x9eb266175e6d9a73 => 187
	i64 11441445377436144712, ; 405: Grpc.Net.Common.dll => 0x9ec82df38f1dd448 => 189
	i64 11446671985764974897, ; 406: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 407: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11485890710487134646, ; 408: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 409: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 247
	i64 11529969570048099689, ; 410: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 281
	i64 11530571088791430846, ; 411: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 198
	i64 11543207250219725293, ; 412: Grpc.Net.Client => 0xa031b5d5e60f71ed => 188
	i64 11580057168383206117, ; 413: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 220
	i64 11591352189662810718, ; 414: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 274
	i64 11597940890313164233, ; 415: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11672361001936329215, ; 416: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 248
	i64 11692977985522001935, ; 417: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 418: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 306
	i64 11707554492040141440, ; 419: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 420: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11881783603813596996, ; 421: Google.Cloud.Logging.Log4Net => 0xa4e4933c3b5ebf44 => 180
	i64 11888774080858266727, ; 422: hu/Microsoft.Maui.Controls.resources => 0xa4fd6909806d9c67 => 309
	i64 11991047634523762324, ; 423: System.Net => 0xa668c24ad493ae94 => 81
	i64 12040886584167504988, ; 424: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12058589038663511042, ; 425: log4net => 0xa758b6d76df52c02 => 190
	i64 12063623837170009990, ; 426: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 427: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 428: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 429: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12124060477258521817, ; 430: id/Microsoft.Maui.Controls.resources => 0xa84150c49e58dcd9 => 310
	i64 12137774235383566651, ; 431: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 278
	i64 12145679461940342714, ; 432: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 433: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 214
	i64 12201331334810686224, ; 434: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 435: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12332222936682028543, ; 436: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12375446203996702057, ; 437: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12437742355241350664, ; 438: Google.Apis.dll => 0xac9bbcc62bfdb608 => 176
	i64 12451044538927396471, ; 439: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 246
	i64 12466513435562512481, ; 440: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 260
	i64 12475113361194491050, ; 441: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 331
	i64 12487638416075308985, ; 442: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 240
	i64 12517810545449516888, ; 443: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12533156002265635263, ; 444: ru/Microsoft.Maui.Controls.resources => 0xadeeb6fb059919bf => 321
	i64 12538491095302438457, ; 445: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 228
	i64 12550732019250633519, ; 446: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12681088699309157496, ; 447: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 311
	i64 12699999919562409296, ; 448: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 449: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 229
	i64 12708238894395270091, ; 450: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 451: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 452: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12753841065332862057, ; 453: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 283
	i64 12823819093633476069, ; 454: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 324
	i64 12828192437253469131, ; 455: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 294
	i64 12835242264250840079, ; 456: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 457: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 202
	i64 12843770487262409629, ; 458: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 459: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12958614573187252691, ; 460: Google.Apis => 0xb3d63f4bf006c1d3 => 176
	i64 12982280885948128408, ; 461: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 239
	i64 13068258254871114833, ; 462: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13129914918964716986, ; 463: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 243
	i64 13162471042547327635, ; 464: System.Security.Permissions => 0xb6aa7dace9662293 => 213
	i64 13173818576982874404, ; 465: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 466: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 298
	i64 13222659110913276082, ; 467: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 312
	i64 13239674268801700939, ; 468: ca/Microsoft.Maui.Controls.resources => 0xb7bcc599c5ce144b => 298
	i64 13343850469010654401, ; 469: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 470: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13401370062847626945, ; 471: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 278
	i64 13404347523447273790, ; 472: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 233
	i64 13431476299110033919, ; 473: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 474: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 289
	i64 13463706743370286408, ; 475: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 476: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 291
	i64 13467053111158216594, ; 477: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 326
	i64 13491513212026656886, ; 478: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 226
	i64 13545416393490209236, ; 479: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 310
	i64 13572454107664307259, ; 480: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 268
	i64 13578472628727169633, ; 481: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 482: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 483: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 239
	i64 13647894001087880694, ; 484: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 485: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 219
	i64 13702626353344114072, ; 486: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13710614125866346983, ; 487: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 488: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 489: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 490: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 305
	i64 13768883594457632599, ; 491: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13782512541859110153, ; 492: Google.Apis.Auth.dll => 0xbf45522249e0dd09 => 177
	i64 13814445057219246765, ; 493: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 308
	i64 13828521679616088467, ; 494: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 292
	i64 13881769479078963060, ; 495: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 496: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 497: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 498: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 246
	i64 14075334701871371868, ; 499: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14100563506285742564, ; 500: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 300
	i64 14124974489674258913, ; 501: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 228
	i64 14125464355221830302, ; 502: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14178052285788134900, ; 503: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 215
	i64 14212104595480609394, ; 504: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 505: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 506: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 507: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 508: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 509: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 266
	i64 14298246716367104064, ; 510: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 511: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 512: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14331727281556788554, ; 513: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 216
	i64 14346402571976470310, ; 514: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14461014870687870182, ; 515: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14486659737292545672, ; 516: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 251
	i64 14495724990987328804, ; 517: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 269
	i64 14522721392235705434, ; 518: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 302
	i64 14551742072151931844, ; 519: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 520: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 521: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14622043554576106986, ; 522: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14644440854989303794, ; 523: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 261
	i64 14650706219563630045, ; 524: Grpc.Auth => 0xcb51c3af15b23ddd => 186
	i64 14669215534098758659, ; 525: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 196
	i64 14690985099581930927, ; 526: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14792063746108907174, ; 527: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 289
	i64 14832630590065248058, ; 528: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14852515768018889994, ; 529: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 237
	i64 14889905118082851278, ; 530: GoogleGson.dll => 0xcea391d0969961ce => 185
	i64 14892012299694389861, ; 531: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 330
	i64 14912225920358050525, ; 532: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 533: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 534: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 197
	i64 14984936317414011727, ; 535: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 536: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 537: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 240
	i64 15015154896917945444, ; 538: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15024878362326791334, ; 539: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15071021337266399595, ; 540: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 541: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15097078878581906526, ; 542: Google.Api.Gax.Grpc.dll => 0xd183994097ed5c5e => 175
	i64 15115185479366240210, ; 543: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 544: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 545: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 267
	i64 15227001540531775957, ; 546: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 195
	i64 15234786388537674379, ; 547: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15250465174479574862, ; 548: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 549: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 230
	i64 15273147323526128252, ; 550: de/Microsoft.Maui.Controls.resources => 0xd3f51e91f4fba27c => 301
	i64 15279429628684179188, ; 551: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 295
	i64 15299439993936780255, ; 552: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15338463749992804988, ; 553: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15351915747420723413, ; 554: Google.Cloud.Logging.Type.dll => 0xd50cf608cabcd8d5 => 181
	i64 15370334346939861994, ; 555: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 235
	i64 15391712275433856905, ; 556: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 197
	i64 15443314347085689186, ; 557: nl/Microsoft.Maui.Controls.resources => 0xd651ac9394bc7162 => 316
	i64 15474781042002767710, ; 558: hr/Microsoft.Maui.Controls.resources => 0xd6c1775e69862f5e => 308
	i64 15478373401424648762, ; 559: es/Microsoft.Maui.Controls.resources => 0xd6ce3a99c4c55a3a => 303
	i64 15526743539506359484, ; 560: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 561: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 562: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15541854775306130054, ; 563: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 564: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15582737692548360875, ; 565: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 259
	i64 15609085926864131306, ; 566: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 567: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 568: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 301
	i64 15710114879900314733, ; 569: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 570: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 309
	i64 15755368083429170162, ; 571: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 572: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 273
	i64 15817206913877585035, ; 573: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 574: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 575: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15928521404965645318, ; 576: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 203
	i64 15934062614519587357, ; 577: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 578: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15963349826457351533, ; 579: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 580: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 15995174293784908801, ; 581: nb/Microsoft.Maui.Controls.resources => 0xddfa46462d825401 => 315
	i64 16018552496348375205, ; 582: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 583: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16154507427712707110, ; 584: System => 0xe03056ea4e39aa26 => 164
	i64 16198848395322856833, ; 585: ms/Microsoft.Maui.Controls.resources => 0xe0cddeca55a01581 => 314
	i64 16219561732052121626, ; 586: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16315482530584035869, ; 587: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 588: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 199
	i64 16337011941688632206, ; 589: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 590: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 245
	i64 16423015068819898779, ; 591: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 294
	i64 16454459195343277943, ; 592: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16491294355724214223, ; 593: zh-HK/Microsoft.Maui.Controls.resources => 0xe4dcd8d787589fcf => 328
	i64 16496768397145114574, ; 594: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16589693266713801121, ; 595: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 258
	i64 16621146507174665210, ; 596: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 232
	i64 16649148416072044166, ; 597: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 208
	i64 16677317093839702854, ; 598: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 265
	i64 16702652415771857902, ; 599: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 600: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737304880976948124, ; 601: ja/Microsoft.Maui.Controls.resources => 0xe846da1c780aeb9c => 312
	i64 16737807731308835127, ; 602: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 603: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 604: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 605: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16822611501064131242, ; 606: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 607: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 608: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 609: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 610: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16955525858597485057, ; 611: Google.Api.Gax => 0xeb4e20ef25a73a01 => 174
	i64 16977952268158210142, ; 612: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 613: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 258
	i64 16991533501433402966, ; 614: Google.Api.CommonProtos.dll => 0xebce0db1ce165656 => 173
	i64 16998075588627545693, ; 615: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 263
	i64 17008137082415910100, ; 616: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 617: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 221
	i64 17031351772568316411, ; 618: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 262
	i64 17037200463775726619, ; 619: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 249
	i64 17062143951396181894, ; 620: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 621: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 329
	i64 17118171214553292978, ; 622: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17187273293601214786, ; 623: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 624: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 625: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 626: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 627: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 628: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 629: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 630: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17360349973592121190, ; 631: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 287
	i64 17438153253682247751, ; 632: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 322
	i64 17470386307322966175, ; 633: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17482873938501421891, ; 634: fr/Microsoft.Maui.Controls.resources => 0xf29fa538054fcb43 => 305
	i64 17509662556995089465, ; 635: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17522591619082469157, ; 636: GoogleGson => 0xf32cc03d27a5bf25 => 185
	i64 17553799493972570483, ; 637: Google.Protobuf.dll => 0xf39b9fa2c0aab173 => 184
	i64 17590473451926037903, ; 638: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 214
	i64 17627500474728259406, ; 639: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 640: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 641: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 328
	i64 17704177640604968747, ; 642: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 260
	i64 17710060891934109755, ; 643: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 257
	i64 17712670374920797664, ; 644: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 645: System.CodeDom.dll => 0xf63d3f302bff4572 => 210
	i64 17777860260071588075, ; 646: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17838668724098252521, ; 647: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 648: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 290
	i64 17928294245072900555, ; 649: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17992315986609351877, ; 650: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 651: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 652: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 316
	i64 18116111925905154859, ; 653: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 226
	i64 18121036031235206392, ; 654: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 262
	i64 18146411883821974900, ; 655: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 656: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 657: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18245806341561545090, ; 658: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 659: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 243
	i64 18305135509493619199, ; 660: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 264
	i64 18318849532986632368, ; 661: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18380184030268848184, ; 662: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 280
	i64 18439108438687598470 ; 663: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [664 x i32] [
	i32 242, ; 0
	i32 202, ; 1
	i32 171, ; 2
	i32 207, ; 3
	i32 58, ; 4
	i32 229, ; 5
	i32 151, ; 6
	i32 270, ; 7
	i32 273, ; 8
	i32 236, ; 9
	i32 132, ; 10
	i32 56, ; 11
	i32 272, ; 12
	i32 212, ; 13
	i32 304, ; 14
	i32 95, ; 15
	i32 255, ; 16
	i32 129, ; 17
	i32 145, ; 18
	i32 230, ; 19
	i32 18, ; 20
	i32 307, ; 21
	i32 241, ; 22
	i32 256, ; 23
	i32 150, ; 24
	i32 104, ; 25
	i32 95, ; 26
	i32 297, ; 27
	i32 179, ; 28
	i32 285, ; 29
	i32 315, ; 30
	i32 36, ; 31
	i32 28, ; 32
	i32 225, ; 33
	i32 263, ; 34
	i32 50, ; 35
	i32 115, ; 36
	i32 70, ; 37
	i32 204, ; 38
	i32 65, ; 39
	i32 170, ; 40
	i32 145, ; 41
	i32 313, ; 42
	i32 284, ; 43
	i32 224, ; 44
	i32 259, ; 45
	i32 249, ; 46
	i32 317, ; 47
	i32 40, ; 48
	i32 89, ; 49
	i32 81, ; 50
	i32 209, ; 51
	i32 66, ; 52
	i32 62, ; 53
	i32 86, ; 54
	i32 184, ; 55
	i32 223, ; 56
	i32 106, ; 57
	i32 270, ; 58
	i32 102, ; 59
	i32 193, ; 60
	i32 35, ; 61
	i32 220, ; 62
	i32 272, ; 63
	i32 205, ; 64
	i32 325, ; 65
	i32 119, ; 66
	i32 257, ; 67
	i32 299, ; 68
	i32 317, ; 69
	i32 142, ; 70
	i32 141, ; 71
	i32 293, ; 72
	i32 53, ; 73
	i32 35, ; 74
	i32 141, ; 75
	i32 209, ; 76
	i32 313, ; 77
	i32 217, ; 78
	i32 227, ; 79
	i32 200, ; 80
	i32 241, ; 81
	i32 8, ; 82
	i32 14, ; 83
	i32 321, ; 84
	i32 269, ; 85
	i32 51, ; 86
	i32 252, ; 87
	i32 136, ; 88
	i32 101, ; 89
	i32 300, ; 90
	i32 234, ; 91
	i32 279, ; 92
	i32 299, ; 93
	i32 116, ; 94
	i32 218, ; 95
	i32 163, ; 96
	i32 166, ; 97
	i32 67, ; 98
	i32 196, ; 99
	i32 80, ; 100
	i32 101, ; 101
	i32 274, ; 102
	i32 178, ; 103
	i32 117, ; 104
	i32 211, ; 105
	i32 286, ; 106
	i32 78, ; 107
	i32 285, ; 108
	i32 114, ; 109
	i32 319, ; 110
	i32 121, ; 111
	i32 48, ; 112
	i32 324, ; 113
	i32 128, ; 114
	i32 250, ; 115
	i32 181, ; 116
	i32 221, ; 117
	i32 82, ; 118
	i32 110, ; 119
	i32 75, ; 120
	i32 296, ; 121
	i32 207, ; 122
	i32 186, ; 123
	i32 53, ; 124
	i32 276, ; 125
	i32 194, ; 126
	i32 69, ; 127
	i32 275, ; 128
	i32 83, ; 129
	i32 172, ; 130
	i32 116, ; 131
	i32 195, ; 132
	i32 156, ; 133
	i32 194, ; 134
	i32 215, ; 135
	i32 167, ; 136
	i32 268, ; 137
	i32 242, ; 138
	i32 198, ; 139
	i32 32, ; 140
	i32 205, ; 141
	i32 122, ; 142
	i32 72, ; 143
	i32 62, ; 144
	i32 161, ; 145
	i32 113, ; 146
	i32 177, ; 147
	i32 88, ; 148
	i32 203, ; 149
	i32 105, ; 150
	i32 18, ; 151
	i32 146, ; 152
	i32 118, ; 153
	i32 58, ; 154
	i32 236, ; 155
	i32 17, ; 156
	i32 52, ; 157
	i32 92, ; 158
	i32 327, ; 159
	i32 55, ; 160
	i32 129, ; 161
	i32 152, ; 162
	i32 41, ; 163
	i32 92, ; 164
	i32 280, ; 165
	i32 50, ; 166
	i32 297, ; 167
	i32 162, ; 168
	i32 13, ; 169
	i32 182, ; 170
	i32 254, ; 171
	i32 218, ; 172
	i32 275, ; 173
	i32 36, ; 174
	i32 67, ; 175
	i32 304, ; 176
	i32 109, ; 177
	i32 219, ; 178
	i32 99, ; 179
	i32 99, ; 180
	i32 11, ; 181
	i32 11, ; 182
	i32 261, ; 183
	i32 25, ; 184
	i32 180, ; 185
	i32 128, ; 186
	i32 76, ; 187
	i32 253, ; 188
	i32 109, ; 189
	i32 279, ; 190
	i32 277, ; 191
	i32 106, ; 192
	i32 2, ; 193
	i32 26, ; 194
	i32 232, ; 195
	i32 157, ; 196
	i32 21, ; 197
	i32 191, ; 198
	i32 49, ; 199
	i32 43, ; 200
	i32 126, ; 201
	i32 222, ; 202
	i32 59, ; 203
	i32 119, ; 204
	i32 191, ; 205
	i32 178, ; 206
	i32 282, ; 207
	i32 245, ; 208
	i32 231, ; 209
	i32 3, ; 210
	i32 251, ; 211
	i32 318, ; 212
	i32 271, ; 213
	i32 38, ; 214
	i32 124, ; 215
	i32 320, ; 216
	i32 271, ; 217
	i32 137, ; 218
	i32 149, ; 219
	i32 85, ; 220
	i32 90, ; 221
	i32 255, ; 222
	i32 331, ; 223
	i32 252, ; 224
	i32 227, ; 225
	i32 238, ; 226
	i32 283, ; 227
	i32 201, ; 228
	i32 288, ; 229
	i32 253, ; 230
	i32 133, ; 231
	i32 96, ; 232
	i32 326, ; 233
	i32 3, ; 234
	i32 105, ; 235
	i32 319, ; 236
	i32 33, ; 237
	i32 154, ; 238
	i32 158, ; 239
	i32 192, ; 240
	i32 155, ; 241
	i32 82, ; 242
	i32 212, ; 243
	i32 179, ; 244
	i32 247, ; 245
	i32 143, ; 246
	i32 87, ; 247
	i32 19, ; 248
	i32 192, ; 249
	i32 248, ; 250
	i32 51, ; 251
	i32 0, ; 252
	i32 217, ; 253
	i32 323, ; 254
	i32 61, ; 255
	i32 54, ; 256
	i32 4, ; 257
	i32 97, ; 258
	i32 216, ; 259
	i32 17, ; 260
	i32 311, ; 261
	i32 155, ; 262
	i32 84, ; 263
	i32 29, ; 264
	i32 183, ; 265
	i32 45, ; 266
	i32 320, ; 267
	i32 64, ; 268
	i32 66, ; 269
	i32 314, ; 270
	i32 172, ; 271
	i32 256, ; 272
	i32 1, ; 273
	i32 291, ; 274
	i32 173, ; 275
	i32 47, ; 276
	i32 24, ; 277
	i32 224, ; 278
	i32 183, ; 279
	i32 165, ; 280
	i32 108, ; 281
	i32 12, ; 282
	i32 250, ; 283
	i32 63, ; 284
	i32 27, ; 285
	i32 23, ; 286
	i32 93, ; 287
	i32 168, ; 288
	i32 12, ; 289
	i32 295, ; 290
	i32 208, ; 291
	i32 29, ; 292
	i32 103, ; 293
	i32 14, ; 294
	i32 126, ; 295
	i32 233, ; 296
	i32 265, ; 297
	i32 91, ; 298
	i32 254, ; 299
	i32 213, ; 300
	i32 302, ; 301
	i32 9, ; 302
	i32 325, ; 303
	i32 86, ; 304
	i32 322, ; 305
	i32 190, ; 306
	i32 244, ; 307
	i32 277, ; 308
	i32 318, ; 309
	i32 71, ; 310
	i32 168, ; 311
	i32 1, ; 312
	i32 264, ; 313
	i32 5, ; 314
	i32 44, ; 315
	i32 175, ; 316
	i32 27, ; 317
	i32 292, ; 318
	i32 306, ; 319
	i32 158, ; 320
	i32 267, ; 321
	i32 112, ; 322
	i32 121, ; 323
	i32 282, ; 324
	i32 0, ; 325
	i32 223, ; 326
	i32 188, ; 327
	i32 182, ; 328
	i32 159, ; 329
	i32 131, ; 330
	i32 287, ; 331
	i32 57, ; 332
	i32 138, ; 333
	i32 83, ; 334
	i32 30, ; 335
	i32 234, ; 336
	i32 10, ; 337
	i32 284, ; 338
	i32 171, ; 339
	i32 231, ; 340
	i32 150, ; 341
	i32 94, ; 342
	i32 307, ; 343
	i32 244, ; 344
	i32 60, ; 345
	i32 206, ; 346
	i32 210, ; 347
	i32 157, ; 348
	i32 303, ; 349
	i32 200, ; 350
	i32 64, ; 351
	i32 88, ; 352
	i32 189, ; 353
	i32 79, ; 354
	i32 47, ; 355
	i32 204, ; 356
	i32 143, ; 357
	i32 293, ; 358
	i32 323, ; 359
	i32 238, ; 360
	i32 74, ; 361
	i32 91, ; 362
	i32 290, ; 363
	i32 135, ; 364
	i32 90, ; 365
	i32 276, ; 366
	i32 296, ; 367
	i32 235, ; 368
	i32 193, ; 369
	i32 112, ; 370
	i32 42, ; 371
	i32 159, ; 372
	i32 4, ; 373
	i32 103, ; 374
	i32 70, ; 375
	i32 60, ; 376
	i32 174, ; 377
	i32 39, ; 378
	i32 225, ; 379
	i32 187, ; 380
	i32 153, ; 381
	i32 56, ; 382
	i32 34, ; 383
	i32 330, ; 384
	i32 199, ; 385
	i32 206, ; 386
	i32 222, ; 387
	i32 21, ; 388
	i32 163, ; 389
	i32 288, ; 390
	i32 327, ; 391
	i32 286, ; 392
	i32 329, ; 393
	i32 281, ; 394
	i32 140, ; 395
	i32 201, ; 396
	i32 89, ; 397
	i32 147, ; 398
	i32 237, ; 399
	i32 211, ; 400
	i32 162, ; 401
	i32 266, ; 402
	i32 6, ; 403
	i32 187, ; 404
	i32 189, ; 405
	i32 169, ; 406
	i32 31, ; 407
	i32 107, ; 408
	i32 247, ; 409
	i32 281, ; 410
	i32 198, ; 411
	i32 188, ; 412
	i32 220, ; 413
	i32 274, ; 414
	i32 167, ; 415
	i32 248, ; 416
	i32 140, ; 417
	i32 306, ; 418
	i32 59, ; 419
	i32 144, ; 420
	i32 180, ; 421
	i32 309, ; 422
	i32 81, ; 423
	i32 74, ; 424
	i32 190, ; 425
	i32 130, ; 426
	i32 25, ; 427
	i32 7, ; 428
	i32 93, ; 429
	i32 310, ; 430
	i32 278, ; 431
	i32 137, ; 432
	i32 214, ; 433
	i32 113, ; 434
	i32 9, ; 435
	i32 104, ; 436
	i32 19, ; 437
	i32 176, ; 438
	i32 246, ; 439
	i32 260, ; 440
	i32 331, ; 441
	i32 240, ; 442
	i32 33, ; 443
	i32 321, ; 444
	i32 228, ; 445
	i32 46, ; 446
	i32 311, ; 447
	i32 30, ; 448
	i32 229, ; 449
	i32 57, ; 450
	i32 134, ; 451
	i32 114, ; 452
	i32 283, ; 453
	i32 324, ; 454
	i32 294, ; 455
	i32 55, ; 456
	i32 202, ; 457
	i32 6, ; 458
	i32 77, ; 459
	i32 176, ; 460
	i32 239, ; 461
	i32 111, ; 462
	i32 243, ; 463
	i32 213, ; 464
	i32 102, ; 465
	i32 298, ; 466
	i32 312, ; 467
	i32 298, ; 468
	i32 170, ; 469
	i32 115, ; 470
	i32 278, ; 471
	i32 233, ; 472
	i32 76, ; 473
	i32 289, ; 474
	i32 85, ; 475
	i32 291, ; 476
	i32 326, ; 477
	i32 226, ; 478
	i32 310, ; 479
	i32 268, ; 480
	i32 160, ; 481
	i32 2, ; 482
	i32 239, ; 483
	i32 24, ; 484
	i32 219, ; 485
	i32 32, ; 486
	i32 117, ; 487
	i32 37, ; 488
	i32 16, ; 489
	i32 305, ; 490
	i32 52, ; 491
	i32 177, ; 492
	i32 308, ; 493
	i32 292, ; 494
	i32 20, ; 495
	i32 123, ; 496
	i32 154, ; 497
	i32 246, ; 498
	i32 131, ; 499
	i32 300, ; 500
	i32 228, ; 501
	i32 148, ; 502
	i32 215, ; 503
	i32 120, ; 504
	i32 28, ; 505
	i32 132, ; 506
	i32 100, ; 507
	i32 134, ; 508
	i32 266, ; 509
	i32 153, ; 510
	i32 97, ; 511
	i32 125, ; 512
	i32 216, ; 513
	i32 69, ; 514
	i32 72, ; 515
	i32 251, ; 516
	i32 269, ; 517
	i32 302, ; 518
	i32 136, ; 519
	i32 124, ; 520
	i32 71, ; 521
	i32 111, ; 522
	i32 261, ; 523
	i32 186, ; 524
	i32 196, ; 525
	i32 152, ; 526
	i32 289, ; 527
	i32 118, ; 528
	i32 237, ; 529
	i32 185, ; 530
	i32 330, ; 531
	i32 127, ; 532
	i32 133, ; 533
	i32 197, ; 534
	i32 77, ; 535
	i32 46, ; 536
	i32 240, ; 537
	i32 73, ; 538
	i32 63, ; 539
	i32 98, ; 540
	i32 84, ; 541
	i32 175, ; 542
	i32 43, ; 543
	i32 61, ; 544
	i32 267, ; 545
	i32 195, ; 546
	i32 37, ; 547
	i32 40, ; 548
	i32 230, ; 549
	i32 301, ; 550
	i32 295, ; 551
	i32 160, ; 552
	i32 98, ; 553
	i32 181, ; 554
	i32 235, ; 555
	i32 197, ; 556
	i32 316, ; 557
	i32 308, ; 558
	i32 303, ; 559
	i32 135, ; 560
	i32 20, ; 561
	i32 65, ; 562
	i32 125, ; 563
	i32 75, ; 564
	i32 259, ; 565
	i32 164, ; 566
	i32 156, ; 567
	i32 301, ; 568
	i32 5, ; 569
	i32 309, ; 570
	i32 49, ; 571
	i32 273, ; 572
	i32 144, ; 573
	i32 139, ; 574
	i32 100, ; 575
	i32 203, ; 576
	i32 123, ; 577
	i32 120, ; 578
	i32 142, ; 579
	i32 39, ; 580
	i32 315, ; 581
	i32 68, ; 582
	i32 41, ; 583
	i32 164, ; 584
	i32 314, ; 585
	i32 73, ; 586
	i32 165, ; 587
	i32 199, ; 588
	i32 127, ; 589
	i32 245, ; 590
	i32 294, ; 591
	i32 68, ; 592
	i32 328, ; 593
	i32 169, ; 594
	i32 258, ; 595
	i32 232, ; 596
	i32 208, ; 597
	i32 265, ; 598
	i32 151, ; 599
	i32 45, ; 600
	i32 312, ; 601
	i32 108, ; 602
	i32 48, ; 603
	i32 96, ; 604
	i32 31, ; 605
	i32 23, ; 606
	i32 166, ; 607
	i32 22, ; 608
	i32 138, ; 609
	i32 78, ; 610
	i32 174, ; 611
	i32 54, ; 612
	i32 258, ; 613
	i32 173, ; 614
	i32 263, ; 615
	i32 10, ; 616
	i32 221, ; 617
	i32 262, ; 618
	i32 249, ; 619
	i32 16, ; 620
	i32 329, ; 621
	i32 139, ; 622
	i32 13, ; 623
	i32 15, ; 624
	i32 122, ; 625
	i32 87, ; 626
	i32 149, ; 627
	i32 22, ; 628
	i32 34, ; 629
	i32 79, ; 630
	i32 287, ; 631
	i32 322, ; 632
	i32 147, ; 633
	i32 305, ; 634
	i32 80, ; 635
	i32 185, ; 636
	i32 184, ; 637
	i32 214, ; 638
	i32 42, ; 639
	i32 26, ; 640
	i32 328, ; 641
	i32 260, ; 642
	i32 257, ; 643
	i32 107, ; 644
	i32 210, ; 645
	i32 110, ; 646
	i32 7, ; 647
	i32 290, ; 648
	i32 44, ; 649
	i32 161, ; 650
	i32 148, ; 651
	i32 316, ; 652
	i32 226, ; 653
	i32 262, ; 654
	i32 38, ; 655
	i32 15, ; 656
	i32 146, ; 657
	i32 8, ; 658
	i32 243, ; 659
	i32 264, ; 660
	i32 130, ; 661
	i32 280, ; 662
	i32 94 ; 663
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 0d97e20b84d8e87c3502469ee395805907905fe3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
