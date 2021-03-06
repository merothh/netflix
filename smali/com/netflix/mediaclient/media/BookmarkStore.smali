.class public Lcom/netflix/mediaclient/media/BookmarkStore;
.super Ljava/lang/Object;
.source "BookmarkStore.java"


# static fields
.field private static final MAX_BOOKMARKS_PER_PROFILE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "nf_BookmarkStore"

.field private static sBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;


# instance fields
.field private mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

.field private mBookmarkStoreFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/media/BookmarkStore;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkStoreFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/media/BookmarkStore;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/media/BookmarkStore;Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;)Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    return-object p1
.end method

.method public static getInstance()Lcom/netflix/mediaclient/media/BookmarkStore;
    .locals 2

    sget-object v0, Lcom/netflix/mediaclient/media/BookmarkStore;->sBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

    if-nez v0, :cond_1

    const-class v1, Lcom/netflix/mediaclient/media/BookmarkStore;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/media/BookmarkStore;->sBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/media/BookmarkStore;

    invoke-direct {v0}, Lcom/netflix/mediaclient/media/BookmarkStore;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/media/BookmarkStore;->sBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/media/BookmarkStore;->sBookmarkStore:Lcom/netflix/mediaclient/media/BookmarkStore;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isProfileStillValid(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;->getProfileGuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private persistBookmarkData()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/media/BookmarkStore$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/BookmarkStore$2;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setBookmarkNoPersist(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "nf_BookmarkStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBookmark videoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bookmarkTimeInSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/media/BookmarkStore;->trimSizeIfNeeded(Ljava/util/Map;)V

    iget-object v1, p2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mVideoId:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private trimSizeIfNeeded(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/32 v2, 0x7fffffff

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    iget-wide v6, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    iget-wide v2, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    move-wide v8, v2

    move-object v2, v1

    move-wide v0, v8

    :goto_1
    move-object v4, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {p1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    move-wide v0, v2

    move-object v2, v4

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "nf_BookmarkStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBookmark videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bookmarkTimeInSeconds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkInSecond:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string/jumbo v1, "nf_BookmarkStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBookmark no bookmark for videoId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/bookmarkStore.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkStoreFile:Ljava/io/File;

    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/media/BookmarkStore$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/media/BookmarkStore$1;-><init>(Lcom/netflix/mediaclient/media/BookmarkStore;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public declared-synchronized onCWVideosFetched(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v4

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "nf_BookmarkStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "-> cwVideo title="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/netflix/mediaclient/media/BookmarkStore;->getBookmark(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "nf_BookmarkStore"

    const-string/jumbo v6, "got a new bookmark"

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_2
    if-eqz v3, :cond_5

    new-instance v2, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkPosition()I

    move-result v3

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkUpdateTime()J

    move-result-wide v6

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;-><init>(IJLjava/lang/String;)V

    invoke-direct {p0, p2, v2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmarkNoPersist(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v3, Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;->mBookmarkUpdateTimeInUTCMs:J

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;->getPlayableBookmarkUpdateTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    const-string/jumbo v3, "nf_BookmarkStore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "bookMarkStoreTimeIsNewBySeconds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->persistBookmarkData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method public declared-synchronized setBookmark(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_BookmarkStore"

    const-string/jumbo v1, "setBookmark not valid data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/BookmarkStore;->setBookmarkNoPersist(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/PlaybackBookmark;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->persistBookmarkData()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized updateValidProfiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    if-eqz v0, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/netflix/mediaclient/media/BookmarkStore;->isProfileStillValid(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/media/BookmarkStore;->mBookmarkData:Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;

    iget-object v3, v3, Lcom/netflix/mediaclient/media/BookmarkStore$BookmarkData;->mBookmarkMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Lcom/netflix/mediaclient/media/BookmarkStore;->persistBookmarkData()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void
.end method
