.class Lo/Am$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Am$Application$TaskDescription;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/Am$Application$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Am$Application;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lo/Am$3;)V
    .locals 0

    .line 2234
    invoke-direct {p0}, Lo/Am$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lo/zU;)I
    .locals 1

    monitor-enter p0

    .line 2241
    :try_start_0
    new-instance v0, Lo/Am$Application$TaskDescription;

    invoke-direct {v0, p1}, Lo/Am$Application$TaskDescription;-><init>(Lo/zU;)V

    .line 2242
    iget-object p1, p0, Lo/Am$Application;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2243
    invoke-virtual {v0}, Lo/Am$Application$TaskDescription;->e()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(I)Lo/zU;
    .locals 3

    monitor-enter p0

    .line 2250
    :try_start_0
    iget-object v0, p0, Lo/Am$Application;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/Am$Application$TaskDescription;

    .line 2251
    invoke-virtual {v1}, Lo/Am$Application$TaskDescription;->e()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2252
    iget-object p1, p0, Lo/Am$Application;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2253
    invoke-virtual {v1}, Lo/Am$Application$TaskDescription;->d()Lo/zU;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 2256
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    .line 2260
    :try_start_0
    iget-object v0, p0, Lo/Am$Application;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2261
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
