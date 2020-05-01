.class final Lo/Mn$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Mn;->c(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)Lo/PendingIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic e:Lo/Mh;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lo/Mh;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lo/Mn$4;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 309
    iget-object p1, p0, Lo/Mn$4;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->l()Lo/zN;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 312
    iget-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->y()Lo/Mq;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, ""

    if-eqz p2, :cond_0

    iget-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->y()Lo/Mq;

    move-result-object p2

    invoke-virtual {p2}, Lo/Mq;->l()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 313
    iget-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->y()Lo/Mq;

    move-result-object p2

    invoke-virtual {p2, v0}, Lo/Mq;->a(Z)V

    .line 314
    invoke-interface {p1, v1, v0}, Lo/zN;->e(Ljava/lang/String;I)V

    .line 315
    iget-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->B()V

    goto :goto_0

    .line 316
    :cond_0
    iget-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->y()Lo/Mq;

    move-result-object p2

    if-nez p2, :cond_1

    .line 318
    iget-object p2, p0, Lo/Mn$4;->e:Lo/Mh;

    invoke-interface {p2}, Lo/Mh;->d()V

    .line 319
    invoke-interface {p1, v1, v0}, Lo/zN;->e(Ljava/lang/String;I)V

    .line 322
    :cond_1
    :goto_0
    invoke-interface {p1, v1}, Lo/zN;->b(Ljava/lang/String;)V

    .line 323
    check-cast p1, Lo/kR;

    invoke-interface {p1}, Lo/kR;->z()V

    .line 326
    iget-object p1, p0, Lo/Mn$4;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1}, Lo/IllegalMonitorStateException;->b(Landroid/content/Context;)Lo/IllegalMonitorStateException;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lo/IllegalMonitorStateException;->a(Landroid/content/Intent;)Z

    .line 327
    iget-object p1, p0, Lo/Mn$4;->c:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->mdxTargetListChanged()V

    :cond_2
    return-void
.end method
