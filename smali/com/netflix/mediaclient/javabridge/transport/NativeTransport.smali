.class public Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;
.super Ljava/lang/Object;
.source "NativeTransport.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/transport/Transport;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf-NativeTransport"

.field private static final TAG1:Ljava/lang/String; = "nf_net"

.field private static isPropertyStreamingVideoDrs:Z

.field private static mpCapable:Z


# instance fields
.field private bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

.field private destroyed:Z

.field private mDalvikVMHeapSize:I

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceLowMem:Z

.field private mDeviceModel:Ljava/lang/String;

.field private mEnableLowBitrateStreams:Z

.field private mEsn:Ljava/lang/String;

.field private final mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

.field private mFesn:Ljava/lang/String;

.field private mFesn2:Ljava/lang/String;

.field private mGmsPkgVersion:I

.field private mGoogleApiClientVersion:I

.field private mIpConnectivityPolicy:I

.field private mMdxJsVersion:Ljava/lang/String;

.field private mRootFileSystem:Ljava/lang/String;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSupportVideoSeamlessSwitch:Z

.field private mSurface:Landroid/view/Surface;

.field private mVideoBufferSize:I

.field private mVideoDecoderCapLogging:Ljava/lang/String;

.field private final mWeakThis:Ljava/lang/Object;

.field private playerType:Lcom/netflix/mediaclient/media/PlayerType;

