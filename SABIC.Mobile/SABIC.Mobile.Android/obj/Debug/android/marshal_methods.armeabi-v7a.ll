; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [204 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 52
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 84
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 79
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 68
	i32 120558881, ; 4: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 68
	i32 134690465, ; 5: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 88
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 29
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 70
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 27
	i32 230216969, ; 9: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 46
	i32 232815796, ; 10: System.Web.Services => 0xde07cb4 => 99
	i32 261689757, ; 11: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 32
	i32 278686392, ; 12: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 50
	i32 280482487, ; 13: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 44
	i32 318968648, ; 14: Xamarin.AndroidX.Activity.dll => 0x13031348 => 19
	i32 321597661, ; 15: System.Numerics => 0x132b30dd => 14
	i32 342366114, ; 16: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 48
	i32 441335492, ; 17: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 31
	i32 442521989, ; 18: Xamarin.Essentials => 0x1a605985 => 78
	i32 450948140, ; 19: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 43
	i32 465846621, ; 20: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 21: System.dll => 0x1bff388e => 13
	i32 476646585, ; 22: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 44
	i32 486930444, ; 23: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 56
	i32 526420162, ; 24: System.Transactions.dll => 0x1f6088c2 => 93
	i32 527452488, ; 25: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 88
	i32 605376203, ; 26: System.IO.Compression.FileSystem => 0x24154ecb => 97
	i32 627609679, ; 27: Xamarin.AndroidX.CustomView => 0x2568904f => 37
	i32 639843206, ; 28: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 42
	i32 663517072, ; 29: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 75
	i32 666292255, ; 30: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 24
	i32 690569205, ; 31: System.Xml.Linq.dll => 0x29293ff5 => 18
	i32 691348768, ; 32: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 90
	i32 700284507, ; 33: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 85
	i32 720511267, ; 34: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 89
	i32 775507847, ; 35: System.IO.Compression => 0x2e394f87 => 96
	i32 795075463, ; 36: SABIC.Mobile => 0x2f63e387 => 11
	i32 809851609, ; 37: System.Drawing.Common.dll => 0x30455ad9 => 95
	i32 843511501, ; 38: Xamarin.AndroidX.Print => 0x3246f6cd => 63
	i32 928116545, ; 39: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 84
	i32 956575887, ; 40: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 89
	i32 957807352, ; 41: Plugin.CurrentActivity => 0x3916faf8 => 10
	i32 967690846, ; 42: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 48
	i32 974778368, ; 43: FormsViewGroup.dll => 0x3a19f000 => 4
	i32 1012816738, ; 44: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 67
	i32 1028951442, ; 45: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 6
	i32 1035644815, ; 46: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 23
	i32 1042160112, ; 47: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 81
	i32 1052210849, ; 48: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 53
	i32 1080677919, ; 49: SABIC.Mobile.dll => 0x4069d61f => 11
	i32 1084122840, ; 50: Xamarin.Kotlin.StdLib => 0x409e66d8 => 87
	i32 1098259244, ; 51: System => 0x41761b2c => 13
	i32 1175144683, ; 52: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 73
	i32 1178241025, ; 53: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 60
	i32 1204270330, ; 54: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 24
	i32 1264511973, ; 55: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 69
	i32 1267360935, ; 56: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 74
	i32 1275534314, ; 57: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 90
	i32 1293217323, ; 58: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 39
	i32 1365406463, ; 59: System.ServiceModel.Internals.dll => 0x516272ff => 100
	i32 1376866003, ; 60: Xamarin.AndroidX.SavedState => 0x52114ed3 => 67
	i32 1395857551, ; 61: Xamarin.AndroidX.Media.dll => 0x5333188f => 57
	i32 1406073936, ; 62: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 33
	i32 1460219004, ; 63: Xamarin.Forms.Xaml => 0x57092c7c => 82
	i32 1462112819, ; 64: System.IO.Compression.dll => 0x57261233 => 96
	i32 1469204771, ; 65: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 22
	i32 1582372066, ; 66: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 38
	i32 1592978981, ; 67: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 68: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 55
	i32 1624863272, ; 69: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 77
	i32 1635184631, ; 70: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 42
	i32 1636350590, ; 71: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 36
	i32 1639515021, ; 72: System.Net.Http.dll => 0x61b9038d => 2
	i32 1657153582, ; 73: System.Runtime => 0x62c6282e => 16
	i32 1658241508, ; 74: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 71
	i32 1658251792, ; 75: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 83
	i32 1670060433, ; 76: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 32
	i32 1698840827, ; 77: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 86
	i32 1729485958, ; 78: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 28
	i32 1766324549, ; 79: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 70
	i32 1776026572, ; 80: System.Core.dll => 0x69dc03cc => 12
	i32 1788241197, ; 81: Xamarin.AndroidX.Fragment => 0x6a96652d => 43
	i32 1808609942, ; 82: Xamarin.AndroidX.Loader => 0x6bcd3296 => 55
	i32 1813058853, ; 83: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 87
	i32 1813201214, ; 84: Xamarin.Google.Android.Material => 0x6c13413e => 83
	i32 1818569960, ; 85: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 61
	i32 1867746548, ; 86: Xamarin.Essentials.dll => 0x6f538cf4 => 78
	i32 1878053835, ; 87: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 82
	i32 1885316902, ; 88: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 25
	i32 1919157823, ; 89: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 58
	i32 1983156543, ; 90: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 86
	i32 2019465201, ; 91: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 53
	i32 2055257422, ; 92: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 49
	i32 2079903147, ; 93: System.Runtime.dll => 0x7bf8cdab => 16
	i32 2090596640, ; 94: System.Numerics.Vectors => 0x7c9bf920 => 15
	i32 2097448633, ; 95: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 45
	i32 2126786730, ; 96: Xamarin.Forms.Platform.Android => 0x7ec430aa => 80
	i32 2201107256, ; 97: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 91
	i32 2201231467, ; 98: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 99: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 73
	i32 2244775296, ; 100: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 56
	i32 2256548716, ; 101: Xamarin.AndroidX.MultiDex => 0x8680336c => 58
	i32 2261435625, ; 102: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 47
	i32 2279755925, ; 103: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 65
	i32 2315684594, ; 104: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 20
	i32 2403452196, ; 105: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 41
	i32 2409053734, ; 106: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 62
	i32 2465532216, ; 107: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 31
	i32 2471841756, ; 108: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 109: Java.Interop.dll => 0x93918882 => 5
	i32 2501346920, ; 110: System.Data.DataSetExtensions => 0x95178668 => 94
	i32 2505896520, ; 111: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 52
	i32 2581819634, ; 112: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 74
	i32 2605712449, ; 113: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 91
	i32 2620871830, ; 114: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 36
	i32 2624644809, ; 115: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 40
	i32 2628007527, ; 116: SABIC.Mobile.Android => 0x9ca43667 => 0
	i32 2633051222, ; 117: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 50
	i32 2661346553, ; 118: SABIC.Mobile.Android.dll => 0x9ea0ecf9 => 0
	i32 2701096212, ; 119: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 71
	i32 2732626843, ; 120: Xamarin.AndroidX.Activity => 0xa2e0939b => 19
	i32 2737747696, ; 121: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 22
	i32 2766581644, ; 122: Xamarin.Forms.Core => 0xa4e6af8c => 79
	i32 2770495804, ; 123: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 85
	i32 2778768386, ; 124: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 76
	i32 2779977773, ; 125: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 66
	i32 2806986428, ; 126: Plugin.CurrentActivity.dll => 0xa74f36bc => 10
	i32 2810250172, ; 127: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 33
	i32 2819470561, ; 128: System.Xml.dll => 0xa80db4e1 => 17
	i32 2821294376, ; 129: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 66
	i32 2853208004, ; 130: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 76
	i32 2855708567, ; 131: Xamarin.AndroidX.Transition => 0xaa36a797 => 72
	i32 2903344695, ; 132: System.ComponentModel.Composition => 0xad0d8637 => 98
	i32 2905242038, ; 133: mscorlib.dll => 0xad2a79b6 => 9
	i32 2916838712, ; 134: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 77
	i32 2919462931, ; 135: System.Numerics.Vectors.dll => 0xae037813 => 15
	i32 2921128767, ; 136: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 21
	i32 2978675010, ; 137: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 39
	i32 2996846495, ; 138: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 51
	i32 3016983068, ; 139: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 69
	i32 3024354802, ; 140: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 46
	i32 3044182254, ; 141: FormsViewGroup => 0xb57288ee => 4
	i32 3057625584, ; 142: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 59
	i32 3111772706, ; 143: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 144: System.Data.dll => 0xbefef58f => 92
	i32 3211777861, ; 145: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 38
	i32 3247949154, ; 146: Mono.Security => 0xc197c562 => 101
	i32 3258312781, ; 147: Xamarin.AndroidX.CardView => 0xc235e84d => 28
	i32 3267021929, ; 148: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 26
	i32 3317135071, ; 149: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 37
	i32 3317144872, ; 150: System.Data => 0xc5b79d28 => 92
	i32 3340431453, ; 151: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 25
	i32 3345895724, ; 152: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 64
	i32 3346324047, ; 153: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 60
	i32 3353484488, ; 154: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 45
	i32 3362522851, ; 155: Xamarin.AndroidX.Core => 0xc86c06e3 => 35
	i32 3366347497, ; 156: Java.Interop => 0xc8a662e9 => 5
	i32 3374999561, ; 157: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 65
	i32 3404865022, ; 158: System.ServiceModel.Internals => 0xcaf21dfe => 100
	i32 3428513518, ; 159: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 7
	i32 3429136800, ; 160: System.Xml => 0xcc6479a0 => 17
	i32 3430777524, ; 161: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 162: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 40
	i32 3476120550, ; 163: Mono.Android => 0xcf3163e6 => 8
	i32 3486566296, ; 164: System.Transactions => 0xcfd0c798 => 93
	i32 3493954962, ; 165: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 30
	i32 3501239056, ; 166: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 26
	i32 3509114376, ; 167: System.Xml.Linq => 0xd128d608 => 18
	i32 3536029504, ; 168: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 80
	i32 3567349600, ; 169: System.ComponentModel.Composition.dll => 0xd4a16f60 => 98
	i32 3618140916, ; 170: Xamarin.AndroidX.Preference => 0xd7a872f4 => 62
	i32 3627220390, ; 171: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 63
	i32 3632359727, ; 172: Xamarin.Forms.Platform => 0xd881692f => 81
	i32 3633644679, ; 173: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 21
	i32 3641597786, ; 174: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 49
	i32 3672681054, ; 175: Mono.Android.dll => 0xdae8aa5e => 8
	i32 3676310014, ; 176: System.Web.Services.dll => 0xdb2009fe => 99
	i32 3682565725, ; 177: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 27
	i32 3684561358, ; 178: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 30
	i32 3689375977, ; 179: System.Drawing.Common => 0xdbe768e9 => 95
	i32 3706696989, ; 180: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 34
	i32 3718780102, ; 181: Xamarin.AndroidX.Annotation => 0xdda814c6 => 20
	i32 3724971120, ; 182: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 59
	i32 3758932259, ; 183: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 47
	i32 3786282454, ; 184: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 29
	i32 3822602673, ; 185: Xamarin.AndroidX.Media => 0xe3d849b1 => 57
	i32 3829621856, ; 186: System.Numerics.dll => 0xe4436460 => 14
	i32 3841636137, ; 187: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 6
	i32 3885922214, ; 188: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 72
	i32 3888767677, ; 189: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 64
	i32 3896760992, ; 190: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 35
	i32 3920810846, ; 191: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 97
	i32 3921031405, ; 192: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 75
	i32 3931092270, ; 193: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 61
	i32 3945713374, ; 194: System.Data.DataSetExtensions.dll => 0xeb2ecede => 94
	i32 3955647286, ; 195: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 23
	i32 3959773229, ; 196: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 51
	i32 4101593132, ; 197: Xamarin.AndroidX.Emoji2 => 0xf479582c => 41
	i32 4105002889, ; 198: Mono.Security.dll => 0xf4ad5f89 => 101
	i32 4126470640, ; 199: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 7
	i32 4151237749, ; 200: System.Core => 0xf76edc75 => 12
	i32 4182413190, ; 201: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 54
	i32 4256097574, ; 202: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 34
	i32 4292120959 ; 203: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 54
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [204 x i32] [
	i32 52, i32 84, i32 79, i32 68, i32 68, i32 88, i32 29, i32 70, ; 0..7
	i32 27, i32 46, i32 99, i32 32, i32 50, i32 44, i32 19, i32 14, ; 8..15
	i32 48, i32 31, i32 78, i32 43, i32 9, i32 13, i32 44, i32 56, ; 16..23
	i32 93, i32 88, i32 97, i32 37, i32 42, i32 75, i32 24, i32 18, ; 24..31
	i32 90, i32 85, i32 89, i32 96, i32 11, i32 95, i32 63, i32 84, ; 32..39
	i32 89, i32 10, i32 48, i32 4, i32 67, i32 6, i32 23, i32 81, ; 40..47
	i32 53, i32 11, i32 87, i32 13, i32 73, i32 60, i32 24, i32 69, ; 48..55
	i32 74, i32 90, i32 39, i32 100, i32 67, i32 57, i32 33, i32 82, ; 56..63
	i32 96, i32 22, i32 38, i32 3, i32 55, i32 77, i32 42, i32 36, ; 64..71
	i32 2, i32 16, i32 71, i32 83, i32 32, i32 86, i32 28, i32 70, ; 72..79
	i32 12, i32 43, i32 55, i32 87, i32 83, i32 61, i32 78, i32 82, ; 80..87
	i32 25, i32 58, i32 86, i32 53, i32 49, i32 16, i32 15, i32 45, ; 88..95
	i32 80, i32 91, i32 2, i32 73, i32 56, i32 58, i32 47, i32 65, ; 96..103
	i32 20, i32 41, i32 62, i32 31, i32 1, i32 5, i32 94, i32 52, ; 104..111
	i32 74, i32 91, i32 36, i32 40, i32 0, i32 50, i32 0, i32 71, ; 112..119
	i32 19, i32 22, i32 79, i32 85, i32 76, i32 66, i32 10, i32 33, ; 120..127
	i32 17, i32 66, i32 76, i32 72, i32 98, i32 9, i32 77, i32 15, ; 128..135
	i32 21, i32 39, i32 51, i32 69, i32 46, i32 4, i32 59, i32 3, ; 136..143
	i32 92, i32 38, i32 101, i32 28, i32 26, i32 37, i32 92, i32 25, ; 144..151
	i32 64, i32 60, i32 45, i32 35, i32 5, i32 65, i32 100, i32 7, ; 152..159
	i32 17, i32 1, i32 40, i32 8, i32 93, i32 30, i32 26, i32 18, ; 160..167
	i32 80, i32 98, i32 62, i32 63, i32 81, i32 21, i32 49, i32 8, ; 168..175
	i32 99, i32 27, i32 30, i32 95, i32 34, i32 20, i32 59, i32 47, ; 176..183
	i32 29, i32 57, i32 14, i32 6, i32 72, i32 64, i32 35, i32 97, ; 184..191
	i32 75, i32 61, i32 94, i32 23, i32 51, i32 41, i32 101, i32 7, ; 192..199
	i32 12, i32 54, i32 34, i32 54 ; 200..203
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
