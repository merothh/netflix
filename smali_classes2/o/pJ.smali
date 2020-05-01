.class public Lo/pJ;
.super Lo/pF;
.source ""


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/io/RandomAccessFile;

.field private g:Lo/xZ;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/xZ;Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lo/pF;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/pJ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/pJ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    const-string v0, "mdxbif.tmp"

    .line 92
    iput-object v0, p0, Lo/pJ;->b:Ljava/lang/String;

    .line 93
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/pJ;->c:Landroid/content/Context;

    .line 94
    iput-object p1, p0, Lo/pJ;->g:Lo/xZ;

    .line 95
    iget-object p1, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-direct {p0}, Lo/pJ;->b()V

    return-void
.end method

.method public constructor <init>(Lo/xZ;[Lo/sP;)V
    .locals 9

    .line 46
    invoke-direct {p0}, Lo/pF;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/pJ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lo/pJ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    .line 48
    invoke-static {}, Lo/CarrierIdentifier;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/pJ;->c:Landroid/content/Context;

    const-string v0, "bif.tmp"

    .line 49
    iput-object v0, p0, Lo/pJ;->b:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lo/pJ;->g:Lo/xZ;

    const/4 p1, 0x0

    .line 58
    :goto_0
    array-length v0, p2

    const/4 v2, 0x2

    const-string v3, "BifManager"

    const/4 v4, 0x1

    if-ge p1, v0, :cond_1

    .line 59
    aget-object v0, p2, p1

    invoke-virtual {v0}, Lo/sP;->c()[Ljava/lang/String;

    move-result-object v0

    .line 60
    aget-object v5, p2, p1

    invoke-virtual {v5}, Lo/sP;->e()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 61
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_2

    new-array v6, v2, [Ljava/lang/Object;

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    aget-object v7, v0, v5

    aput-object v7, v6, v4

    const-string v7, "preferred url%d == %s"

    invoke-static {v3, v7, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 63
    iget-object v6, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    aget-object v7, v0, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :cond_2
    const/4 v0, 0x0

    .line 70
    :goto_2
    array-length v5, p2

    if-ge v0, v5, :cond_4

    if-eq p1, v0, :cond_3

    .line 72
    aget-object v5, p2, v0

    invoke-virtual {v5}, Lo/sP;->c()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 73
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_3

    .line 75
    iget-object v7, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-array p1, v2, [Ljava/lang/Object;

    .line 80
    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    iget-object p2, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "%d TrickplayUrls entities with %d urls"

    invoke-static {v3, p2, p1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 81
    invoke-direct {p0}, Lo/pJ;->b()V

    return-void
.end method

.method static synthetic a(Lo/pJ;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/pJ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .line 110
    new-instance v0, Lo/pJ$1;

    invoke-direct {v0, p0, p2}, Lo/pJ$1;-><init>(Lo/pJ;I)V

    .line 157
    iget-object p2, p0, Lo/pJ;->g:Lo/xZ;

    sget-object v1, Lcom/netflix/mediaclient/api/res/AssetType;->e:Lcom/netflix/mediaclient/api/res/AssetType;

    invoke-interface {p2, p1, v1, v0}, Lo/xZ;->e(Ljava/lang/String;Lcom/netflix/mediaclient/api/res/AssetType;Lo/yf;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 101
    iget-object v0, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/pJ;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "BifManager"

    const-string v1, "Unable to download Bif, no URLs!"

    .line 104
    invoke-static {v0, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic b(Lo/pJ;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lo/pJ;->d([B)V

    return-void
.end method

.method private b([B)V
    .locals 1

    .line 168
    new-instance v0, Lo/pL;

    invoke-direct {v0, p0, p1}, Lo/pL;-><init>(Lo/pJ;[B)V

    .line 169
    new-instance p1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {p1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lo/pJ;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lo/pJ;->h:Ljava/util/ArrayList;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 232
    iget-object v0, p0, Lo/pJ;->e:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "BifManager"

    invoke-static {v3, v0, v1, v2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lo/pJ;->c:Landroid/content/Context;

    iget-object v1, p0, Lo/pJ;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic d(Lo/pJ;Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lo/pJ;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d(Lo/pJ;[B)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lo/pJ;->b([B)V

    return-void
.end method

.method private synthetic d([B)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lo/pJ;->e([B)V

    return-void
.end method

.method private e([B)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 179
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/pJ;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/pJ;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    iget-object v3, p0, Lo/pJ;->c:Landroid/content/Context;

    iget-object v4, p0, Lo/pJ;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 183
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 185
    iget-object p1, p0, Lo/pJ;->c:Landroid/content/Context;

    iget-object v4, p0, Lo/pJ;->b:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 187
    invoke-virtual {p0, v1}, Lo/pJ;->d(Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {p1, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/pJ;->e:Ljava/io/RandomAccessFile;

    .line 189
    iget-object p1, p0, Lo/pJ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 192
    :cond_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 194
    :try_start_2
    iget-object p1, p0, Lo/pJ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 195
    invoke-direct {p0}, Lo/pJ;->d()V

    .line 197
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 197
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    move-object v2, v1

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_0
    :try_start_6
    const-string v3, "BifManager"

    const-string v4, "loadBifIndexAsync has exception"

    new-array v0, v0, [Ljava/lang/Object;

    .line 200
    invoke-static {v3, p1, v4, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v1, :cond_2

    .line 204
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 207
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :cond_3
    :goto_1
    return-void

    :catchall_3
    move-exception p1

    :goto_2
    if-eqz v1, :cond_4

    .line 204
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 207
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 210
    :catch_3
    :cond_5
    throw p1
.end method


# virtual methods
.method protected a()Ljava/io/RandomAccessFile;
    .locals 1

    .line 220
    iget-object v0, p0, Lo/pJ;->e:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method public bridge synthetic a(I)Ljava/nio/ByteBuffer;
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lo/pF;->a(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lo/pJ;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    invoke-direct {p0}, Lo/pJ;->d()V

    const-string v0, "BifManager"

    const-string v1, "released"

    .line 227
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lo/pJ;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
