.class Lo/LP$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LW;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/LP;

.field private e:J


# direct methods
.method constructor <init>(Lo/LP;)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lo/LP$1;->a:Lo/LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/SeekBar;Z)V
    .locals 4

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch, pos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CastPlayerHelper"

    invoke-static {v1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lo/LP;->b(Lo/LP;Z)Z

    if-eqz p2, :cond_0

    .line 1051
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lo/LP$1;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int p2, v0

    .line 1052
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    .line 1056
    iget-object p2, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {p2}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/LV;->b(I)V

    .line 1057
    iget-object p2, p0, Lo/LP$1;->a:Lo/LP;

    int-to-long v0, p1

    invoke-static {p2, v0, v1}, Lo/LP;->d(Lo/LP;J)V

    goto :goto_0

    :cond_0
    const-string p2, "Seeking..."

    .line 1060
    invoke-static {v1, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object p2, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {p2}, Lo/LP;->f(Lo/LP;)Lo/LV;

    move-result-object p2

    invoke-virtual {p2, v2}, Lo/LV;->d(Z)V

    .line 1062
    iget-object p2, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {p2}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object p2

    invoke-static {p1}, Lo/adV;->b(Landroid/widget/SeekBar;)I

    move-result p1

    invoke-virtual {p2, p1}, Lo/Mq;->e(I)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1022
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object v0

    iget-boolean v0, v0, Lo/LP$StateListAnimator;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1028
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mq;->q()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 1029
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->isLanguageSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public c()Lo/Am;
    .locals 1

    .line 1012
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->U_()Lo/Am;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/widget/SeekBar;)V
    .locals 2

    const-string p1, "CastPlayerHelper"

    const-string v0, "onStartTrackingTouch"

    .line 1039
    invoke-static {p1, v0}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object p1, p0, Lo/LP$1;->a:Lo/LP;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/LP;->b(Lo/LP;Z)Z

    .line 1041
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/LP$1;->e:J

    .line 1042
    iget-object p1, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {p1}, Lo/LP;->k(Lo/LP;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1073
    invoke-static {}, Lo/LP;->J()Lo/LP$StateListAnimator;

    move-result-object v0

    iput-boolean p1, v0, Lo/LP$StateListAnimator;->d:Z

    return-void
.end method

.method public d()Lo/zN;
    .locals 1

    .line 1017
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->U_()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->l()Lo/zN;

    move-result-object v0

    return-object v0
.end method

.method public e()Lo/Bc;
    .locals 1

    .line 1007
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->l(Lo/LP;)Lo/Bc;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    .line 1092
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mq;->g()V

    .line 1094
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->k(Lo/LP;)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1100
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->r(Lo/LP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;->e(Ljava/lang/String;)Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;

    move-result-object v0

    .line 1102
    iget-object v1, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v1}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v1

    invoke-virtual {p0}, Lo/LP$1;->n()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->b:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;->c:Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;

    :goto_0
    invoke-virtual {v1, v0, v2}, Lo/Mq;->b(Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$SegmentType;Lcom/netflix/mediaclient/api/mdx/MdxNotificationIntentRetriever$InvocSource;)V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 1

    .line 1085
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1086
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mq;->i()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 1078
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mq;->f()V

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1034
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 4

    .line 1116
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    invoke-virtual {v0}, Lo/Mq;->q()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 1118
    iget-object v1, p0, Lo/LP$1;->a:Lo/LP;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Displaying language dialog, language: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 1119
    iget-object v1, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v1}, Lo/LP;->p(Lo/LP;)Lo/CT;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/CT;->b(Lcom/netflix/mediaclient/media/Language;)V

    :cond_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1125
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-virtual {v0}, Lo/LP;->C()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isPanelExpanded()Z

    move-result v0

    return v0
.end method

.method public o()V
    .locals 2

    .line 1108
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lo/LP$1;->a:Lo/LP;

    invoke-static {v0}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/Mq;->a(Z)V

    :cond_0
    return-void
.end method
