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

    .prologue
    .line 28
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

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    .line 239
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    .line 240
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    .line 51
    iput-object p2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mMime:Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p6}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->setEventListener(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$EventListener;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaDecoder2"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "audio/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    .line 56
    const-string/jumbo v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    .line 69
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "creating ... "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iput-object p1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    .line 73
    invoke-direct {p0, p2, p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createDecoder(Ljava/lang/String;Landroid/media/MediaCrypto;)Z

    .line 75
    if-eqz p5, :cond_3

    .line 76
    iput-boolean v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEncrypted:Z

    .line 81
    :goto_1
    invoke-direct {p0, p3, p4, p5}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->configureDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)Z

    .line 82
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->startDecoder()Z

    .line 83
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->configureOutputBuffers()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mState:I

    .line 85
    return-void

    .line 59
    :cond_1
    const-string/jumbo v1, "video/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    .line 61
    const-string/jumbo v1, "Video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
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

    .line 79
    :cond_3
    iput-boolean v3, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEncrypted:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffersQ:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->configureOutputBuffers()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    return v0
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBufferCnt:I

    return v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)[Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDataSource:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mEncrypted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->processAudioIfEncrypted(Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V

    return-void
.end method

.method private configureDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;)Z
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 181
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
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

    .line 184
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private configureOutputBuffers()V
    .locals 3

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    .line 217
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
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

    .line 220
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    new-array v0, v0, [Landroid/media/MediaCodec$BufferInfo;

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferInfo:[Landroid/media/MediaCodec$BufferInfo;

    .line 221
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "get un-known exception while getOutputBuffers()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBufferCnt:I

    goto :goto_0
.end method

.method private createDecoder(Ljava/lang/String;Landroid/media/MediaCrypto;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 87
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mIsAudio:Z

    if-nez v0, :cond_0

    .line 88
    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 89
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x12

    if-le v2, v3, :cond_3

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createVideoDecoderForK(Ljava/lang/String;Z)V

    .line 96
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 97
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    .line 98
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
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

    .line 102
    :cond_1
    return v1

    .line 88
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createVideoDecoderPreK(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private createInputThread()V
    .locals 3

    .prologue
    .line 243
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

    .line 244
    new-instance v1, Landroid/os/HandlerThread;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 247
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$1;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    .line 409
    return-void

    .line 243
    :cond_0
    const-string/jumbo v0, "Video"

    goto :goto_0
.end method

.method private createOutputThread()V
    .locals 3

    .prologue
    .line 411
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

    .line 412
    new-instance v1, Landroid/os/HandlerThread;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 415
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$2;-><init>(Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    .line 529
    return-void

    .line 411
    :cond_0
    const-string/jumbo v0, "Video"

    goto :goto_0
.end method

.method private createVideoDecoderForK(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 139
    invoke-static {p1}, Lcom/netflix/mediaclient/media/JPlayer/AdaptiveMediaDecoderHelper;->getAdaptivePlaybackDecoderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    .line 141
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

    .line 157
    :goto_0
    return-void

    .line 144
    :cond_0
    if-eqz p2, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
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

    .line 152
    :cond_2
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
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

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_0
.end method

.method private createVideoDecoderPreK(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 105
    if-eqz p2, :cond_2

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "try OMX.qcom.video.decoder.avc.smoothstreaming.secure"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string/jumbo v0, "OMX.qcom.video.decoder.avc.smoothstreaming.secure"

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getSecureDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
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

    .line 121
    :cond_0
    :try_start_1
    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    :cond_1
    :goto_1
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "createSecureDecoder OMX.qcom.video.decoder.avc.smoothstreaming.secure failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_0

    .line 122
    :catch_1
    move-exception v1

    .line 123
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

    .line 124
    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_1

    .line 129
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "try OMX.qcom.video.decoder.avc.smoothstreaming"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v0, "OMX.qcom.video.decoder.avc.smoothstreaming"

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 131
    :catch_2
    move-exception v0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "createSecureDecoder OMX.qcom.video.decoder.avc.smoothstreaming failed"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object v4, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    goto :goto_1
.end method

.method private getSecureDecoderNameForMime(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    move v2, v1

    .line 160
    :goto_0
    if-ge v2, v3, :cond_3

    .line 161
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    move v0, v1

    .line 169
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 170
    aget-object v6, v5, v0

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
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

    .line 176
    :goto_2
    return-object v0

    .line 169
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private processAudioIfEncrypted(Ljava/nio/ByteBuffer;Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 738
    iget-object v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    if-nez v0, :cond_2

    .line 744
    new-instance v0, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    iget-object v1, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->key:[B

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;-><init>([B)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    .line 751
    :cond_2
    new-array v2, v6, [I

    aput v5, v2, v5

    .line 752
    new-array v1, v6, [I

    iget v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->size:I

    aput v0, v1, v5

    .line 753
    iget v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nSubsample:I

    if-lez v0, :cond_3

    .line 755
    iget-object v1, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteInClear:[I

    .line 756
    iget-object v0, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->nByteEncrypted:[I

    .line 771
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mAesCencDecryptor:Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;

    iget-object v3, p2, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderBase$InputDataSource$BufferMeta;->iv:[B

    invoke-virtual {v2, p1, v3, v1, v0}, Lcom/netflix/mediaclient/media/JPlayer/AesCencDecryptor;->decrypt(Ljava/nio/ByteBuffer;[B[I[I)Z

    goto :goto_0

    .line 758
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->getMime()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "audio/mp4a-latm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 761
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 762
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

    .line 763
    const/4 v0, 0x7

    .line 764
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    .line 765
    const/16 v0, 0x9

    .line 767
    :cond_4
    aput v0, v2, v5

    .line 768
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

    .prologue
    .line 187
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    .line 192
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    iput v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBufferCnt:I

    .line 193
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
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

    .line 196
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputBuffersQ:Ljava/util/LinkedList;

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputBuffersQ:Ljava/util/LinkedList;

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createInputThread()V

    .line 200
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createOutputThread()V

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
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

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "flushinput"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 629
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 630
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 637
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "flushoutput"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 641
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 642
    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 645
    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 649
    :goto_2
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 651
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->flushRenderer()V

    .line 652
    return-void

    .line 624
    :catch_0
    move-exception v0

    .line 625
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

    .line 634
    :catch_1
    move-exception v0

    .line 635
    :try_start_7
    const-string/jumbo v0, "MediaDecoder2"

    const-string/jumbo v2, "flushinput interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 646
    :catch_2
    move-exception v0

    .line 647
    :try_start_8
    const-string/jumbo v0, "MediaDecoder2"

    const-string/jumbo v2, "flushoutput interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 649
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

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 716
    :goto_0
    if-ge v0, p2, :cond_0

    .line 717
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

    .line 716
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    return-void
.end method

.method hexprint([BII)V
    .locals 6

    .prologue
    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p2

    .line 723
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int v2, p2, p3

    if-ge v0, v2, :cond_0

    .line 724
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

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    return-void
.end method

.method hexprint([I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 730
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 731
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

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    .line 607
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->pauseRenderer()V

    .line 608
    return-void
.end method

.method abstract pauseRenderer()V
.end method

.method public restart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "restart()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    .line 543
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 544
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 545
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 532
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    .line 534
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->createRenderer()V

    .line 537
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->startRenderer()V

    .line 538
    return-void
.end method

.method abstract startRenderer()V
.end method

.method public stop()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->stopRenderer()V

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 562
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "input thread stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    iget-object v1, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    monitor-enter v1

    .line 570
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputState:Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2$LocalStateNotifier;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "output thread stopped"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V

    .line 588
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    .line 589
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 595
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "release()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 601
    :goto_3
    return-void

    .line 551
    :catch_0
    move-exception v0

    .line 552
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

    .line 573
    :catch_1
    move-exception v0

    .line 574
    :try_start_6
    const-string/jumbo v0, "MediaDecoder2"

    const-string/jumbo v2, "stop output interrupted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 591
    :catch_2
    move-exception v0

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "input/output thread is interrupted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 598
    :catch_3
    move-exception v0

    .line 599
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

    .prologue
    const/4 v2, 0x1

    .line 612
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "unpause()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mDecoderPause:Z

    .line 615
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mInputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 616
    iget-object v0, p0, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->mOutputHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 617
    invoke-virtual {p0}, Lcom/netflix/mediaclient/media/JPlayer/MediaDecoderPipe2;->unpauseRenderer()V

    .line 618
    return-void
.end method

.method abstract unpauseRenderer()V
.end method
