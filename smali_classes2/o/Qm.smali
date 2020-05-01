.class Lo/Qm;
.super Lo/Qn;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p5}, Lo/Qn;-><init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lo/Qm;->e(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lo/Qm;->e(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/app/Notification$Builder;Lo/Bi;)V
    .locals 3

    .line 62
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lo/Qm;->d:Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->aP:I

    .line 63
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ie:I

    .line 64
    invoke-static {v2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Qm;->c(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected d()I
    .locals 1

    .line 95
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bh:I

    return v0
.end method

.method protected d(Landroid/app/Notification$Builder;)V
    .locals 1

    const v0, 0x1080081

    .line 90
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected d(Landroid/app/Notification$Builder;Lo/Bi;)V
    .locals 3

    .line 53
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lo/Qm;->d:Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->Y:I

    .line 54
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->hS:I

    .line 55
    invoke-static {v2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Qm;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 58
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected d(Landroid/app/Notification$Builder;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 3

    .line 41
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lo/Qm;->d:Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->cn:I

    .line 42
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->ik:I

    .line 43
    invoke-static {v2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lo/Qm;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 46
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected e()I
    .locals 1

    .line 100
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bj:I

    return v0
.end method

.method protected e(Landroid/app/Notification$Builder;)V
    .locals 1

    const v0, 0x1080082

    .line 83
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected e(Landroid/app/Notification$Builder;Lo/Bi;)V
    .locals 3

    .line 32
    new-instance v0, Landroid/app/Notification$Action$Builder;

    iget-object v1, p0, Lo/Qm;->d:Landroid/content/Context;

    sget v2, Lcom/netflix/mediaclient/ui/R$Activity;->bn:I

    .line 33
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->il:I

    .line 34
    invoke-static {v2}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Qm;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-direct {v0, v1, v2, p2}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 37
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method
