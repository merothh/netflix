.class public Lo/PeriodicAdvertisingManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RestoreDescription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RestoreDescription<",
        "Lo/AdvertisingSetParameters;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo/FullBackupAgent;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 0

    .line 23
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->b:Lcom/bumptech/glide/load/EncodeStrategy;

    return-object p1
.end method

.method public a(Lo/Slice;Ljava/io/File;Lo/FullBackupAgent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Slice<",
            "Lo/AdvertisingSetParameters;",
            ">;",
            "Ljava/io/File;",
            "Lo/FullBackupAgent;",
            ")Z"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lo/Slice;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AdvertisingSetParameters;

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lo/AdvertisingSetParameters;->b()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lo/OverlayInfo;->c(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    const-string p3, "GifEncoder"

    .line 35
    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to encode GIF drawable data"

    .line 36
    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic c(Ljava/lang/Object;Ljava/io/File;Lo/FullBackupAgent;)Z
    .locals 0

    .line 17
    check-cast p1, Lo/Slice;

    invoke-virtual {p0, p1, p2, p3}, Lo/PeriodicAdvertisingManager;->a(Lo/Slice;Ljava/io/File;Lo/FullBackupAgent;)Z

    move-result p1

    return p1
.end method
