.class public Lo/PermissionChecker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PermissionChecker$TaskDescription;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/PermissionChecker$TaskDescription<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/PermissionChecker;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized c(Ljava/lang/Class;)Lo/RestoreDescription;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lo/RestoreDescription<",
            "TZ;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 32
    :try_start_0
    iget-object v1, p0, Lo/PermissionChecker;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 33
    iget-object v2, p0, Lo/PermissionChecker;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/PermissionChecker$TaskDescription;

    .line 34
    invoke-virtual {v2, p1}, Lo/PermissionChecker$TaskDescription;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    iget-object p1, v2, Lo/PermissionChecker$TaskDescription;->c:Lo/RestoreDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 39
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Ljava/lang/Class;Lo/RestoreDescription;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lo/RestoreDescription<",
            "TZ;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lo/PermissionChecker;->a:Ljava/util/List;

    new-instance v1, Lo/PermissionChecker$TaskDescription;

    invoke-direct {v1, p1, p2}, Lo/PermissionChecker$TaskDescription;-><init>(Ljava/lang/Class;Lo/RestoreDescription;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
