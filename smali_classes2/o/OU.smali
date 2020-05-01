.class public final Lo/OU;
.super Lo/Pc;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/Pc;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lo/Ot;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "summary"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-super {p0, p1, p2, p3}, Lo/Pc;->b(Lo/Ot;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V

    .line 13
    invoke-virtual {p1}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object p3

    const-string v0, "holder.nsaArtImage"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lo/BaseAdapter;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lo/Ot;->b()Lo/MenuInflater;

    move-result-object p3

    const-string v0, "holder.stackLayout"

    invoke-static {p3, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lo/MenuInflater;->setVisibility(I)V

    .line 15
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageUrl()Ljava/lang/String;

    move-result-object p3

    .line 16
    move-object v1, p3

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_2

    .line 19
    invoke-virtual {p1}, Lo/Ot;->d()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lo/Ot;->d()Lo/BaseAdapter;

    move-result-object p1

    const-string p3, "holder.stackLayoutImage"

    invoke-static {p1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageAltText()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "image url is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
