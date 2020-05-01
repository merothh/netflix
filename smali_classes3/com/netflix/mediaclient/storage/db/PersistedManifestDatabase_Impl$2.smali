.class Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;I)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `PersistedManifest` (`expires` INTEGER NOT NULL, `manifest` TEXT NOT NULL, `playableId` INTEGER NOT NULL, `netType` INTEGER NOT NULL, `netId` INTEGER NOT NULL, `isBranching` INTEGER NOT NULL, `supportsLanguageSelector` INTEGER NOT NULL, `preferredAudio` TEXT NOT NULL, `preferredSubtitle` TEXT NOT NULL, `preferredAssistive` INTEGER NOT NULL, PRIMARY KEY(`playableId`, `netType`, `netId`, `isBranching`, `supportsLanguageSelector`, `preferredAudio`, `preferredSubtitle`, `preferredAssistive`))"

    .line 33
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 34
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"51fd02f8e2c390d3d46123f9ef91d996\")"

    .line 35
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `PersistedManifest`"

    .line 40
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v0}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->a(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    iget-object v1, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v1}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->b(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 47
    iget-object v2, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v2}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->d(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->c(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v0}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->c(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v1}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->e(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl$2;->b:Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;

    invoke-static {v2}, Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;->f(Lcom/netflix/mediaclient/storage/db/PersistedManifestDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public validateMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 8

    .line 65
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 66
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "expires"

    const/4 v3, 0x0

    const-string v4, "INTEGER"

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v5, v3}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "manifest"

    const-string v6, "TEXT"

    invoke-direct {v1, v2, v6, v5, v3}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "playableId"

    invoke-direct {v1, v2, v4, v5, v5}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "netType"

    const/4 v7, 0x2

    invoke-direct {v1, v2, v4, v5, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "netId"

    const/4 v7, 0x3

    invoke-direct {v1, v2, v4, v5, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "isBranching"

    const/4 v7, 0x4

    invoke-direct {v1, v2, v4, v5, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "supportsLanguageSelector"

    const/4 v7, 0x5

    invoke-direct {v1, v2, v4, v5, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "preferredAudio"

    const/4 v7, 0x6

    invoke-direct {v1, v2, v6, v5, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "preferredSubtitle"

    const/4 v7, 0x7

    invoke-direct {v1, v2, v6, v5, v7}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "preferredAssistive"

    const/16 v6, 0x8

    invoke-direct {v1, v2, v4, v5, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 77
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 78
    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v4, "PersistedManifest"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 79
    invoke-static {p1, v4}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    .line 80
    invoke-virtual {v3, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle PersistedManifest(com.netflix.mediaclient.storage.db.entity.PersistedManifest).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
