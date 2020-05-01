.class Lo/LP$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CT$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/LP;


# direct methods
.method constructor <init>(Lo/LP;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lo/LP$3;->c:Lo/LP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 754
    iget-object v0, p0, Lo/LP$3;->c:Lo/LP;

    const-string v1, "User canceled selection"

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Dialog;)V
    .locals 2

    .line 748
    iget-object v0, p0, Lo/LP$3;->c:Lo/LP;

    const-string v1, "Updating dialog"

    invoke-static {v0, v1}, Lo/LP;->a(Lo/LP;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lo/LP$3;->c:Lo/LP;

    invoke-static {v0}, Lo/LP;->d(Lo/LP;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->updateVisibleDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/media/Language;Z)V
    .locals 0

    .line 738
    iget-object p2, p0, Lo/LP$3;->c:Lo/LP;

    invoke-static {p2}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 739
    iget-object p2, p0, Lo/LP$3;->c:Lo/LP;

    invoke-virtual {p2}, Lo/LP;->getActivity()Lo/Serializable;

    move-result-object p2

    invoke-static {p2, p1}, Lo/afA;->e(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    .line 740
    iget-object p2, p0, Lo/LP$3;->c:Lo/LP;

    invoke-static {p2}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/Mq;->c(Lcom/netflix/mediaclient/media/Language;)V

    .line 741
    iget-object p1, p0, Lo/LP$3;->c:Lo/LP;

    invoke-static {p1}, Lo/LP;->h(Lo/LP;)Lo/Mq;

    move-result-object p1

    invoke-virtual {p1}, Lo/Mq;->p()V

    .line 743
    :cond_0
    iget-object p1, p0, Lo/LP$3;->c:Lo/LP;

    invoke-static {p1}, Lo/LP;->i(Lo/LP;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
