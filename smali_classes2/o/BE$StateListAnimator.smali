.class public final Lo/BE$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/BE$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;)Lo/BE;
    .locals 5

    const-string v0, "database"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    move-object v0, p0

    check-cast v0, Lo/BE$StateListAnimator;

    invoke-virtual {v0}, Lo/BE$StateListAnimator;->e()Lo/BE;

    move-result-object v1

    if-nez v1, :cond_1

    .line 21
    const-class v1, Lo/BE;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v2, Lo/BE;->b:Lo/BE$StateListAnimator;

    invoke-virtual {v2}, Lo/BE$StateListAnimator;->e()Lo/BE;

    move-result-object v2

    if-nez v2, :cond_0

    .line 23
    sget-object v2, Lo/BE;->b:Lo/BE$StateListAnimator;

    new-instance v3, Lo/BE;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lo/BE;-><init>(Lcom/netflix/mediaclient/storage/db/OfflineDatabase;Lo/amc;)V

    invoke-virtual {v2, v3}, Lo/BE$StateListAnimator;->d(Lo/BE;)V

    .line 25
    :cond_0
    sget-object p1, Lo/akj;->a:Lo/akj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1

    throw p1

    .line 27
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lo/BE$StateListAnimator;->e()Lo/BE;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lo/amh;->c()V

    :cond_2
    return-object p1
.end method

.method public final d(Lo/BE;)V
    .locals 0

    .line 17
    invoke-static {p1}, Lo/BE;->e(Lo/BE;)V

    return-void
.end method

.method public final e()Lo/BE;
    .locals 1

    .line 17
    invoke-static {}, Lo/BE;->d()Lo/BE;

    move-result-object v0

    return-object v0
.end method
