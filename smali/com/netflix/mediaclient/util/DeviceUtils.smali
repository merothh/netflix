.class public final Lcom/netflix/mediaclient/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final DEFAULT_ALLOW_HEVC_MOBILE:Z = false

.field public static final DEFAULT_ALLOW_VP9_MOBILE:Z

.field public static final DEVICE_WITH_MENU_BUTTON_BUG:Z

.field public static final SCREEN_SIZE_LARGE:I = 0x3

.field public static final SCREEN_SIZE_NORMAL:I = 0x2

.field public static final SCREEN_SIZE_SMALL:I = 0x1

.field public static final SCREEN_SIZE_XLARGE:I = 0x4

.field private static final SYSTEM_PROPERTY_LOCAL_PLAYBACK_ENABLED:Ljava/lang/String; = "ro.nrdp.playback.enable"

.field private static final SYSTEM_PROPERTY_REMOTE_CONTROLS_ENABLED:Ljava/lang/String; = "ro.nrdp.mdx.remotecontrols"

.field private static final TAG:Ljava/lang/String; = "nf_device_utils"

.field private static sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-gt v0, v3, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string/jumbo v3, "LGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/util/DeviceUtils;->DEVICE_WITH_MENU_BUTTON_BUG:Z

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/netflix/mediaclient/util/DeviceUtils;->DEFAULT_ALLOW_VP9_MOBILE:Z

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0

    :cond_1
    move v1, v2

    .line 70
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static canUseGooglePlayServices(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 588
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    .line 589
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 590
    const-string/jumbo v3, "nf_device_utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Google Play status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    if-nez v2, :cond_1

    .line 594
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Success!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_0
    return v0

    .line 597
    :cond_1
    if-ne v0, v2, :cond_2

    .line 598
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Device is not Google certified, skip"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 599
    goto :goto_0

    .line 601
    :cond_2
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Device is Google certified, problem with Google Play Services"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 602
    goto :goto_0
.end method

.method public static forceHideKeyboard(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 360
    if-eqz p0, :cond_0

    .line 361
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 362
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->forceHideKeyboard(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V

    .line 364
    :cond_0
    return-void
.end method

.method public static forceHideKeyboard(Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 2

    .prologue
    .line 372
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 375
    :cond_0
    return-void
.end method

.method public static getBasicScreenOrientation(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method public static getCertificationVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const-string/jumbo v1, "nf_device_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 110
    if-lez v1, :cond_1

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 114
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string/jumbo v1, "nf_device_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CV: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getFirstStartTime(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v0, -0x1

    .line 417
    const-class v2, Lcom/netflix/mediaclient/util/DeviceUtils;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 420
    :cond_0
    :goto_0
    monitor-exit v2

    return-wide v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_first_start_after_install"

    const-wide/16 v4, -0x1

    invoke-static {p0, v0, v4, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static getGMSPkgVersion(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 611
    .line 613
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 614
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    const-string/jumbo v2, "nf_device_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Package versionCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " versionName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_0
    return v0

    .line 618
    :catch_0
    move-exception v1

    .line 619
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "gms package not available"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getGooglePlayClientSDKVersion(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 607
    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    return v0
.end method

.method public static getLocalCapabilities(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;
    .locals 1

    .prologue
    .line 628
    new-instance v0, Lcom/netflix/mediaclient/util/DeviceUtils$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/util/DeviceUtils$1;-><init>(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-object v0
.end method

.method public static getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 493
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 494
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 496
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRealScreenHeightInPixels(Landroid/app/Activity;)I
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 276
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 278
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenAspectRatio(Landroid/content/Context;)F
    .locals 2

    .prologue
    .line 167
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static getScreenBounds(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static getScreenHeightInDPs(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 232
    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    return v0
.end method

.method public static getScreenHeightInPixels(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenResolutionCategoryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenResolutionDpi(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 191
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 177
    :sswitch_0
    const-string/jumbo v0, "hdpi"

    goto :goto_0

    .line 179
    :sswitch_1
    const-string/jumbo v0, "ldpi"

    goto :goto_0

    .line 181
    :sswitch_2
    const-string/jumbo v0, "mdpi"

    goto :goto_0

    .line 183
    :sswitch_3
    const-string/jumbo v0, "tvdpi"

    goto :goto_0

    .line 185
    :sswitch_4
    const-string/jumbo v0, "xhdpi"

    goto :goto_0

    .line 187
    :sswitch_5
    const-string/jumbo v0, "xxhdpi"

    goto :goto_0

    .line 189
    :sswitch_6
    const-string/jumbo v0, "xxxhdpi"

    goto :goto_0

    .line 175
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_1
        0xa0 -> :sswitch_2
        0xd5 -> :sswitch_3
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
        0x280 -> :sswitch_6
    .end sparse-switch
.end method

.method public static getScreenResolutionDpi(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method public static getScreenSensorOrientation(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 135
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 v0, 0x6

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getScreenSizeCategory(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static getScreenSizeCategoryString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    .line 198
    :pswitch_0
    const-string/jumbo v0, "small"

    goto :goto_0

    .line 200
    :pswitch_1
    const-string/jumbo v0, "normal"

    goto :goto_0

    .line 202
    :pswitch_2
    const-string/jumbo v0, "large"

    goto :goto_0

    .line 204
    :pswitch_3
    const-string/jumbo v0, "xlarge"

    goto :goto_0

    .line 206
    :pswitch_4
    const-string/jumbo v0, "undefined"

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getScreenWidthInDPs(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 224
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    return v0
.end method

.method public static getScreenWidthInPixels(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {p0}, Lcom/netflix/mediaclient/util/AndroidManifestUtils;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const-string/jumbo v0, "N/A"

    .line 91
    :cond_0
    return-object v0
.end method

.method public static hasHardwareNavigationKeys()Z
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    .line 383
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    .line 384
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hashCode(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 476
    const-wide/16 v2, 0x0

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 478
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 479
    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    aget-char v4, v1, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-wide v2
.end method

.method public static hideSoftKeyboard(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 352
    return-void
.end method

.method public static declared-synchronized isDeviceEnabled(Landroid/content/Context;I)Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 433
    const-class v3, Lcom/netflix/mediaclient/util/DeviceUtils;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const-string/jumbo v2, "nf_device_utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDeviceEnabled:: Disabled percentage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    if-gtz p1, :cond_2

    .line 437
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Everybody is enabled"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_1
    :goto_0
    monitor-exit v3

    return v0

    .line 441
    :cond_2
    const/16 v2, 0x64

    if-lt p1, v2, :cond_3

    .line 442
    :try_start_1
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Everybody is disabled"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 443
    goto :goto_0

    .line 446
    :cond_3
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/esn/BaseEsnProvider;->getHashedDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->hashCode(Ljava/lang/String;)J

    move-result-wide v6

    .line 450
    const-wide/16 v8, 0x64

    rem-long v8, v6, v8

    long-to-int v2, v8

    .line 451
    if-gez v2, :cond_4

    .line 452
    add-int/lit8 v2, v2, 0x64

    .line 455
    :cond_4
    rsub-int/lit8 v5, p1, 0x64

    .line 456
    if-gt v2, v5, :cond_5

    .line 458
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    const-string/jumbo v1, "nf_device_utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDeviceEnabled:: deviceID "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", bucket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", enabled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move v0, v1

    .line 456
    goto :goto_1
.end method

.method public static isDeviceHd(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 1

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isDeviceHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSmallestWidthGreaterOrEqualThan(Landroid/app/Activity;I)Z
    .locals 3

    .prologue
    .line 251
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 253
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 254
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 255
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 256
    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 257
    int-to-float v2, v2

    div-float v0, v2, v0

    .line 258
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 260
    int-to-float v1, p1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFirstApplicationStartAfterInstallation(Landroid/content/Context;)Z
    .locals 6

    .prologue
    .line 395
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 396
    const-class v1, Lcom/netflix/mediaclient/util/DeviceUtils;

    monitor-enter v1

    .line 397
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 398
    const-string/jumbo v0, "nf_first_start_after_install"

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 399
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    .line 400
    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v2, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    const-string/jumbo v0, "nf_first_start_after_install"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putLongPref(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 405
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/util/DeviceUtils;->sFirstStartAfterInstall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0

    .line 399
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalPlaybackEnabled()Z
    .locals 5

    .prologue
    .line 552
    const-string/jumbo v0, "ro.nrdp.playback.enable"

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getSystemPropety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 553
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 554
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    const-string/jumbo v2, "nf_device_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocalPlaybackEnabled:: value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_1
    return v0

    .line 553
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotTabletByContext(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 296
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRemoteControlEnabled()Z
    .locals 5

    .prologue
    .line 572
    const-string/jumbo v0, "ro.nrdp.mdx.remotecontrols"

    invoke-static {v0}, Lcom/netflix/mediaclient/repository/SecurityRepository;->getSystemPropety(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 574
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    const-string/jumbo v2, "nf_device_utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRemoteControlEnabled:: value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_1
    return v0

    .line 573
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTabletByContext(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 307
    if-nez p0, :cond_0

    .line 308
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "AndroidUtils#isTabletByContext:: context is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 312
    if-nez v2, :cond_1

    .line 313
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "AndroidUtils#isTabletByContext:: context.getResources() is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 317
    if-nez v2, :cond_2

    .line 318
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "AndroidUtils#isTabletByContext:: context.getResources().getConfiguration() is null!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    .line 324
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    const-string/jumbo v3, "nf_device_utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Screen size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 343
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Screen size is at least XL - tablet UI"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 344
    goto :goto_0

    .line 330
    :pswitch_0
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Screen size undefined - mobile UI"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :pswitch_1
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Screen size normal - mobile UI"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :pswitch_2
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Screen size small - mobile UI"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :pswitch_3
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v2, "Screen size large - tablet UI"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 341
    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static loadNativeLibrary(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 509
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Library name not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_3

    .line 518
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const-string/jumbo v1, "nf_device_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Loading library "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from app file system. Installed or updated app."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 522
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    const-string/jumbo v1, "nf_device_utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Loading from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_2
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 532
    :goto_0
    const/4 v0, 0x1

    .line 537
    :goto_1
    return v0

    .line 527
    :cond_3
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    const-string/jumbo v0, "nf_device_utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loading library "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " leaving to android to find mapping. Preloaded app."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_4
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    const-string/jumbo v1, "nf_device_utils"

    const-string/jumbo v2, "Failed to load library from assumed location"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    .line 537
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static lockScreenToSensorOrientation(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 148
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v1, "Locking orientation to landscape"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    const-string/jumbo v0, "nf_device_utils"

    const-string/jumbo v1, "Locking orientation to portrait"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_2
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static shouldShow3DIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 678
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->is3dSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideo3D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShow5dot1Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 683
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->is5dot1Supported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideo5dot1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowDolbyVisionIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 3

    .prologue
    .line 695
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const-string/jumbo v0, "nf_device_utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDolbyVisionSupported, device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isDolbyVisionSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 697
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoDolbyVision()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 696
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isDolbyVisionSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoDolbyVision()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHdIcon(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 663
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isDeviceHd(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 668
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isHdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowHdr10Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 3

    .prologue
    .line 687
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const-string/jumbo v0, "nf_device_utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isHdr10Supported, device : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isHdr10Supported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 689
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHdr10()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_0
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isHdr10Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoHdr10()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowUhdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z
    .locals 1

    .prologue
    .line 673
    invoke-interface {p0}, Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;->isUltraHdSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;->isVideoUhd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSoftKeyboard(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 379
    return-void
.end method
