.class public final Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderLibrary;
.super Ljava/lang/Object;
.source ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.av1"

    .line 28
    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native AV1IsSecureDecodeSupported()Z
.end method

.method private static native VoGetBuildConfig()Ljava/lang/String;
.end method

.method private static native VoGetVersion()Ljava/lang/String;
.end method

.method public static getBuildConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-static {}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderLibrary;->VoGetBuildConfig()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {}, Lcom/google/android/exoplayer2/ext/av1/AV1SoftwareDecoderLibrary;->VoGetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isHighBitDepthSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
