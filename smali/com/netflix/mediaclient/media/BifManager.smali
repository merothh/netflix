.class public Lcom/netflix/mediaclient/media/BifManager;
.super Ljava/lang/Object;
.source "BifManager.java"


# static fields
.field private static final CHUNK_SIZE:I = 0x400

.field private static final HEADER_SIZE:I = 0x40

.field private static final INDEX_ENTRY_SIZE:I = 0x8

.field private static final MAX_INDEX_SIZE:I = 0x7080

.field private static final SAVED_FILE_NAME:Ljava/lang/String; = "bif.tmp"

.field private static final TAG:Ljava/lang/String; = "BifManager"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mBifCount:I

.field private final mBifMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBifReady:Z

.field private mDownloadThread:Ljava/lang/Thread;

.field private mHeaderIndexSize:I

.field private mInterval:I

.field private mSavedFileName:Ljava/lang/String;

.field private volatile mStopBif:Z

.field private final mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

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

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifMap:Ljava/util/SortedMap;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mInterval:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

    const-string/jumbo v0, "bif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mSavedFileName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    const-string/jumbo v0, "mdxbif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mSavedFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mAppContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "load bif from  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BifManager;->loadBif()V

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "BifManager end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/netflix/mediaclient/media/TrickplayUrl;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifMap:Ljava/util/SortedMap;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mInterval:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

    const-string/jumbo v0, "bif.tmp"

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mSavedFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/media/BifManager;->createUrlList([Lcom/netflix/mediaclient/media/TrickplayUrl;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BifManager;->loadBif()V

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "BifManager end"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/BifManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mStopBif:Z

    return v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/BifManager;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mVersion:I

    return v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/media/BifManager;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/media/BifManager;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/media/BifManager;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/media/BifManager;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mInterval:I

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/media/BifManager;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mInterval:I

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/media/BifManager;)I
    .locals 1

    iget v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mHeaderIndexSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/media/BifManager;I)I
    .locals 0

    iput p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mHeaderIndexSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/media/BifManager;)Ljava/util/SortedMap;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifMap:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/media/BifManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mSavedFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/media/BifManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/media/BifManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifReady:Z

    return p1
.end method

.method private createUrlList([Lcom/netflix/mediaclient/media/TrickplayUrl;)V
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BifManager start, pick urls..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, -0x1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getAspect()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_2

    move v2, v1

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_1

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

    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    :cond_4
    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    if-eq v0, v2, :cond_5

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/TrickplayUrl;->getUrl()[Ljava/lang/String;

    move-result-object v4

    move v3, v1

    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "BifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/media/BifManager;->mTrickplayUrls:[Lcom/netflix/mediaclient/media/TrickplayUrl;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " TrickplayUrls entities with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/media/BifManager;->mUrlList:Ljava/util/ArrayList;

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

    :cond_7
    return-void
.end method

.method private dumpBifBuffer([BI)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "first foure %02x %02x %02x %2x"

    new-array v2, v8, [Ljava/lang/Object;

    aget-byte v3, p1, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    aget-byte v3, p1, v5

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    aget-byte v3, p1, v6

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    aget-byte v3, p1, v7

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BifManager"

    const-string/jumbo v1, "last foure %02x %02x %02x %2x"

    new-array v2, v8, [Ljava/lang/Object;

    add-int/lit8 v3, p2, -0x4

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    add-int/lit8 v3, p2, -0x3

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    add-int/lit8 v3, p2, -0x2

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v6

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static dumpHeader([B)V
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x40

    if-ge v0, v2, :cond_0

    const-string/jumbo v2, "BifManager"

    const-string/jumbo v3, "%02x %02x %02x %2x"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method private loadBif()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mStopBif:Z

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifReady:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netflix/mediaclient/media/BifManager$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/BifManager$1;-><init>(Lcom/netflix/mediaclient/media/BifManager;)V

    const-string/jumbo v2, "BifManagerThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mDownloadThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mDownloadThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mDownloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getIndexFrame(I)Ljava/nio/ByteBuffer;
    .locals 9

    const/4 v1, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifReady:Z

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mInterval:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/netflix/mediaclient/media/BifManager;->mInterval:I

    div-int/2addr v0, v2

    iget-object v2, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifMap:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v0, v2

    iget v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mHeaderIndexSize:I

    sub-int v0, v2, v0

    new-array v4, v3, [B

    :try_start_0
    iget-object v5, p0, Lcom/netflix/mediaclient/media/BifManager;->mAppContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/netflix/mediaclient/media/BifManager;->mSavedFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/io/FileInputStream;->skip(J)J

    const/4 v0, 0x0

    invoke-virtual {v5, v4, v0, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "BifManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "return @"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ", with size "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, ", read "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    invoke-static {v4, v0, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BifManager"

    const-string/jumbo v3, "Failed reading bif "

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public isBifReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mBifReady:Z

    return v0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mStopBif:Z

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BifManager;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BifManager;->mSavedFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method
