.class Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Landroid/content/Context;Lo/Am;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Am;

.field final synthetic b:Landroid/content/Context;

.field final synthetic d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Ljava/lang/String;Landroid/content/Context;Lo/Am;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->a:Lo/Am;

    invoke-direct {p0, p2}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .line 558
    invoke-super {p0, p1, p2}, Lo/zP;->h(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 559
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    .line 560
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    .line 562
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iget-object v2, v1, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v2, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->d(Lo/Bv;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v2

    iput-object v2, v1, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    .line 565
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lo/Ky;

    move-result-object v1

    invoke-virtual {v1}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListContext()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getListContext()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lo/Ky;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/Ky;->d(Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;)Lo/Ky;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Lo/Ky;)V

    .line 568
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 570
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->b:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->a(Landroid/content/Context;I)I

    move-result p1

    .line 571
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->b:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move v7, p1

    invoke-static/range {v1 .. v8}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;JLandroid/content/Context;ZIIZ)Lo/zU;

    move-result-object v9

    .line 572
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->b:Landroid/content/Context;

    iget-object v6, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->a:Lo/Am;

    const/4 v7, 0x0

    move v8, p1

    invoke-static/range {v4 .. v9}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->b(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;Landroid/content/Context;Lo/Am;IILo/zU;)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Z)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 575
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    .line 576
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->d(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    iget-object p2, p0, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter$4;->d:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-static {p2}, Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;->e(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lo/Ky;

    move-result-object p2

    invoke-virtual {p2}, Lo/Ky;->d()Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;

    move-result-object p2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object p2

    aput-object p2, v1, v0

    const/4 p2, 0x2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "BaseListAdapter"

    const-string p2, "Ignoring list retrieved at index %s, was expecting %s but got %s"

    .line 575
    invoke-static {p1, p2, v1}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method
