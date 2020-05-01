.class public Lo/Pc;
.super Lo/OW;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/OW;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lo/OnGenericMotionListener$Activity;Lo/OnGenericMotionListener$TaskDescription;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public b(Lo/Ot;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V
    .locals 6

    .line 26
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->header()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p1}, Lo/Ot;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    invoke-virtual {p1}, Lo/Ot;->i()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->header()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :cond_0
    invoke-virtual {p1}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1}, Lo/Ot;->a()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 37
    :cond_1
    invoke-virtual {p1}, Lo/Ot;->l()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x4

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p1}, Lo/Ot;->l()Landroid/view/View;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    :cond_3
    invoke-virtual {p1}, Lo/Ot;->c()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/BaseAdapter;->setVisibility(I)V

    .line 43
    invoke-virtual {p1}, Lo/Ot;->b()Lo/MenuInflater;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/MenuInflater;->setVisibility(I)V

    .line 44
    invoke-virtual {p1}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lo/BaseAdapter;->setVisibility(I)V

    .line 45
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageUrl()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 49
    invoke-virtual {p1}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lo/BaseAdapter;->b(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageAltText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lo/BaseAdapter;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p1}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 55
    invoke-virtual {p1}, Lo/Ot;->j()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :cond_4
    invoke-virtual {p1}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->showTimestamp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 60
    invoke-virtual {p1}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-virtual {p1}, Lo/Ot;->f()Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->timestamp()J

    move-result-wide v4

    invoke-static {p3, v4, v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_5
    invoke-virtual {p1}, Lo/Ot;->k()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 66
    invoke-virtual {p1}, Lo/Ot;->k()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_6
    invoke-virtual {p1}, Lo/Ot;->g()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 69
    invoke-virtual {p1}, Lo/Ot;->g()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_7
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->body()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 74
    invoke-virtual {p1}, Lo/Ot;->h()Landroid/widget/TextView;

    move-result-object p3

    const v0, 0x800003

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    invoke-virtual {p1}, Lo/Ot;->h()Landroid/widget/TextView;

    move-result-object p3

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->body()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_8
    invoke-virtual {p1}, Lo/Ot;->n()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 80
    invoke-virtual {p1}, Lo/Ot;->n()Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    :cond_9
    invoke-virtual {p1}, Lo/Ot;->o()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 83
    invoke-virtual {p1}, Lo/Ot;->o()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_a
    return-void

    .line 47
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "image url is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lo/Ot;)Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object p1

    return-object p1
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
