.class public final Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;
.super Lcom/netflix/mediaclient/storage/db/AppHistoryDb;
.source ""


# instance fields
.field private volatile e:Lo/BX;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic b(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lo/BX;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->e:Lo/BX;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->e:Lo/BX;

    return-object v0

    .line 125
    :cond_0
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->e:Lo/BX;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lo/BU;

    invoke-direct {v0, p0}, Lo/BU;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->e:Lo/BX;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->e:Lo/BX;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 2

    .line 100
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "playEvent"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 31
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;-><init>(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;I)V

    const-string v2, "148a2acdb8861ff67ab28091d55d52c0"

    const-string v3, "52995b973346357ea8521ae083ba1688"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 94
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method
