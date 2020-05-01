.class public abstract Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;
.super Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;
.source "MediaDecoderPipe2.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final INPUTBUFFER_TO:J = -0x1L

.field private static final MSG_DECODER_FLUSH:I = 0x2

.field private static final MSG_DECODER_GET_FRAME:I = 0x1

.field private static final MSG_DECODER_INITIALIZED:I = 0x3

.field private static final MSG_DECODER_STOP:I = 0x4

.field private static final OUTPUTBUFFER_TO:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "MediaDecoder2"

.field protected static final TIME_TO_NEXT_RETRY:J = 0x14L

.field protected static final USE_ANDROID_L_API:Z


# instance fields
.field mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

.field private final mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

.field protected mDecoder:Landroid/media/MediaCodec;

.field private mDecoderPause:Z

.field private mEncrypted:Z

.field private mInputBufferCnt:I

.field private mInputBuffers:[Ljava/nio/ByteBuffer;

.field private mInputBuffersQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputHandler:Landroid/os/Handler;

.field private final mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

.field private mInputThread:Landroid/os/HandlerThread;

.field private mIsAudio:Z

.field private mOutputBufferCnt:I

.field protected mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

.field protected mOutputBuffers:[Ljava/nio/ByteBuffer;

.field protected mOutputBuffersQ:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputHandler:Landroid/os/Handler;

.field private final mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

.field private mOutputThread:Landroid/os/HandlerThread;

.field private mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->USE_ANDROID_L_API:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;Ljava/lang/String;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mMime:Ljava/lang/String;

    invoke-virtual {p0, p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaDecoder2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "audio/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    const-string/jumbo v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "creating ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    invoke-direct {p0, p2, p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createDecoder(Ljava/lang/String;Landroid/media/MediaCrypto;)Z

    if-eqz p5, :cond_3

    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEncrypted:Z

    :goto_1
    invoke-direct {p0, p3, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->configureDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->startDecoder()Z

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->configureOutputBuffers()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mState:I

    return-void

    :cond_1
    const-string/jumbo v1, "video/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    const-string/jumbo v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEncrypted:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffersQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->configureOutputBuffers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    return v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBufferCnt:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)[Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEncrypted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->processAudioIfEncrypted(Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    return-void
.end method

.method private configureDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)Z
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "configureDecoder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private configureOutputBuffers()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " output buffers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    new-array v0, v0, [Landroid/media/MediaCodec$BufferInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "get un-known exception while getOutputBuffers()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    goto :goto_0
.end method

.method private createDecoder(Ljava/lang/String;Landroid/media/MediaCrypto;)Z
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createVideoDecoderForK(Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createDecoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createVideoDecoderPreK(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private createInputThread()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Inputthread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Audio"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerThread;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const-string/jumbo v0, "Video"

    goto :goto_0
.end method

.method private createOutputThread()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Outputthread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Audio"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/HandlerThread;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    return-void

    :cond_0
    const-string/jumbo v0, "Video"

    goto :goto_0
.end method

.method private createVideoDecoderForK(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {p1}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->getAdaptivePlaybackDecoderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createVideoDecoderForK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "has no adaptive decoder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createVideoDecoderForK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createVideoDecoderForK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_0
.end method

.method private createVideoDecoderPreK(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "try OMX.qcom.video.decoder.avc.smoothstreaming.secure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "OMX.qcom.video.decoder.avc.smoothstreaming.secure"

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getSecureDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSecureDecoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "createSecureDecoder OMX.qcom.video.decoder.avc.smoothstreaming.secure failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_0

    :catch_1
    move-exception v1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createSecureDecoder "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "try OMX.qcom.video.decoder.avc.smoothstreaming"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "OMX.qcom.video.decoder.avc.smoothstreaming"

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "createSecureDecoder OMX.qcom.video.decoder.avc.smoothstreaming failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_1
.end method

.method private getSecureDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    aget-object v6, v5, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private processAudioIfEncrypted(Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    if-nez v0, :cond_2

    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    iget-object v1, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;-><init>([B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    :cond_2
    new-array v2, v6, [I

    aput v5, v2, v5

    new-array v1, v6, [I

    iget v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    aput v0, v1, v5

    iget v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nSubsample:I

    if-lez v0, :cond_3

    iget-object v1, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteInClear:[I

    iget-object v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteEncrypted:[I

    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    iget-object v3, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->decrypt(Ljava/nio/ByteBuffer;[B[I[I)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getMime()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "audio/mp4a-latm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v4, 0xff

    if-ne v0, v4, :cond_5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    const/16 v4, 0xf0

    if-ne v0, v4, :cond_5

    const/4 v0, 0x7

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    const/16 v0, 0x9

    :cond_4
    aput v0, v2, v5

    iget v3, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    sub-int v0, v3, v0

    aput v0, v1, v5

    :cond_5
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method private startDecoder()Z
    .locals 4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBufferCnt:I

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBufferCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " input buffers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffersQ:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBuffersQ:Ljava/util/LinkedList;

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createInputThread()V

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createOutputThread()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method abstract addToRenderer(ILandroid/media/MediaCodec$BufferInfo;)V
.end method

.method abstract createRenderer()V
.end method

.method public flush()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "flushinput"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "flushoutput"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->flushRenderer()V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get un-documented exception as a result of flush() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_7
    const-string/jumbo v0, "MediaDecoder2"

    const-string/jumbo v2, "flushinput interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v0, "MediaDecoder2"

    const-string/jumbo v2, "flushoutput interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0
.end method

.method abstract flushRenderer()V
.end method

.method hexprint(Ljava/nio/ByteBuffer;I)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    const-string/jumbo v4, "%02x  "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method hexprint([BII)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p2

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "%02x  "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method hexprint([I)V
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    const-string/jumbo v3, "%04x  "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p1, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->pauseRenderer()V

    return-void
.end method

.method abstract pauseRenderer()V
.end method

.method public restart()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "restart()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public start()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createRenderer()V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->startRenderer()V

    return-void
.end method

.method abstract startRenderer()V
.end method

.method public stop()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->stopRenderer()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "input thread stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "output thread stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_3
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get un-documented exception as a result of stop() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v0, "MediaDecoder2"

    const-string/jumbo v2, "stop output interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "input/output thread is interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "get un-documented exception as a result of releas()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method abstract stopRenderer()V
.end method

.method abstract terminateRenderer()V
.end method

.method public unpause()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unpause()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->unpauseRenderer()V

    return-void
.end method

.method abstract unpauseRenderer()V
.end method
