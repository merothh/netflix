.class public final Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;-><init>()V

    return-void
.end method

.method private final d(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OfflineDb"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v1, "context.getDatabasePath(DB_NAME)"

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p1, v1}, Ljava/io/File;->setWritable(Z)Z

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "now canWrite=%b"

    invoke-static {v0, p1, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbError"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    check-cast p2, Ljava/lang/Throwable;

    const-string v1, "handleDbException dbErr"

    invoke-interface {v0, v1, p2}, Lo/SpinnerAdapter;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p2, "db_exception_count"

    const/4 v0, 0x0

    .line 202
    invoke-static {p1, p2, v0}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 203
    invoke-static {p1, p2, v0}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final b(Landroid/content/Context;)Lcom/netflix/mediaclient/storage/db/OfflineDatabase;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->h()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 179
    const-class v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->h()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    .line 181
    const-class v1, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    const-string v2, "OfflineDb"

    invoke-static {p1, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 182
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->f()Landroidx/room/migration/Migration;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 183
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->j()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 184
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->i()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 185
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->l()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 186
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->k()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 187
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->m()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 188
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->n()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 189
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->o()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 190
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->s()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v2, v1, [Landroidx/room/migration/Migration;

    .line 191
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->t()Landroidx/room/migration/Migration;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    new-array v1, v1, [Landroidx/room/migration/Migration;

    .line 192
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->p()Landroidx/room/migration/Migration;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    invoke-static {p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->d(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)V

    .line 195
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 197
    :cond_1
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase;->h()Lcom/netflix/mediaclient/storage/db/OfflineDatabase;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    return-object p1
.end method

.method public final e(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "db_exception_count"

    const/4 v1, 0x0

    .line 207
    invoke-static {p1, v0, v1}, Lo/aer;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 208
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "OfflineDb"

    const-string v6, "onAppStarted count=%d"

    invoke-static {v5, v6, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/16 v4, 0xa

    if-lt v2, v4, :cond_0

    .line 210
    invoke-static {p1, v0, v1}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 211
    invoke-virtual {p1, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 212
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "onAppStarted deleteDone=%b"

    invoke-static {v5, p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 214
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/storage/db/OfflineDatabase$Activity;->d(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
