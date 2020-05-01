.class public final Lo/BJ$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/BJ$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lo/BJ;)V
    .locals 0

    .line 16
    invoke-static {p1}, Lo/BJ;->d(Lo/BJ;)V

    return-void
.end method

.method public final b(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BJ;
    .locals 5

    const-string v0, "database"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p0

    check-cast v0, Lo/BJ$TaskDescription;

    invoke-virtual {v0}, Lo/BJ$TaskDescription;->e()Lo/BJ;

    move-result-object v1

    if-nez v1, :cond_1

    .line 20
    const-class v1, Lo/BJ;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v2, Lo/BJ;->c:Lo/BJ$TaskDescription;

    invoke-virtual {v2}, Lo/BJ$TaskDescription;->e()Lo/BJ;

    move-result-object v2

    if-nez v2, :cond_0

    .line 22
    sget-object v2, Lo/BJ;->c:Lo/BJ$TaskDescription;

    new-instance v3, Lo/BJ;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lo/BJ;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/amc;)V

    invoke-virtual {v2, v3}, Lo/BJ$TaskDescription;->a(Lo/BJ;)V

    .line 24
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/BJ$TaskDescription;->e()Lo/BJ;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    return-object p1
.end method

.method public final e()Lo/BJ;
    .locals 1

    .line 16
    invoke-static {}, Lo/BJ;->b()Lo/BJ;

    move-result-object v0

    return-object v0
.end method
