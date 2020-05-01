.class public Lorg/linphone/mediastream/MediastreamerAndroidContext;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEVICE_CHOICE:I = 0x0

.field public static final DEVICE_HAS_BUILTIN_AEC:I = 0x1

.field public static final DEVICE_HAS_BUILTIN_AEC_CRAPPY:I = 0x2

.field public static final DEVICE_HAS_BUILTIN_OPENSLES_AEC:I = 0x8

.field public static final DEVICE_USE_ANDROID_MIC:I = 0x4

.field private static instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

.field private static mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableFilterFromName(Ljava/lang/String;Z)V
    .locals 3

    .line 103
    invoke-static {}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->enableFilterFromNameImpl(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    new-instance v0, Lorg/linphone/mediastream/MediastreamException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "enable"

    goto :goto_0

    :cond_0
    const-string p1, "disable"

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " filter  name ["

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/linphone/mediastream/MediastreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private native enableFilterFromNameImpl(Ljava/lang/String;Z)I
.end method

.method public static filterFromNameEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 113
    invoke-static {}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;

    move-result-object v0

    invoke-direct {v0, p0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->filterFromNameEnabledImpl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private native filterFromNameEnabledImpl(Ljava/lang/String;)Z
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 51
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;
    .locals 1

    .line 45
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;

    invoke-direct {v0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;-><init>()V

    sput-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

    .line 47
    :cond_0
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->instance:Lorg/linphone/mediastream/MediastreamerAndroidContext;

    return-object v0
.end method

.method private static parseInt(Ljava/lang/String;I)I
    .locals 4

    .line 87
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " to integer ; using default value "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    :goto_0
    return p1
.end method

.method public static setContext(Ljava/lang/Object;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 59
    :cond_0
    check-cast p0, Landroid/content/Context;

    sput-object p0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    .line 61
    sget-object p0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.audio.low_latency"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 62
    sget-object v0, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.pro"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Device] hasLowLatencyFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", hasProFeature: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, v2, v0

    invoke-static {v2}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    const/16 p0, 0x100

    const v2, 0xac44

    .line 67
    invoke-static {}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->getInstance()Lorg/linphone/mediastream/MediastreamerAndroidContext;

    move-result-object v3

    .line 69
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_1

    .line 71
    sget-object v4, Lorg/linphone/mediastream/MediastreamerAndroidContext;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    const-string v5, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 72
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v5, p0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const-string v5, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 74
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-static {v4, v2}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->parseInt(Ljava/lang/String;I)I

    move-result v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Device] Output frames per buffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", output sample rates: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for OpenSLES MS sound card."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    .line 77
    invoke-direct {v3, v2}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setDeviceFavoriteSampleRate(I)V

    .line 78
    invoke-direct {v3, p0}, Lorg/linphone/mediastream/MediastreamerAndroidContext;->setDeviceFavoriteBufferSize(I)V

    goto :goto_0

    :cond_1
    new-array p0, v1, [Ljava/lang/Object;

    const-string v1, "Android < 4.4 detected, android context not used."

    aput-object v1, p0, v0

    .line 80
    invoke-static {p0}, Lorg/linphone/mediastream/Log;->i([Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private native setDeviceFavoriteBufferSize(I)V
.end method

.method private native setDeviceFavoriteSampleRate(I)V
.end method
