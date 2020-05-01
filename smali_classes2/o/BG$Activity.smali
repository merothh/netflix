.class public final Lo/BG$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lo/BG$Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BG;
    .locals 5

    const-string v0, "database"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    move-object v0, p0

    check-cast v0, Lo/BG$Activity;

    invoke-virtual {v0}, Lo/BG$Activity;->e()Lo/BG;

    move-result-object v1

    if-nez v1, :cond_1

    .line 73
    const-class v1, Lo/BG;

    monitor-enter v1

    .line 74
    :try_start_0
    sget-object v2, Lo/BG;->c:Lo/BG$Activity;

    invoke-virtual {v2}, Lo/BG$Activity;->e()Lo/BG;

    move-result-object v2

    if-nez v2, :cond_0

    .line 75
    sget-object v2, Lo/BG;->c:Lo/BG$Activity;

    new-instance v3, Lo/BG;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lo/BG;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/amc;)V

    invoke-virtual {v2, v3}, Lo/BG$Activity;->a(Lo/BG;)V

    .line 77
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/BG$Activity;->e()Lo/BG;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    return-object p1
.end method

.method public final a(Lo/BG;)V
    .locals 0

    .line 69
    invoke-static {p1}, Lo/BG;->b(Lo/BG;)V

    return-void
.end method

.method public final e()Lo/BG;
    .locals 1

    .line 69
    invoke-static {}, Lo/BG;->d()Lo/BG;

    move-result-object v0

    return-object v0
.end method
