.class public Lo/ScanResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/FullBackup;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/FullBackup<",
        "Ljava/io/InputStream;",
        "Lo/AdvertisingSetParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lo/RulesManager;

.field private final b:Lo/FullBackup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/FullBackup<",
            "Ljava/nio/ByteBuffer;",
            "Lo/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lo/FullBackup;Lo/RulesManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lo/FullBackup<",
            "Ljava/nio/ByteBuffer;",
            "Lo/AdvertisingSetParameters;",
            ">;",
            "Lo/RulesManager;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lo/ScanResult;->e:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lo/ScanResult;->b:Lo/FullBackup;

    .line 34
    iput-object p3, p0, Lo/ScanResult;->a:Lo/RulesManager;

    return-void
.end method

.method private static d(Ljava/io/InputStream;)[B
    .locals 4

    .line 56
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    new-array v1, v1, [B

    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 61
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v0, 0x5

    const-string v1, "StreamGifDecoder"

    .line 65
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Error reading data from stream"

    .line 66
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;IILo/FullBackupAgent;)Lo/Slice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II",
            "Lo/FullBackupAgent;",
            ")",
            "Lo/Slice<",
            "Lo/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lo/ScanResult;->d(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lo/ScanResult;->b:Lo/FullBackup;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/FullBackup;->e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Object;Lo/FullBackupAgent;)Z
    .locals 0

    .line 23
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lo/ScanResult;->d(Ljava/io/InputStream;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/io/InputStream;Lo/FullBackupAgent;)Z
    .locals 1

    .line 39
    sget-object v0, Lo/ScanCallback;->a:Lo/FullBackupDataOutput;

    invoke-virtual {p2, v0}, Lo/FullBackupAgent;->a(Lo/FullBackupDataOutput;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lo/ScanResult;->e:Ljava/util/List;

    iget-object v0, p0, Lo/ScanResult;->a:Lo/RulesManager;

    .line 40
    invoke-static {p2, p1, v0}, Lo/BackupObserver;->c(Ljava/util/List;Ljava/io/InputStream;Lo/RulesManager;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic e(Ljava/lang/Object;IILo/FullBackupAgent;)Lo/Slice;
    .locals 0

    .line 23
    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo/ScanResult;->a(Ljava/io/InputStream;IILo/FullBackupAgent;)Lo/Slice;

    move-result-object p1

    return-object p1
.end method
