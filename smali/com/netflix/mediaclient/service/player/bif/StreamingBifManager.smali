.class public Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;
.super Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;
.source "StreamingBifManager.java"


# static fields
.field private static final BIF_FILE_NAME:Ljava/lang/String; = "bif.tmp"

.field private static final MDX_BIF_FILE_NAME:Ljava/lang/String; = "mdxbif.tmp"

.field private static final TAG:Ljava/lang/String; = "BifManager"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mBifLoadingThread:Ljava/lang/Thread;

.field private mFile:Ljava/io/RandomAccessFile;

.field private mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mSavedFileName:Ljava/lang/String;

.field private final mUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v0, "mdxbif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->loadBif()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/TrickplayUrl;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    .line 34
    const-string/jumbo v0, "bif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const-string/jumbo v0, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BifManager start, pick urls..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    const/4 v2, -0x1

    move v0, v1

    .line 42
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 43
    aget-object v3, p2, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v3

    .line 44
    aget-object v4, p2, v0

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getAspect()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move v2, v1

    .line 45
    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 46
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 47
    const-string/jumbo v4, "BifManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "preferred url"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    move v2, v1

    .line 56
    :goto_2
    array-length v3, p2

    if-ge v2, v3, :cond_6

    .line 57
    if-eq v0, v2, :cond_5

    .line 58
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v4

    move v3, v1

    .line 59
    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 61
    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 56
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 66
    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    const-string/jumbo v0, "BifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TrickplayUrls entities with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mUrlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " urls"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_7
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->loadBif()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private loadBif()V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager$1;-><init>(Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;)V

    const-string/jumbo v2, "OfflineBifManagerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    return-void
.end method


# virtual methods
.method public bridge synthetic getIndexFrame(I)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/service/player/bif/BasicBifManager;->getIndexFrame(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected getRandomAccessFile()Ljava/io/RandomAccessFile;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method protected isBifLoaded()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mIsBifLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mBifLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bif/StreamingBifManager;->mSavedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 126
    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "released"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const-string/jumbo v1, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 121
    :catch_1
    move-exception v0

    .line 122
    const-string/jumbo v1, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "close file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method
