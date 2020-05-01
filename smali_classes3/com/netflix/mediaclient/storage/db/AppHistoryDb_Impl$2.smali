.class Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;I)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `playEvent` (`id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, `playableId` TEXT NOT NULL, `xid` TEXT NOT NULL, `eventTime` INTEGER NOT NULL, `eventType` INTEGER NOT NULL, `network` INTEGER NOT NULL, `duration` INTEGER NOT NULL, `offline` INTEGER NOT NULL)"

    .line 34
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_playEvent_playableId` ON `playEvent` (`playableId`)"

    .line 35
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE  INDEX `index_playEvent_xid` ON `playEvent` (`xid`)"

    .line 36
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 37
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \"148a2acdb8861ff67ab28091d55d52c0\")"

    .line 38
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `playEvent`"

    .line 43
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->a(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->d(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 50
    iget-object v2, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v2}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->c(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;

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

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->b(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->c(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v0}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->b(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v1}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->e(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 61
    iget-object v2, p0, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl$2;->e:Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;

    invoke-static {v2}, Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;->i(Lcom/netflix/mediaclient/storage/db/AppHistoryDb_Impl;)Ljava/util/List;

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

    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "id"

    const-string v3, "INTEGER"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "TEXT"

    const-string v5, "playableId"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v2, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v7, "xid"

    invoke-direct {v1, v7, v2, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "eventTime"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "eventType"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "network"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "duration"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    new-instance v1, Landroidx/room/util/TableInfo$Column;

    const-string v2, "offline"

    invoke-direct {v1, v2, v3, v4, v6}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 78
    new-instance v2, Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 79
    new-instance v3, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "index_playEvent_playableId"

    invoke-direct {v3, v5, v6, v4}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v3, Landroidx/room/util/TableInfo$Index;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v5, "index_playEvent_xid"

    invoke-direct {v3, v5, v6, v4}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;ZLjava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v3, Landroidx/room/util/TableInfo;

    const-string v4, "playEvent"

    invoke-direct {v3, v4, v0, v1, v2}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 82
    invoke-static {p1, v4}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    move-result-object p1

    .line 83
    invoke-virtual {v3, p1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle playEvent(com.netflix.mediaclient.storage.db.entity.PlayEventEntity).\n Expected:\n"

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
