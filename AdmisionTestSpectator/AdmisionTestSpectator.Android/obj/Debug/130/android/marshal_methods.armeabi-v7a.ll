; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [228 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 72
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 102
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 57967248, ; 3: Xamarin.Android.Support.VersionedParcelable.dll => 0x3748290 => 41
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 86
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 86
	i32 160529393, ; 6: Xamarin.Android.Arch.Core.Common => 0x9917bf1 => 16
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 53
	i32 166922606, ; 8: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 26
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 87
	i32 201930040, ; 10: Xamarin.Android.Arch.Core.Runtime => 0xc093538 => 17
	i32 209399409, ; 11: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 51
	i32 230216969, ; 12: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 67
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 112
	i32 261689757, ; 14: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 56
	i32 278686392, ; 15: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 71
	i32 280482487, ; 16: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 65
	i32 318968648, ; 17: Xamarin.AndroidX.Activity.dll => 0x13031348 => 43
	i32 321597661, ; 18: System.Numerics => 0x132b30dd => 11
	i32 342366114, ; 19: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 69
	i32 389971796, ; 20: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 28
	i32 441335492, ; 21: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 55
	i32 442521989, ; 22: Xamarin.Essentials => 0x1a605985 => 96
	i32 450948140, ; 23: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 64
	i32 465846621, ; 24: mscorlib => 0x1bc4415d => 7
	i32 469710990, ; 25: System.dll => 0x1bff388e => 9
	i32 476646585, ; 26: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 65
	i32 486930444, ; 27: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 76
	i32 514659665, ; 28: Xamarin.Android.Support.Compat => 0x1ead1551 => 26
	i32 519223356, ; 29: AdmisionTestSpectator.Android.dll => 0x1ef2b83c => 0
	i32 524864063, ; 30: Xamarin.Android.Support.Print => 0x1f48ca3f => 38
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 106
	i32 605376203, ; 32: System.IO.Compression.FileSystem => 0x24154ecb => 110
	i32 627609679, ; 33: Xamarin.AndroidX.CustomView => 0x2568904f => 60
	i32 663517072, ; 34: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 92
	i32 666292255, ; 35: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 48
	i32 690569205, ; 36: System.Xml.Linq.dll => 0x29293ff5 => 15
	i32 692692150, ; 37: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 23
	i32 775507847, ; 38: System.IO.Compression => 0x2e394f87 => 109
	i32 801787702, ; 39: Xamarin.Android.Support.Interpolator => 0x2fca4f36 => 35
	i32 809851609, ; 40: System.Drawing.Common.dll => 0x30455ad9 => 108
	i32 843511501, ; 41: Xamarin.AndroidX.Print => 0x3246f6cd => 83
	i32 916714535, ; 42: Xamarin.Android.Support.Print.dll => 0x36a3f427 => 38
	i32 928116545, ; 43: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 102
	i32 967690846, ; 44: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 69
	i32 974778368, ; 45: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 987342438, ; 46: Xamarin.Android.Arch.Lifecycle.LiveData.dll => 0x3ad9a666 => 20
	i32 1012816738, ; 47: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 85
	i32 1035644815, ; 48: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 47
	i32 1042160112, ; 49: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 99
	i32 1052210849, ; 50: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 73
	i32 1098167829, ; 51: Xamarin.Android.Arch.Lifecycle.ViewModel => 0x4174b615 => 22
	i32 1098259244, ; 52: System => 0x41761b2c => 9
	i32 1175144683, ; 53: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 90
	i32 1178241025, ; 54: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 80
	i32 1204270330, ; 55: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 48
	i32 1267360935, ; 56: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 91
	i32 1292763917, ; 57: Xamarin.Android.Support.CursorAdapter.dll => 0x4d0e030d => 30
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 62
	i32 1297413738, ; 59: Xamarin.Android.Arch.Lifecycle.LiveData.Core => 0x4d54f66a => 19
	i32 1365406463, ; 60: System.ServiceModel.Internals.dll => 0x516272ff => 103
	i32 1376866003, ; 61: Xamarin.AndroidX.SavedState => 0x52114ed3 => 85
	i32 1395857551, ; 62: Xamarin.AndroidX.Media.dll => 0x5333188f => 77
	i32 1406073936, ; 63: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 57
	i32 1460219004, ; 64: Xamarin.Forms.Xaml => 0x57092c7c => 100
	i32 1462112819, ; 65: System.IO.Compression.dll => 0x57261233 => 109
	i32 1469204771, ; 66: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 46
	i32 1574652163, ; 67: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 29
	i32 1582372066, ; 68: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 61
	i32 1587447679, ; 69: Xamarin.Android.Arch.Core.Common.dll => 0x5e9e877f => 16
	i32 1592978981, ; 70: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 71: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 75
	i32 1624863272, ; 72: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 94
	i32 1636350590, ; 73: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 59
	i32 1639515021, ; 74: System.Net.Http.dll => 0x61b9038d => 1
	i32 1657153582, ; 75: System.Runtime => 0x62c6282e => 13
	i32 1658241508, ; 76: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 88
	i32 1658251792, ; 77: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 101
	i32 1670060433, ; 78: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 56
	i32 1729485958, ; 79: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 52
	i32 1766324549, ; 80: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 87
	i32 1776026572, ; 81: System.Core.dll => 0x69dc03cc => 8
	i32 1788241197, ; 82: Xamarin.AndroidX.Fragment => 0x6a96652d => 64
	i32 1808609942, ; 83: Xamarin.AndroidX.Loader => 0x6bcd3296 => 75
	i32 1813201214, ; 84: Xamarin.Google.Android.Material => 0x6c13413e => 101
	i32 1818569960, ; 85: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 81
	i32 1866717392, ; 86: Xamarin.Android.Support.Interpolator.dll => 0x6f43d8d0 => 35
	i32 1867746548, ; 87: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1878053835, ; 88: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 100
	i32 1885316902, ; 89: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 49
	i32 1916660109, ; 90: Xamarin.Android.Arch.Lifecycle.ViewModel.dll => 0x723de98d => 22
	i32 1919157823, ; 91: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 78
	i32 2019465201, ; 92: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 73
	i32 2037417872, ; 93: Xamarin.Android.Support.ViewPager => 0x79708790 => 42
	i32 2044222327, ; 94: Xamarin.Android.Support.Loader => 0x79d85b77 => 36
	i32 2055257422, ; 95: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 70
	i32 2079903147, ; 96: System.Runtime.dll => 0x7bf8cdab => 13
	i32 2090596640, ; 97: System.Numerics.Vectors => 0x7c9bf920 => 12
	i32 2097448633, ; 98: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 66
	i32 2126786730, ; 99: Xamarin.Forms.Platform.Android => 0x7ec430aa => 98
	i32 2139458754, ; 100: Xamarin.Android.Support.DrawerLayout => 0x7f858cc2 => 34
	i32 2166116741, ; 101: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 29
	i32 2188064486, ; 102: System.Json.dll => 0x826b36e6 => 10
	i32 2196165013, ; 103: Xamarin.Android.Support.VersionedParcelable => 0x82e6d195 => 41
	i32 2201231467, ; 104: System.Net.Http => 0x8334206b => 1
	i32 2217644978, ; 105: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 90
	i32 2244775296, ; 106: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 76
	i32 2256548716, ; 107: Xamarin.AndroidX.MultiDex => 0x8680336c => 78
	i32 2261435625, ; 108: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 68
	i32 2279755925, ; 109: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 84
	i32 2315684594, ; 110: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 44
	i32 2330457430, ; 111: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 28
	i32 2330986192, ; 112: Xamarin.Android.Support.SlidingPaneLayout.dll => 0x8af006d0 => 39
	i32 2409053734, ; 113: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 82
	i32 2440966767, ; 114: Xamarin.Android.Support.Loader.dll => 0x917e326f => 36
	i32 2465532216, ; 115: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 55
	i32 2471841756, ; 116: netstandard.dll => 0x93554fdc => 104
	i32 2475788418, ; 117: Java.Interop.dll => 0x93918882 => 5
	i32 2487632829, ; 118: Xamarin.Android.Support.DocumentFile => 0x944643bd => 33
	i32 2501346920, ; 119: System.Data.DataSetExtensions => 0x95178668 => 107
	i32 2505896520, ; 120: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 72
	i32 2581819634, ; 121: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 91
	i32 2620871830, ; 122: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 59
	i32 2624644809, ; 123: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 63
	i32 2633051222, ; 124: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 71
	i32 2698266930, ; 125: Xamarin.Android.Arch.Lifecycle.LiveData => 0xa0d44932 => 20
	i32 2701096212, ; 126: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 88
	i32 2732626843, ; 127: Xamarin.AndroidX.Activity => 0xa2e0939b => 43
	i32 2737747696, ; 128: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 46
	i32 2751899777, ; 129: Xamarin.Android.Support.Collections => 0xa406a881 => 25
	i32 2766581644, ; 130: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2776433752, ; 131: AdmisionTestSpectator.Android => 0xa57d0458 => 0
	i32 2778768386, ; 132: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 93
	i32 2782647110, ; 133: Xamarin.Android.Support.CustomTabs.dll => 0xa5dbd346 => 31
	i32 2788639665, ; 134: Xamarin.Android.Support.LocalBroadcastManager => 0xa63743b1 => 37
	i32 2788775637, ; 135: Xamarin.Android.Support.SwipeRefreshLayout.dll => 0xa63956d5 => 40
	i32 2810250172, ; 136: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 57
	i32 2819470561, ; 137: System.Xml.dll => 0xa80db4e1 => 14
	i32 2853208004, ; 138: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 93
	i32 2855708567, ; 139: Xamarin.AndroidX.Transition => 0xaa36a797 => 89
	i32 2876493027, ; 140: Xamarin.Android.Support.SwipeRefreshLayout => 0xab73cce3 => 40
	i32 2893257763, ; 141: Xamarin.Android.Arch.Core.Runtime.dll => 0xac739c23 => 17
	i32 2903344695, ; 142: System.ComponentModel.Composition => 0xad0d8637 => 111
	i32 2905242038, ; 143: mscorlib.dll => 0xad2a79b6 => 7
	i32 2916838712, ; 144: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 94
	i32 2919462931, ; 145: System.Numerics.Vectors.dll => 0xae037813 => 12
	i32 2921128767, ; 146: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 45
	i32 2921692953, ; 147: Xamarin.Android.Support.CustomView.dll => 0xae257f19 => 32
	i32 2978675010, ; 148: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 62
	i32 3024354802, ; 149: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 67
	i32 3044182254, ; 150: FormsViewGroup => 0xb57288ee => 4
	i32 3056250942, ; 151: Xamarin.Android.Support.AsyncLayoutInflater.dll => 0xb62ab03e => 24
	i32 3057625584, ; 152: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 79
	i32 3068715062, ; 153: Xamarin.Android.Arch.Lifecycle.Common => 0xb6e8e036 => 18
	i32 3111772706, ; 154: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3191408315, ; 155: Xamarin.Android.Support.CustomTabs => 0xbe3906bb => 31
	i32 3201217166, ; 156: System.Json => 0xbeceb28e => 10
	i32 3204380047, ; 157: System.Data.dll => 0xbefef58f => 105
	i32 3204912593, ; 158: Xamarin.Android.Support.AsyncLayoutInflater => 0xbf0715d1 => 24
	i32 3211777861, ; 159: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 61
	i32 3233339011, ; 160: Xamarin.Android.Arch.Lifecycle.LiveData.Core.dll => 0xc0b8d683 => 19
	i32 3247949154, ; 161: Mono.Security => 0xc197c562 => 113
	i32 3258312781, ; 162: Xamarin.AndroidX.CardView => 0xc235e84d => 52
	i32 3267021929, ; 163: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 50
	i32 3296380511, ; 164: Xamarin.Android.Support.Collections.dll => 0xc47ac65f => 25
	i32 3317135071, ; 165: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 60
	i32 3317144872, ; 166: System.Data => 0xc5b79d28 => 105
	i32 3321585405, ; 167: Xamarin.Android.Support.DocumentFile.dll => 0xc5fb5efd => 33
	i32 3340431453, ; 168: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 49
	i32 3346324047, ; 169: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 80
	i32 3352662376, ; 170: Xamarin.Android.Support.CoordinaterLayout => 0xc7d59168 => 27
	i32 3353484488, ; 171: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 66
	i32 3357663996, ; 172: Xamarin.Android.Support.CursorAdapter => 0xc821e2fc => 30
	i32 3362522851, ; 173: Xamarin.AndroidX.Core => 0xc86c06e3 => 58
	i32 3366347497, ; 174: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 175: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 84
	i32 3384801434, ; 176: Xamarin.Auth.dll => 0xc9bff89a => 95
	i32 3404865022, ; 177: System.ServiceModel.Internals => 0xcaf21dfe => 103
	i32 3429136800, ; 178: System.Xml => 0xcc6479a0 => 14
	i32 3430777524, ; 179: netstandard => 0xcc7d82b4 => 104
	i32 3439690031, ; 180: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 23
	i32 3441283291, ; 181: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 63
	i32 3476120550, ; 182: Mono.Android => 0xcf3163e6 => 6
	i32 3486566296, ; 183: System.Transactions => 0xcfd0c798 => 106
	i32 3493954962, ; 184: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 54
	i32 3501239056, ; 185: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 50
	i32 3504448265, ; 186: AdmisionTestSpectator => 0xd0e1a309 => 3
	i32 3509114376, ; 187: System.Xml.Linq => 0xd128d608 => 15
	i32 3536029504, ; 188: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 98
	i32 3547625832, ; 189: Xamarin.Android.Support.SlidingPaneLayout => 0xd3747968 => 39
	i32 3567349600, ; 190: System.ComponentModel.Composition.dll => 0xd4a16f60 => 111
	i32 3618140916, ; 191: Xamarin.AndroidX.Preference => 0xd7a872f4 => 82
	i32 3627220390, ; 192: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 83
	i32 3632359727, ; 193: Xamarin.Forms.Platform => 0xd881692f => 99
	i32 3633644679, ; 194: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 45
	i32 3641597786, ; 195: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 70
	i32 3664423555, ; 196: Xamarin.Android.Support.ViewPager.dll => 0xda6aaa83 => 42
	i32 3672681054, ; 197: Mono.Android.dll => 0xdae8aa5e => 6
	i32 3676310014, ; 198: System.Web.Services.dll => 0xdb2009fe => 112
	i32 3681174138, ; 199: Xamarin.Android.Arch.Lifecycle.Common.dll => 0xdb6a427a => 18
	i32 3682565725, ; 200: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 51
	i32 3684561358, ; 201: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 54
	i32 3689375977, ; 202: System.Drawing.Common => 0xdbe768e9 => 108
	i32 3714038699, ; 203: Xamarin.Android.Support.LocalBroadcastManager.dll => 0xdd5fbbab => 37
	i32 3718780102, ; 204: Xamarin.AndroidX.Annotation => 0xdda814c6 => 44
	i32 3724971120, ; 205: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 79
	i32 3758932259, ; 206: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 68
	i32 3774555925, ; 207: AdmisionTestSpectator.dll => 0xe0fb2715 => 3
	i32 3776062606, ; 208: Xamarin.Android.Support.DrawerLayout.dll => 0xe112248e => 34
	i32 3786282454, ; 209: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 53
	i32 3822602673, ; 210: Xamarin.AndroidX.Media => 0xe3d849b1 => 77
	i32 3829621856, ; 211: System.Numerics.dll => 0xe4436460 => 11
	i32 3832731800, ; 212: Xamarin.Android.Support.CoordinaterLayout.dll => 0xe472d898 => 27
	i32 3862817207, ; 213: Xamarin.Android.Arch.Lifecycle.Runtime.dll => 0xe63de9b7 => 21
	i32 3874897629, ; 214: Xamarin.Android.Arch.Lifecycle.Runtime => 0xe6f63edd => 21
	i32 3885922214, ; 215: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 89
	i32 3896760992, ; 216: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 58
	i32 3920810846, ; 217: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 110
	i32 3921031405, ; 218: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 92
	i32 3931092270, ; 219: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 81
	i32 3945713374, ; 220: System.Data.DataSetExtensions.dll => 0xeb2ecede => 107
	i32 3955647286, ; 221: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 47
	i32 4014452692, ; 222: Xamarin.Auth => 0xef47afd4 => 95
	i32 4063435586, ; 223: Xamarin.Android.Support.CustomView => 0xf2331b42 => 32
	i32 4105002889, ; 224: Mono.Security.dll => 0xf4ad5f89 => 113
	i32 4151237749, ; 225: System.Core => 0xf76edc75 => 8
	i32 4182413190, ; 226: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 74
	i32 4292120959 ; 227: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 74
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [228 x i32] [
	i32 72, i32 102, i32 97, i32 41, i32 86, i32 86, i32 16, i32 53, ; 0..7
	i32 26, i32 87, i32 17, i32 51, i32 67, i32 112, i32 56, i32 71, ; 8..15
	i32 65, i32 43, i32 11, i32 69, i32 28, i32 55, i32 96, i32 64, ; 16..23
	i32 7, i32 9, i32 65, i32 76, i32 26, i32 0, i32 38, i32 106, ; 24..31
	i32 110, i32 60, i32 92, i32 48, i32 15, i32 23, i32 109, i32 35, ; 32..39
	i32 108, i32 83, i32 38, i32 102, i32 69, i32 4, i32 20, i32 85, ; 40..47
	i32 47, i32 99, i32 73, i32 22, i32 9, i32 90, i32 80, i32 48, ; 48..55
	i32 91, i32 30, i32 62, i32 19, i32 103, i32 85, i32 77, i32 57, ; 56..63
	i32 100, i32 109, i32 46, i32 29, i32 61, i32 16, i32 2, i32 75, ; 64..71
	i32 94, i32 59, i32 1, i32 13, i32 88, i32 101, i32 56, i32 52, ; 72..79
	i32 87, i32 8, i32 64, i32 75, i32 101, i32 81, i32 35, i32 96, ; 80..87
	i32 100, i32 49, i32 22, i32 78, i32 73, i32 42, i32 36, i32 70, ; 88..95
	i32 13, i32 12, i32 66, i32 98, i32 34, i32 29, i32 10, i32 41, ; 96..103
	i32 1, i32 90, i32 76, i32 78, i32 68, i32 84, i32 44, i32 28, ; 104..111
	i32 39, i32 82, i32 36, i32 55, i32 104, i32 5, i32 33, i32 107, ; 112..119
	i32 72, i32 91, i32 59, i32 63, i32 71, i32 20, i32 88, i32 43, ; 120..127
	i32 46, i32 25, i32 97, i32 0, i32 93, i32 31, i32 37, i32 40, ; 128..135
	i32 57, i32 14, i32 93, i32 89, i32 40, i32 17, i32 111, i32 7, ; 136..143
	i32 94, i32 12, i32 45, i32 32, i32 62, i32 67, i32 4, i32 24, ; 144..151
	i32 79, i32 18, i32 2, i32 31, i32 10, i32 105, i32 24, i32 61, ; 152..159
	i32 19, i32 113, i32 52, i32 50, i32 25, i32 60, i32 105, i32 33, ; 160..167
	i32 49, i32 80, i32 27, i32 66, i32 30, i32 58, i32 5, i32 84, ; 168..175
	i32 95, i32 103, i32 14, i32 104, i32 23, i32 63, i32 6, i32 106, ; 176..183
	i32 54, i32 50, i32 3, i32 15, i32 98, i32 39, i32 111, i32 82, ; 184..191
	i32 83, i32 99, i32 45, i32 70, i32 42, i32 6, i32 112, i32 18, ; 192..199
	i32 51, i32 54, i32 108, i32 37, i32 44, i32 79, i32 68, i32 3, ; 200..207
	i32 34, i32 53, i32 77, i32 11, i32 27, i32 21, i32 21, i32 89, ; 208..215
	i32 58, i32 110, i32 92, i32 81, i32 107, i32 47, i32 95, i32 32, ; 216..223
	i32 113, i32 8, i32 74, i32 74 ; 224..227
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
