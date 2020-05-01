.class Lo/rb$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/rb;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/rb;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lo/rb;Z)V
    .locals 0

    .line 601
    iput-object p1, p0, Lo/rb$6;->d:Lo/rb;

    iput-boolean p2, p0, Lo/rb$6;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 604
    iget-object v0, p0, Lo/rb$6;->d:Lo/rb;

    iget-object v0, v0, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 605
    iget-object v0, p0, Lo/rb$6;->d:Lo/rb;

    iget-object v0, v0, Lo/rb;->o:Ljava/util/Map;

    monitor-enter v0

    .line 606
    :try_start_0
    iget-object v1, p0, Lo/rb$6;->d:Lo/rb;

    iget-object v1, v1, Lo/rb;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 607
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 608
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 609
    iget-boolean v3, p0, Lo/rb$6;->e:Z

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/rp;

    invoke-interface {v3}, Lo/rp;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/rp;

    invoke-interface {v2}, Lo/rp;->b()V

    .line 613
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 615
    :cond_1
    iget-object v1, p0, Lo/rb$6;->d:Lo/rb;

    iget-object v1, v1, Lo/rb;->m:Lo/rp;

    if-eqz v1, :cond_2

    invoke-static {}, Lo/eR;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    iget-object v1, p0, Lo/rb$6;->d:Lo/rb;

    iget-object v1, v1, Lo/rb;->m:Lo/rp;

    invoke-interface {v1}, Lo/rp;->b()V

    .line 617
    iget-object v1, p0, Lo/rb$6;->d:Lo/rb;

    const/4 v2, 0x0

    iput-object v2, v1, Lo/rb;->m:Lo/rp;

    .line 619
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 621
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/rb$6;->d:Lo/rb;

    invoke-static {v0}, Lo/rb;->b(Lo/rb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
