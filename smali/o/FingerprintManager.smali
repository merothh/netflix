.class public Lo/FingerprintManager;
.super Lo/Fingerprint;
.source ""


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lo/Fingerprint;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalFileFetchProducer"

    return-object v0
.end method

.method protected e(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/LegacyFaceDetectMapper;
    .locals 3

    .line 32
    new-instance v0, Ljava/io/FileInputStream;

    .line 33
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->s()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    .line 32
    invoke-virtual {p0, v0, p1}, Lo/FingerprintManager;->d(Ljava/io/InputStream;I)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    return-object p1
.end method
