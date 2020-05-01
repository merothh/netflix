.class public final Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;
.super Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
.source ""


# instance fields
.field private volatile b:Lo/BH;

.field private volatile c:Lo/BK;

.field private volatile d:Lo/BN;

.field private volatile e:Lo/BL;

.field private volatile f:Lo/BR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic a(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic e(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lo/BL;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->e:Lo/BL;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->e:Lo/BL;

    return-object v0

    .line 349
    :cond_0
    monitor-enter p0

    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->e:Lo/BL;

    if-nez v0, :cond_1

    .line 351
    new-instance v0, Lo/BO;

    invoke-direct {v0, p0}, Lo/BO;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->e:Lo/BL;

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->e:Lo/BL;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Lo/BK;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->c:Lo/BK;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->c:Lo/BK;

    return-object v0

    .line 335
    :cond_0
    monitor-enter p0

    .line 336
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->c:Lo/BK;

    if-nez v0, :cond_1

    .line 337
    new-instance v0, Lo/BM;

    invoke-direct {v0, p0}, Lo/BM;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->c:Lo/BK;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->c:Lo/BK;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 278
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "bookmarkStore"

    const-string v2, "offlinePlayable"

    const-string v3, "offlineFalkorPlayable"

    const-string v4, "offlineFalkorProfile"

    const-string v5, "offlineWatched"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 46
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl$4;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl$4;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;I)V

    const-string v2, "8b9fed54ba0633f010e5d71a127feb2b"

    const-string v3, "c21748f1f5ef392ad671df0c378b90ea"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 269
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 272
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public d()Lo/BN;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->d:Lo/BN;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->d:Lo/BN;

    return-object v0

    .line 321
    :cond_0
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->d:Lo/BN;

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Lo/BQ;

    invoke-direct {v0, p0}, Lo/BQ;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->d:Lo/BN;

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->d:Lo/BN;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 326
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Lo/BH;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->b:Lo/BH;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->b:Lo/BH;

    return-object v0

    .line 307
    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->b:Lo/BH;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lo/BI;

    invoke-direct {v0, p0}, Lo/BI;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->b:Lo/BH;

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->b:Lo/BH;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Lo/BR;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->f:Lo/BR;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->f:Lo/BR;

    return-object v0

    .line 363
    :cond_0
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->f:Lo/BR;

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Lo/BS;

    invoke-direct {v0, p0}, Lo/BS;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->f:Lo/BR;

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase_Impl;->f:Lo/BR;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 368
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
