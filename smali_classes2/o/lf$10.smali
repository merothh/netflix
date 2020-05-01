.class Lo/lf$10;
.super Lo/aiR$Application;
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
.field final synthetic c:Lo/lf;


# direct methods
.method constructor <init>(Lo/lf;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lo/lf$10;->c:Lo/lf;

    invoke-direct {p0}, Lo/aiR$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 900
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MdxStackDial"

    const-string v4, "Removed MDX Device: %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 902
    iget-object v1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v1, v1, Lo/lf;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 903
    :try_start_0
    iget-object v2, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v2, v2, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/mo;

    .line 904
    invoke-virtual {v4}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 907
    instance-of p1, v4, Lo/mm;

    const/4 v2, 0x2

    if-eqz p1, :cond_3

    const-string p1, "MdxStackDial"

    const-string v5, "Existing DIAL device found that matches removed MDX device: %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v3

    .line 908
    invoke-static {p1, v5, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 910
    move-object p1, v4

    check-cast p1, Lo/mm;

    .line 911
    invoke-virtual {p1}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 914
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v6

    .line 916
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string p1, "MdxStackDial"

    const-string v4, "handleDeviceLost, ignore MDX device lost %s %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 919
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 918
    invoke-static {p1, v4, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 923
    :cond_0
    invoke-virtual {p1}, Lo/mm;->i()V

    move v3, v6

    .line 926
    :cond_1
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    invoke-virtual {p1}, Lo/lf;->k()Lo/mo;

    move-result-object p1

    invoke-virtual {v4, p1}, Lo/mo;->d(Lo/mo;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez v3, :cond_7

    .line 927
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    if-eqz v5, :cond_2

    .line 928
    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lo/mo;->h()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    .line 929
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v2

    invoke-virtual {v4}, Lo/mo;->f()Ljava/lang/String;

    move-result-object v3

    .line 927
    invoke-interface {p1, v0, v2, v3}, Lo/kH;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 933
    :cond_3
    instance-of p1, v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    if-eqz p1, :cond_7

    const-string p1, "MdxStackDial"

    const-string v5, "Existing MDX-only device found that matches removed MDX device: %s"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v4, v6, v3

    .line 934
    invoke-static {p1, v5, v6}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 936
    check-cast v4, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 937
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->v()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "MdxStackDial"

    const-string v5, "handleDeviceLost, ignore MDX device lost %s %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 940
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 939
    invoke-static {p1, v5, v2}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2

    .line 944
    :cond_4
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    .line 945
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->t()V

    if-eqz p1, :cond_5

    .line 948
    monitor-exit v1

    return-void

    .line 951
    :cond_5
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object p1, p1, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 953
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    invoke-virtual {p1}, Lo/lf;->k()Lo/mo;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->d(Lo/mo;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 954
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->j:Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/MdxErrorSubCode;->a()I

    move-result v2

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lo/kH;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v5, "MdxStackDial"

    .line 961
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target does not match lost device - location: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 964
    :cond_7
    :goto_2
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object p1, p1, Lo/lf;->a:Lo/kH;

    invoke-interface {p1}, Lo/kH;->e()V

    .line 965
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/netflix/ssdp/SsdpDevice;Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 970
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2}, Lcom/netflix/ssdp/SsdpDevice;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "MdxStackDial"

    const-string p2, "Updated MDX Device - Old: %s, New: %s"

    invoke-static {p1, p2, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public e(Lcom/netflix/ssdp/SsdpDevice;)V
    .locals 14

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 792
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "MdxStackDial"

    const-string v4, "Found MDX Device: %s"

    invoke-static {v2, v4, v1}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 794
    iget-object v1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v1, v1, Lo/lf;->g:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    .line 797
    :try_start_0
    iget-object v4, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v4, v4, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/mo;

    .line 799
    instance-of v7, v5, Lo/mm;

    if-nez v7, :cond_1

    goto :goto_0

    .line 803
    :cond_1
    check-cast v5, Lo/mm;

    const-string v7, "MdxStackDial"

    const-string v8, "Checking if DIAL target matches - target: %s"

    new-array v9, v0, [Ljava/lang/Object;

    .line 804
    invoke-virtual {v5}, Lo/mm;->n()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v8, v9}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 806
    invoke-virtual {v5}, Lo/mm;->n()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 807
    invoke-virtual {v5}, Lo/mm;->d()Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "MdxStackDial"

    const-string v4, "Found matching DIAL target for MDX device.  Creating SessionMdxTarget"

    .line 810
    invoke-static {v2, v4}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v2, p0, Lo/lf$10;->c:Lo/lf;

    invoke-static {v2, v5, p1}, Lo/lf;->d(Lo/lf;Lo/mm;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v2

    .line 812
    invoke-virtual {v5, v2}, Lo/mm;->e(Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;)V

    :cond_2
    const-string p1, "MdxStackDial"

    const-string v4, "Checking if this is the current target.  Current: %s, MDX: %s"

    new-array v6, v6, [Ljava/lang/Object;

    .line 815
    iget-object v7, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v7, v7, Lo/lf;->c:Lo/kI;

    .line 816
    invoke-virtual {v7}, Lo/kI;->u()Lo/kF;

    move-result-object v7

    invoke-virtual {v7}, Lo/kF;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5}, Lo/mm;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 815
    invoke-static {p1, v4, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 819
    iget-object p1, p0, Lo/lf$10;->c:Lo/lf;

    iget-object p1, p1, Lo/lf;->c:Lo/kI;

    invoke-virtual {p1}, Lo/kI;->u()Lo/kF;

    move-result-object p1

    invoke-virtual {p1, v5}, Lo/kF;->a(Lo/mo;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 820
    invoke-virtual {v5}, Lo/mm;->b()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 824
    invoke-static {}, Lo/dQ;->i()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result p1

    if-nez p1, :cond_5

    .line 825
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    goto :goto_2

    :cond_5
    const-string p1, "MdxStackDial"

    const-string v0, "Device is current target, so reconnecting to it"

    .line 828
    invoke-static {p1, v0}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    .line 833
    :cond_6
    :goto_2
    monitor-exit v1

    return-void

    .line 838
    :cond_7
    invoke-static {}, Lo/gA;->c()[Ljava/lang/String;

    move-result-object v4

    .line 839
    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->e()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0xf

    .line 840
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "MdxStackDial"

    const-string v9, "Checking if device ESN matches MDX only device list - ESN: %s, MDX Only ESN Prefixes: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 843
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v0

    .line 842
    invoke-static {v8, v9, v6}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 845
    array-length v5, v4

    move-object v6, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v5, :cond_f

    aget-object v8, v4, v2

    if-eqz v6, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v9, "MdxStackDial"

    .line 850
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking against MDX only prefix: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 852
    iget-object v8, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v8, v8, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/mo;

    .line 854
    instance-of v10, v9, Lo/mm;

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_a
    const-string v10, "MdxStackDial"

    const-string v11, "Checking if MDX target matches - target: %s"

    new-array v12, v0, [Ljava/lang/Object;

    .line 858
    invoke-virtual {v9}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    invoke-static {v10, v11, v12}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 860
    invoke-virtual {v9}, Lo/mo;->n()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/netflix/ssdp/SsdpDevice;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 861
    check-cast v9, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    .line 863
    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v6, "MdxStackDial"

    const-string v8, "Remote login is now completed: %s"

    new-array v10, v0, [Ljava/lang/Object;

    .line 864
    invoke-virtual {v9}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static {v6, v8, v10}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v6, v9

    :cond_b
    if-nez v6, :cond_c

    const-string v6, "MdxStackDial"

    const-string v8, "Device is MDX only, so creating target for it"

    .line 873
    invoke-static {v6, v8}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v6, p0, Lo/lf$10;->c:Lo/lf;

    invoke-static {v6, p1}, Lo/lf;->a(Lo/lf;Lcom/netflix/ssdp/SsdpDevice;)Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;

    move-result-object v6

    .line 875
    iget-object v8, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v8, v8, Lo/lf;->g:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    iget-object v8, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v8, v8, Lo/lf;->a:Lo/kH;

    invoke-interface {v8}, Lo/kH;->e()V

    .line 879
    :cond_c
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->f()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lo/afF;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v8, p0, Lo/lf$10;->c:Lo/lf;

    iget-object v8, v8, Lo/lf;->c:Lo/kI;

    invoke-virtual {v8}, Lo/kI;->u()Lo/kF;

    move-result-object v8

    invoke-virtual {v8, v6}, Lo/kF;->a(Lo/mo;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 885
    invoke-static {}, Lo/dQ;->i()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->u()Z

    move-result v8

    if-nez v8, :cond_d

    .line 886
    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->q()Z

    move-result v8

    invoke-virtual {v6, v8}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    goto :goto_5

    :cond_d
    const-string v8, "MdxStackDial"

    const-string v9, "Device is current target, so reconnecting to it"

    .line 889
    invoke-static {v8, v9}, Lo/ChooserTargetService;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {v6, v3}, Lcom/netflix/mediaclient/service/mdx/protocol/target/SessionMdxTarget;->b(Z)V

    :cond_e
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 895
    :cond_f
    :goto_6
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MdxStackDial"

    const-string v1, "MDX Discovery Failed"

    .line 976
    invoke-static {v0, v1, p1}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
