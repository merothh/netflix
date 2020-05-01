.class public Lcom/netflix/mediaclient/media/BookmarkStoreRoom;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/media/BookmarkStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;
    }
.end annotation


# static fields
.field private static final MAX_BOOKMARKS_PER_PROFILE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "nf_bookmarkRoom"


# instance fields
.field private mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

.field private final mBookmarkRepo:Lo/BA;

.field private mBookmarkStoreFile:Ljava/io/File;

.field public mContext:Landroid/content/Context;

.field private final mInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOfflineDatabase:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Lcom/netflix/mediaclient/media/BookmarkStoreRoom$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    sget-object v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->b(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mOfflineDatabase:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    .line 70
    sget-object p1, Lo/BA;->a:Lo/BA$Activity;

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mOfflineDatabase:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {p1, v0}, Lo/BA$Activity;->a(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BA;

    move-result-object p1

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    return-void
.end method

.method public static synthetic d(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->lambda$doInit$0(Landroid/content/Context;)V

    return-void
.end method

.method private doInit(Landroid/content/Context;)Z
    .locals 9

    .line 88
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/bookmarkStore.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkStoreFile:Ljava/io/File;

    .line 89
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkStoreFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mOfflineDatabase:Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->b()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lo/h;

    invoke-direct {v1, p0, p1}, Lo/h;-><init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 118
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    invoke-virtual {v0}, Lo/BA;->d()Ljava/util/List;

    move-result-object v0

    const-string v2, "db_exception_count"

    .line 119
    invoke-static {p1, v2, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/BV;

    .line 121
    invoke-virtual {v2}, Lo/BV;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->ensureEntryForProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 122
    invoke-virtual {v2}, Lo/BV;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lo/Aa;

    .line 123
    invoke-virtual {v2}, Lo/BV;->a()I

    move-result v6

    invoke-virtual {v2}, Lo/BV;->d()J

    move-result-wide v7

    invoke-virtual {v2}, Lo/BV;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v7, v8, v2}, Lo/Aa;-><init>(IJLjava/lang/String;)V

    .line 122
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 128
    sget-object v2, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->a:Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    invoke-virtual {v2, p1, v0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    :goto_2
    return v1
.end method

.method private ensureEntryForProfile(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Aa;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method private isProfileStillValid(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;)Z"
        }
    .end annotation

    .line 311
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/BC;

    .line 312
    invoke-interface {v0}, Lo/BC;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lo/aev;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$doInit$0(Landroid/content/Context;)V
    .locals 5

    .line 92
    const-class v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkStoreFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkStoreFile:Ljava/io/File;

    invoke-static {v1}, Lo/adE;->c(Ljava/io/File;)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lo/aev;->c([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-static {}, Lo/adI;->b()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iput-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "nf_bookmarkRoom"

    const-string v3, "init error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 99
    invoke-static {v2, v1, v3, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 100
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v1, v1, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 103
    :cond_1
    new-instance v1, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStoreRoom;Lcom/netflix/mediaclient/media/BookmarkStoreRoom$1;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    .line 104
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v1, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    .line 106
    :cond_2
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;

    .line 107
    sget-object p1, Lcom/netflix/mediaclient/media/BookmarkUtil;->INSTANCE:Lcom/netflix/mediaclient/media/BookmarkUtil;

    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    iget-object v2, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-virtual {p1, v1, v2}, Lcom/netflix/mediaclient/media/BookmarkUtil;->migrateDataToRoom(Lo/BA;Ljava/util/Map;)V

    .line 109
    iget-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkStoreFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 110
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private trimSizeIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/Aa;",
            ">;)V"
        }
    .end annotation

    .line 288
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 289
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/32 v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 290
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/Aa;

    iget-wide v5, v5, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 292
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Aa;

    iget-wide v1, v1, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    move-wide v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v2, "nf_bookmarkRoom"

    const-string v3, "trimming videoId %s"

    .line 297
    invoke-static {v2, v3, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 298
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object p2, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    invoke-virtual {p2, v1, p1}, Lo/BA;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public createOrUpdateBookmark(Lo/Bc;Ljava/lang/String;)V
    .locals 9

    if-eqz p1, :cond_6

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_3

    .line 236
    :cond_0
    invoke-interface {p1}, Lo/Bc;->bb()Lo/AK;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 240
    instance-of v1, p1, Lo/agp;

    if-eqz v1, :cond_2

    .line 241
    move-object v0, p1

    check-cast v0, Lo/agp;

    :cond_2
    if-eqz v0, :cond_3

    .line 245
    invoke-virtual {v0}, Lo/agp;->bA()Lcom/netflix/model/leafs/Bookmark;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/model/leafs/Bookmark;->getBookmarkPosition()I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lo/AK;->P()I

    move-result v0

    .line 246
    :goto_0
    invoke-interface {p1}, Lo/AK;->K()J

    move-result-wide v1

    .line 249
    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "nf_bookmarkRoom"

    if-nez v3, :cond_4

    const-string v3, "createOrUpdateBookmark bookmarkStore has no bookmark"

    .line 251
    invoke-static {v6, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 253
    :cond_4
    iget-wide v7, v3, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v3, v7, v1

    if-gez v3, :cond_5

    const-string v3, "createOrUpdateBookmark bookmarkStore is older"

    .line 254
    invoke-static {v6, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v3, "createOrUpdateBookmark bookmarkStore is newer"

    .line 257
    invoke-static {v6, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    new-array v3, v5, [Ljava/lang/Object;

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "createOrUpdateBookmark calling BookmarkStore.setBookmark time=%d"

    invoke-static {v6, v4, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 261
    new-instance v3, Lo/Aa;

    invoke-interface {p1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lo/Aa;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, p2, v3}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->setBookmark(Ljava/lang/String;Lo/Aa;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public declared-synchronized getBookmark(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;
    .locals 2

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 177
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    .line 179
    monitor-exit p0

    return-object v1

    .line 181
    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/Aa;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public init(Landroid/content/Context;)Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mInitDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    invoke-static {}, Lo/adu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 80
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->doInit(Landroid/content/Context;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public declared-synchronized onPlayablesFetched(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/AK;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 196
    :cond_0
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->ensureEntryForProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/AK;

    .line 203
    invoke-interface {v2}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0, p2, v4}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_3

    const-string v3, "nf_bookmarkRoom"

    const-string v5, "got a new bookmark"

    .line 211
    invoke-static {v3, v5}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_3
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    invoke-interface {v2}, Lo/AK;->K()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    const-string v3, "nf_bookmarkRoom"

    const-string v9, "bookMarkStoreTimeIsNewBySeconds=%d"

    new-array v10, v6, [Ljava/lang/Object;

    .line 214
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static {v3, v9, v10}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_1

    .line 221
    new-instance v3, Lo/Aa;

    invoke-interface {v2}, Lo/AK;->P()I

    move-result v5

    invoke-interface {v2}, Lo/AK;->K()J

    move-result-wide v6

    invoke-direct {v3, v5, v6, v7, v4}, Lo/Aa;-><init>(IJLjava/lang/String;)V

    .line 222
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v9, Lo/BV;

    invoke-interface {v2}, Lo/AK;->P()I

    move-result v6

    invoke-interface {v2}, Lo/AK;->K()J

    move-result-wide v7

    move-object v3, v9

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lo/BV;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 227
    :cond_5
    :try_start_1
    iget-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    invoke-virtual {p1, v1}, Lo/BA;->a(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 229
    :try_start_2
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p2

    invoke-interface {p2, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :goto_2
    monitor-exit p0

    return-void

    .line 194
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setBookmark(Ljava/lang/String;Lo/Aa;)V
    .locals 8

    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 158
    :try_start_1
    iget-object v0, p2, Lo/Aa;->mVideoId:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "nf_bookmarkRoom"

    const-string v1, "setBookmark videoId=%s, bookmarkTimeInSeconds=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 162
    iget-object v4, p2, Lo/Aa;->mVideoId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lo/Aa;->mBookmarkInSecond:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->ensureEntryForProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 164
    iget-object v1, p2, Lo/Aa;->mVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    new-instance v1, Lo/BV;

    iget-object v3, p2, Lo/Aa;->mVideoId:Ljava/lang/String;

    iget v5, p2, Lo/Aa;->mBookmarkInSecond:I

    iget-wide v6, p2, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lo/BV;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :try_start_2
    iget-object p2, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    invoke-virtual {p2, v1}, Lo/BA;->b(Lo/BV;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 169
    :try_start_3
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/Throwable;)V

    .line 171
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->trimSizeIfNeeded(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_4
    const-string p1, "nf_bookmarkRoom"

    const-string p2, "setBookmark not valid data"

    .line 159
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateBookmarkIfExists(Ljava/lang/String;Lcom/netflix/model/leafs/Bookmark;Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    invoke-interface {p2}, Lcom/netflix/model/leafs/Bookmark;->getBookmarkPosition()I

    move-result v0

    .line 271
    invoke-interface {p2}, Lcom/netflix/model/leafs/Bookmark;->getLastModified()J

    move-result-wide v1

    .line 272
    invoke-virtual {p0, p3, p1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lo/Aa;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "nf_bookmarkRoom"

    const-string v8, "updateBookmarkIfExists playableId=%s falkorBookmarkPosition=%d falkorBookmarkUpdateTime=%d"

    invoke-static {v5, v8, v3}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    iget-wide v8, p2, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v3, v8, v1

    if-gez v3, :cond_1

    const-string p2, "updateBookmarkIfExists updating"

    .line 276
    invoke-static {v5, p2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance p2, Lo/Aa;

    invoke-direct {p2, v0, v1, v2, p1}, Lo/Aa;-><init>(IJLjava/lang/String;)V

    invoke-virtual {p0, p3, p2}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->setBookmark(Ljava/lang/String;Lo/Aa;)V

    goto :goto_0

    :cond_1
    new-array p1, v7, [Ljava/lang/Object;

    .line 279
    iget-wide p2, p2, Lo/Aa;->mBookmarkUpdateTimeInUTCMs:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v6

    const-string p2, "updateBookmarkIfExists storeTime=%d falkorBookmarkUpdateTime=%d"

    invoke-static {v5, p2, p1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized updateValidProfiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BC;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    .line 137
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v1, v1, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->isProfileStillValid(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;

    iget-object v2, v2, Lcom/netflix/mediaclient/media/BookmarkStoreRoom$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStoreRoom;->mBookmarkRepo:Lo/BA;

    invoke-virtual {p1, v0}, Lo/BA;->b(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