.field private final proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    .line 53
    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_init(I)Z

    .line 54
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_is_mp_capable()Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mpCapable:Z

    .line 55
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_isPropertyStreamingVideoDrs()Z

    move-result v0

    sput-boolean v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->isPropertyStreamingVideoDrs:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;Lcom/netflix/mediaclient/javabridge/NrdProxy;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoBufferSize:I

    .line 77
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDalvikVMHeapSize:I

    .line 79
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mGoogleApiClientVersion:I

    .line 80
    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mGmsPkgVersion:I

    .line 95
    sget-object v0, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->IP_V6_V4:Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mIpConnectivityPolicy:I

    .line 144
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "NativeTransport constructor start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    .line 146
    iput-object p2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "NativeTransport"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 156
    new-instance v1, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;-><init>(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    .line 158
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mWeakThis:Ljava/lang/Object;

    .line 160
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "NativeTransport constructor done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;)Lcom/netflix/mediaclient/javabridge/NrdProxy;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    return-object v0
.end method

.method private connect(Ljava/lang/String;ILcom/netflix/mediaclient/util/DeviceCategory;I)V
    .locals 2

    .prologue
    .line 172
    if-nez p3, :cond_0

    .line 173
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Device class is uknown! It should not happen"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object p3, Lcom/netflix/mediaclient/util/DeviceCategory;->UNKNOWN:Lcom/netflix/mediaclient/util/DeviceCategory;

    .line 176
    :cond_0
    invoke-virtual {p3}, Lcom/netflix/mediaclient/util/DeviceCategory;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_connect(Ljava/lang/String;ILjava/lang/String;I)V

    .line 177
    return-void
.end method

.method public static enableCrashHandler()V
    .locals 0

    .prologue
    .line 674
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_enable_crash_handler()V

    .line 675
    return-void
.end method

.method public static enableDolbyDigitalPlus20()V
    .locals 0

    .prologue
    .line 684
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_enableDolbyDigitalPlus20()V

    return-void
.end method

.method public static enableDolbyDigitalPlus51()V
    .locals 0

    .prologue
    .line 680
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_enableDolbyDigitalPlus51()V

    return-void
.end method

.method public static enableHDPlayback()V
    .locals 0

    .prologue
    .line 698
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_enableHDPlayback()V

    return-void
.end method

.method public static getDnsList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getDnsList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeTimeMono()J
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getTimeMono()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNativeTimeNow()J
    .locals 2

    .prologue
    .line 552
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getTimeNow()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSupportedVideoProfiles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 566
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_getSupportedProfiles()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAndroid(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)Z
    .locals 1

    .prologue
    .line 274
    instance-of v0, p1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;

    if-eqz v0, :cond_0

    .line 275
    check-cast p1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->handleSetVideoSurface(Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;)Z

    move-result v0

    .line 279
    :goto_0
    return v0

    .line 276
    :cond_0
    instance-of v0, p1, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;

    if-eqz v0, :cond_1

    .line 277
    check-cast p1, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->handleInitVisualOn(Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;)Z

    move-result v0

    goto :goto_0

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleInitVisualOn(Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;)Z
    .locals 4

    .prologue
    .line 299
    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;->getPtr()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/InitVisualOn;->getCtxt()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_setVOapi(JJ)V

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method private handleSetVideoSurface(Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;)Z
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetVideoSurface;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mSurface:Landroid/view/Surface;

    .line 289
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_setVideoSurface()V

    .line 290
    const/4 v0, 0x1

    return v0
.end method

.method public static final isDrmPlayPresent()Z
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method public static isHdCapable()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method public static isOMXALmpCapable()Z
    .locals 1

    .prologue
    .line 397
    sget-boolean v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mpCapable:Z

    return v0
.end method

.method public static isPropertyStreamingVideoDrs()Z
    .locals 1

    .prologue
    .line 404
    sget-boolean v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->isPropertyStreamingVideoDrs:Z

    return v0
.end method

.method private synchronized native declared-synchronized native_connect(Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method private static final synchronized native declared-synchronized native_enableDolbyDigitalPlus20()V
.end method

.method private static final synchronized native declared-synchronized native_enableDolbyDigitalPlus51()V
.end method

.method private static final synchronized native declared-synchronized native_enableHDPlayback()V
.end method

.method private static final synchronized native declared-synchronized native_enable_crash_handler()V
.end method

.method private static final synchronized native declared-synchronized native_getDnsList()[Ljava/lang/String;
.end method

.method private static final synchronized native declared-synchronized native_getSupportedProfiles()[Ljava/lang/String;
.end method

.method private static final synchronized native declared-synchronized native_getTimeMono()J
.end method

.method private static final synchronized native declared-synchronized native_getTimeNow()J
.end method

.method private static final synchronized native declared-synchronized native_init(I)Z
.end method

.method private final synchronized native declared-synchronized native_invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static final synchronized native declared-synchronized native_isPropertyStreamingVideoDrs()Z
.end method

.method private static final synchronized native declared-synchronized native_is_mp_capable()Z
.end method

.method private synchronized native declared-synchronized native_release()V
.end method

.method private final synchronized native declared-synchronized native_setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static final synchronized native declared-synchronized native_setSupportMaxVideoHeight(I)V
.end method

.method private synchronized native declared-synchronized native_setVOapi(JJ)V
.end method

.method private synchronized native declared-synchronized native_setVideoSurface()V
.end method

.method private final synchronized native declared-synchronized native_uiLoaded()V
.end method

.method private final synchronized native declared-synchronized native_uiUnloaded()V
.end method

.method private onCrashFromNative(IJJJ)V
    .locals 12

    .prologue
    .line 587
    const-string/jumbo v2, "nf-NativeTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Got crash from native: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", signo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", errno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p6

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {p1}, Lcom/netflix/mediaclient/javabridge/error/Signal;->toSignal(I)Lcom/netflix/mediaclient/javabridge/error/Signal;

    move-result-object v3

    .line 589
    if-eqz v3, :cond_0

    .line 590
    const-string/jumbo v2, "nf-NativeTransport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got crash from native: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/mediaclient/javabridge/error/Signal;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    new-instance v2, Lcom/netflix/mediaclient/javabridge/error/CrashReport;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lcom/netflix/mediaclient/javabridge/error/CrashReport;-><init>(Lcom/netflix/mediaclient/javabridge/error/Signal;JJJI)V

    .line 596
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->proxy:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->postCrashReport(Lcom/netflix/mediaclient/javabridge/error/CrashReport;)V

    .line 597
    return-void

    .line 592
    :cond_0
    const-string/jumbo v2, "nf-NativeTransport"

    const-string/jumbo v4, "Got crash from native and it is not know. This should never happen!"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got event from native: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;

    .line 362
    if-nez v0, :cond_1

    .line 363
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Native transport is NULL. This should NOT happen, event can not be handled!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 369
    iget-object v0, v0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEventHandler:Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport$TransportEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 371
    :cond_2
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Event handler is NULL. Unable to post handler!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSupportMaxVideoHeight(I)V
    .locals 0

    .prologue
    .line 693
    invoke-static {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_setSupportMaxVideoHeight(I)V

    .line 694
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 528
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "close:: noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method public connect()V
    .locals 6

    .prologue
    .line 412
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "connect started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    if-nez v0, :cond_0

    .line 415
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "App is null? This SHOULD NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getFileSystemRoot()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/Bridge;->getIpConnectivityPolicy()Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;

    move-result-object v2

    .line 422
    const-string/jumbo v3, "rootFileSystemn"

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mRootFileSystem:Ljava/lang/String;

    .line 423
    const-string/jumbo v0, "esn"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEsn:Ljava/lang/String;

    .line 425
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getFesn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, ""

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mFesn:Ljava/lang/String;

    .line 426
    const-string/jumbo v0, "fesn2"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getFesn2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mFesn2:Ljava/lang/String;

    .line 427
    const-string/jumbo v0, "deviceId"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceId:Ljava/lang/String;

    .line 428
    const-string/jumbo v0, "modelId"

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->notNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceModel:Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->isDeviceLowMem()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceLowMem:Z

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getConfigVideoBufferSize()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoBufferSize:I

    .line 431
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->enableLowBitrateStreams()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEnableLowBitrateStreams:Z

    .line 432
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/32 v4, 0x100000

    div-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDalvikVMHeapSize:I

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getGooglePlayClientSDKVersion(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mGoogleApiClientVersion:I

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getGMSPkgVersion(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mGmsPkgVersion:I

    .line 437
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_7

    .line 438
    invoke-static {}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->isAvcDecoderSupportsAdaptivePlayback()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mSupportVideoSeamlessSwitch:Z

    .line 443
    :goto_1
    const-string/jumbo v0, "1.1.6-android"

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mMdxJsVersion:Ljava/lang/String;

    .line 446
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getSubtitleImageMaxWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mScreenWidth:I

    .line 447
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/SubtitleUtils;->getSubtitleImageMaxHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mScreenHeight:I

    .line 449
    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/net/IpConnectivityPolicy;->getValue()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mIpConnectivityPolicy:I

    .line 454
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/util/MediaUtils;->getDecoderCapbilityForFormatIfUpdated()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoDecoderCapLogging:Ljava/lang/String;

    .line 456
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rootFileSystem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mRootFileSystem:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "esn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEsn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deviceModel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LowMemDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDeviceLowMem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VideoBufferSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoBufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IP connectivity policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mIpConnectivityPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enable Low bitratestreams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mEnableLowBitrateStreams:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dalvik VM HeapSize in MB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mDalvikVMHeapSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Embedded screen width in px: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Embedded screen height in px: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Google API client version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mGoogleApiClientVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GMS pkg version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mGmsPkgVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MdxJS version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mMdxJsVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "MDX Version:2013.3"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Video decoders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mVideoDecoderCapLogging:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getCurrentPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    if-nez v0, :cond_8

    .line 478
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "This should not happen, player type was null at this point! Use default."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/PlayerTypeFactory;->findDefaultPlayerType()Lcom/netflix/mediaclient/media/PlayerType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    .line 486
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device12:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device10:Lcom/netflix/mediaclient/media/PlayerType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    sget-object v1, Lcom/netflix/mediaclient/media/PlayerType;->device11:Lcom/netflix/mediaclient/media/PlayerType;

    if-ne v0, v1, :cond_5

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/media/MediaPlayerHelperFactory;->getInstance(Landroid/content/Context;Lcom/netflix/mediaclient/media/PlayerType;)Lcom/netflix/mediaclient/media/MediaPlayerHelper;

    .line 492
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "helper initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getInstallationSource()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/PlayerType;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v2}, Lcom/netflix/mediaclient/javabridge/Bridge;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v3}, Lcom/netflix/mediaclient/javabridge/Bridge;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getCryptoFactoryType()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->connect(Ljava/lang/String;ILcom/netflix/mediaclient/util/DeviceCategory;I)V

    .line 497
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "connect done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void

    .line 425
    :cond_6
    invoke-interface {v1}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getFesn()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 440
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->mSupportVideoSeamlessSwitch:Z

    goto/16 :goto_1

    .line 481
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Player type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->playerType:Lcom/netflix/mediaclient/media/PlayerType;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/media/PlayerType;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public declared-synchronized disconnect()V
    .locals 2

    .prologue
    .line 506
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "disconnect started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    if-eqz v0, :cond_0

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->destroyed:Z

    if-eqz v0, :cond_1

    .line 513
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Trying to destroy already destroyed transport. This should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "disconnect done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 515
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_release()V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->destroyed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 5

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Command can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->handleAndroid(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Handled directly by JNI"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 256
    :cond_1
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "Handled by bridge"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->getObject()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/javabridge/invoke/Invoke;->getArguments()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Failure in JNI. It may happend than NRDApp is null!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 219
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " invokeMethod subobject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " method = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " jsonString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    if-nez p1, :cond_2

    .line 225
    const-string/jumbo p1, "nrdp"

    .line 232
    :goto_0
    if-nez p3, :cond_1

    .line 233
    const-string/jumbo p3, ""

    .line 237
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    return-void

    .line 226
    :cond_2
    const-string/jumbo v0, "nrdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "setProperty:: Already starts nrdp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 229
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nrdp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Failure in JNI. It may happend than NRDApp is null!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string/jumbo v0, "nf-NativeTransport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setProperty subobject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " property = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " jsonString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    if-nez p1, :cond_1

    .line 195
    const-string/jumbo p1, "nrdp"

    .line 203
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_1
    return-void

    .line 196
    :cond_1
    const-string/jumbo v0, "nrdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string/jumbo v0, "nf-NativeTransport"

    const-string/jumbo v1, "setProperty:: Already starts nrdp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nrdp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Failure in JNI. It may happend than NRDApp is null!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method public uiLoaded()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_uiLoaded()V

    .line 537
    return-void
.end method

.method public uiUnloaded()V
    .locals 3

    .prologue
    .line 545
    :try_start_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->native_uiUnloaded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 547
    const-string/jumbo v1, "nf-NativeTransport"

    const-string/jumbo v2, "Catching runtime exception, so service will shutdown..."

    invoke-static {v1, v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)I

    goto :goto_0
.end method
