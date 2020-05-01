.class Lo/Os$Application;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic a:Lo/Os;


# direct methods
.method private constructor <init>(Lo/Os;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/Os;Lo/Os$3;)V
    .locals 0

    .line 436
    invoke-direct {p0, p1}, Lo/Os$Application;-><init>(Lo/Os;)V

    return-void
.end method

.method private d(Lo/OW;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lo/Ot;Landroid/view/View;I)V
    .locals 2

    .line 531
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    if-nez v0, :cond_0

    const-string p1, "NotificationsFrag"

    const-string p2, "Got null notifications list data"

    .line 532
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 535
    :cond_0
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {v0}, Lo/Os;->h()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    .line 538
    invoke-virtual {p1, p3}, Lo/OW;->e(Lo/Ot;)Landroid/view/View;

    move-result-object p1

    .line 539
    iget-object v1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {v1}, Lo/Os;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 542
    iget-object v1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {v1, p2, p5}, Lo/Os;->b(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    :cond_1
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->landingPage()Lcom/netflix/model/leafs/social/multititle/NotificationLandingPage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 550
    iget-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {p1, p2, v0}, Lo/Os;->e(Lo/Os;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;

    move-result-object p1

    goto :goto_0

    .line 551
    :cond_2
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 552
    iget-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->urlTarget()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2, p5, v0}, Lo/Os;->e(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;ILcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View$OnClickListener;

    move-result-object p1

    goto :goto_0

    .line 554
    :cond_3
    iget-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->imageTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2, p5}, Lo/Os;->a(Lo/Os;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;I)Landroid/view/View$OnClickListener;

    move-result-object p1

    .line 558
    :goto_0
    invoke-virtual {p3}, Lo/Ot;->e()Lo/BaseAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/BaseAdapter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    invoke-virtual {p4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public d(I)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 1

    .line 470
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {v0}, Lo/Os;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->j:Lcom/netflix/model/leafs/social/NotificationsListSummary;

    .line 471
    invoke-interface {v0}, Lcom/netflix/model/leafs/social/NotificationsListSummary;->notifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->h:Lo/RadioGroup;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {p0}, Lo/Os$Application;->getCount()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lo/RadioGroup;->setLastNotifiedCount(ILjava/lang/String;)V

    .line 450
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 462
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {v0}, Lo/Os;->a(Lo/Os;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {v0}, Lo/Os;->b(Lo/Os;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {v0}, Lo/Os;->v()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 436
    invoke-virtual {p0, p1}, Lo/Os$Application;->d(I)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .line 481
    invoke-virtual {p0, p1}, Lo/Os$Application;->d(I)Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 482
    :cond_0
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->getNotificationType()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;

    move-result-object v1

    .line 483
    :goto_0
    invoke-static {v1}, Lo/Ov;->a(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;)Lo/OX;

    move-result-object v2

    check-cast v2, Lo/OW;

    const/4 v7, 0x0

    if-nez p2, :cond_1

    .line 486
    iget-object p2, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {p2}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object p2

    invoke-virtual {p2}, Lo/Serializable;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {v3}, Lo/Os;->H()I

    move-result v3

    invoke-virtual {p2, v3, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 487
    invoke-static {p2, v1}, Lo/OW;->b(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationTypes;)Lo/Ot;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 490
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lo/Ot;

    .line 492
    iget-object p3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {p3}, Lo/Os;->e(Lo/Os;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {p3}, Lo/Os;->B()Z

    move-result p3

    if-nez p3, :cond_2

    .line 493
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->dn:I

    invoke-static {v3, p1}, Lo/OW;->b(Lo/Ot;I)V

    .line 494
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    .line 499
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->lU:I

    invoke-static {v3, p1}, Lo/OW;->b(Lo/Ot;I)V

    .line 500
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 501
    :cond_3
    iget-object p3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {p3}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object p3

    if-eqz p3, :cond_5

    iget-object p3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {p3}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object p3

    invoke-static {p3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 503
    iget-object p3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-virtual {p3}, Lo/Os;->getActivity()Lo/Serializable;

    move-result-object p3

    invoke-virtual {v2, v3, v6, p3}, Lo/OW;->b(Lo/Ot;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, v2

    move-object v2, v6

    move-object v4, p2

    move v5, p1

    .line 505
    invoke-direct/range {v0 .. v5}, Lo/Os$Application;->d(Lo/OW;Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lo/Ot;Landroid/view/View;I)V

    .line 507
    invoke-interface {v6}, Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;->read()Z

    move-result p3

    if-nez p3, :cond_4

    .line 508
    iget-object p3, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {p3}, Lo/Os;->d(Lo/Os;)Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez p1, :cond_5

    .line 511
    iget-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {p1}, Lo/Os;->c(Lo/Os;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 512
    iget-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {p1, v7}, Lo/Os;->b(Lo/Os;Z)V

    .line 513
    iget-object p1, p0, Lo/Os$Application;->a:Lo/Os;

    invoke-static {p1, v7}, Lo/Os;->d(Lo/Os;Z)Z

    :cond_5
    :goto_1
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    const-string v0, "notifyDataSetChanged"

    .line 455
    invoke-virtual {p0, v0}, Lo/Os$Application;->d(Ljava/lang/String;)V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 3

    .line 440
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->h:Lo/RadioGroup;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lo/Os$Application;->a:Lo/Os;

    iget-object v0, v0, Lo/Os;->h:Lo/RadioGroup;

    invoke-virtual {p0}, Lo/Os$Application;->getCount()I

    move-result v1

    const-string v2, "notifyDataSetInvalidated"

    invoke-virtual {v0, v1, v2}, Lo/RadioGroup;->setLastNotifiedCount(ILjava/lang/String;)V

    .line 443
    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
