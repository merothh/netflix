.class public Lo/HdmiTvClient;
.super Lo/Fingerprint;
.source ""


# instance fields
.field private final a:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;Landroid/content/ContentResolver;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lo/Fingerprint;-><init>(Ljava/util/concurrent/Executor;Lo/AssetFileDescriptor;)V

    .line 34
    iput-object p3, p0, Lo/HdmiTvClient;->a:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "QualifiedResourceFetchProducer"

    return-object v0
.end method

.method protected e(Lcom/facebook/imagepipeline/request/ImageRequest;)Lo/LegacyFaceDetectMapper;
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->a()Landroid/net/Uri;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lo/HdmiTvClient;->a:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/4 v0, -0x1

    .line 42
    invoke-virtual {p0, p1, v0}, Lo/HdmiTvClient;->d(Ljava/io/InputStream;I)Lo/LegacyFaceDetectMapper;

    move-result-object p1

    return-object p1
.end method
