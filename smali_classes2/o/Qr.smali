.class Lo/Qr;
.super Lo/Qn;
.source ""


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p5}, Lo/Qn;-><init>(Landroid/os/Handler;Landroid/content/Context;Lo/Ac;ZLo/nS;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lo/Qr;->e(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-virtual {p0, p1, p2}, Lo/Qr;->e(Lo/Bi;Lo/Qn$TaskDescription;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/app/Notification$Builder;Lo/Bi;)V
    .locals 2

    .line 54
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->aP:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ie:I

    .line 55
    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Qr;->c(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 54
    invoke-virtual {p1, v0, v1, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected d()I
    .locals 1

    .line 83
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    return v0
.end method

.method protected d(Landroid/app/Notification$Builder;)V
    .locals 1

    .line 78
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected d(Landroid/app/Notification$Builder;Lo/Bi;)V
    .locals 2

    .line 46
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->Y:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hS:I

    .line 47
    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Qr;->a(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 46
    invoke-virtual {p1, v0, v1, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected d(Landroid/app/Notification$Builder;Lo/Bi;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 2

    .line 36
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cn:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ik:I

    .line 37
    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lo/Qr;->e(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 36
    invoke-virtual {p1, v0, v1, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected e()I
    .locals 1

    .line 88
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    return v0
.end method

.method protected e(Landroid/app/Notification$Builder;)V
    .locals 1

    .line 72
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bq:I

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-void
.end method

.method protected e(Landroid/app/Notification$Builder;Lo/Bi;)V
    .locals 2

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->bn:I

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->il:I

    .line 31
    invoke-static {v1}, Lo/aev;->b(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-interface {p2}, Lo/Bi;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/Qr;->b(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 30
    invoke-virtual {p1, v0, v1, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    return-void
.end method
