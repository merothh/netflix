.class public final Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;
.super Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;
.source ""


# instance fields
.field private volatile e:Lo/BT;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic d(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic e(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a()Lo/BT;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e:Lo/BT;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e:Lo/BT;

    return-object v0

    .line 122
    :cond_0
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e:Lo/BT;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lo/BP;

    invoke-direct {v0, p0}, Lo/BP;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e:Lo/BT;

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e:Lo/BT;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 2

    .line 97
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "PersistedManifest"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 30
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;-><init>(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;I)V

    const-string v2, "51fd02f8e2c390d3d46123f9ef91d996"

    const-string v3, "ba24411fb76ec40fd1e7c77783b1373e"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 88
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 91
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method
