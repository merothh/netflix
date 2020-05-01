.class Lo/lf$1;
.super Lo/StorageEventListener$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/lf;


# direct methods
.method constructor <init>(Lo/lf;)V
    .locals 0

    .line 697
    iput-object p1, p0, Lo/lf$1;->e:Lo/lf;

    invoke-direct {p0}, Lo/StorageEventListener$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/netflix/dial/DialDevice;Lcom/netflix/dial/DialDevice;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 771
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/netflix/dial/DialDevice;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "MdxStackDial"

    const-string v2, "Device updated - old: %s, new: %s"

    invoke-static {v1, v2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 773
    iget-object v0, p0, Lo/lf$1;->e:Lo/lf;

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/lf;->c(Ljava/lang/String;)Lo/mo;

    move-result-object p1

    check-cast p1, Lo/mm;

    if-eqz p1, :cond_0

    .line 776
    invoke-virtual {p1, p2}, Lo/mm;->c(Lcom/netflix/dial/DialDevice;)V

    .line 779
    :cond_0
    iget-object p1, p0, Lo/lf$1;->e:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "DIAL Discovery failed"

    .line 784
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public d(Lcom/netflix/dial/DialDevice;)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 700
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MdxStackDial"

    const-string v4, "Device found: %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 701
    new-instance v1, Lo/mm;

    iget-object v2, p0, Lo/lf$1;->e:Lo/lf;

    invoke-direct {v1, p1, v2}, Lo/mm;-><init>(Lcom/netflix/dial/DialDevice;Lo/lf;)V

    .line 703
    iget-object v2, p0, Lo/lf$1;->e:Lo/lf;

    iget-object v2, v2, Lo/lf;->g:Ljava/util/ArrayList;

    monitor-enter v2

    .line 704
    :try_start_0
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    iget-object v4, p0, Lo/lf$1;->e:Lo/lf;

    invoke-static {v4, p1}, Lo/lf;->a(Lo/lf;Lcom/netflix/dial/DialDevice;)V

    .line 708
    :cond_0
    iget-object v4, p0, Lo/lf$1;->e:Lo/lf;

    invoke-virtual {v1}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lo/lf;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v4

    check-cast v4, Lo/mm;

    if-eqz v4, :cond_1

    .line 710
    invoke-virtual {v4, p1}, Lo/mm;->c(Lcom/netflix/dial/DialDevice;)V

    .line 711
    monitor-exit v2

    return-void

    .line 714
    :cond_1
    iget-object v4, p0, Lo/lf$1;->e:Lo/lf;

    iget-object v4, v4, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object p1

    .line 717
    invoke-virtual {v1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v4

    .line 718
    invoke-virtual {v1}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_6

    .line 722
    iget-object v5, p0, Lo/lf$1;->e:Lo/lf;

    iget-object v5, v5, Lo/lf;->c:Lo/kI;

    invoke-virtual {v5}, Lo/kI;->u()Lo/kF;

    move-result-object v5

    invoke-virtual {v5, v1}, Lo/kF;->a(Lo/mo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 723
    invoke-virtual {v1}, Lo/mm;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    .line 727
    invoke-static {}, Lo/dQ;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v0

    if-nez v0, :cond_4

    .line 728
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "MdxStackDial"

    const-string v1, "Device is current target, so reconnecting to it"

    .line 730
    invoke-static {v0, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v4, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    .line 735
    :cond_5
    :goto_1
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v5

    .line 738
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/upnp/UpnpDevice;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v0, v1, p1}, Lo/afF;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object p1, p0, Lo/lf$1;->e:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    .line 740
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/netflix/dial/DialDevice;)V
    .locals 6

    .line 745
    iget-object v0, p0, Lo/lf$1;->e:Lo/lf;

    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->b()Lcom/netflix/upnp/UpnpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/upnp/UpnpDevice;->c()Lcom/netflix/ssdp/SsdpDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/lf;->c(Ljava/lang/String;)Lo/mo;

    move-result-object v0

    check-cast v0, Lo/mm;

    if-eqz v0, :cond_2

    .line 748
    iget-object v1, p0, Lo/lf$1;->e:Lo/lf;

    iget-object v1, v1, Lo/lf;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 749
    :try_start_0
    invoke-virtual {v0}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    monitor-exit v1

    return-void

    :cond_0
    const-string v2, "MdxStackDial"

    const-string v3, "Device lost: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 755
    invoke-virtual {p1}, Lcom/netflix/dial/DialDevice;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    invoke-static {v2, v3, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 757
    invoke-virtual {v0}, Lo/mm;->i()V

    .line 758
    iget-object p1, p0, Lo/lf$1;->e:Lo/lf;

    iget-object p1, p1, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    iget-object p1, p0, Lo/lf$1;->e:Lo/lf;

    invoke-virtual {p1}, Lo/lf;->k()Lo/mo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/mm;->d(Lo/mo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 761
    iget-object p1, p0, Lo/lf$1;->e:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-virtual {v0}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v3

    invoke-virtual {v0}, Lo/mm;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v0}, Lo/kH;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    :cond_1
    iget-object p1, p0, Lo/lf$1;->e:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    .line 765
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
