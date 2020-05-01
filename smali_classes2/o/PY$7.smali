.class final Lo/PY$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PY;->c(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Landroid/content/Context;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lo/PY$7;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/PY$7;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->fh:I

    if-ne v0, v1, :cond_0

    .line 488
    iget-object p1, p0, Lo/PY$7;->c:Landroid/content/Context;

    invoke-static {p1}, Lo/PY;->c(Landroid/content/Context;)Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 490
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 491
    iget-object v0, p0, Lo/PY$7;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/nS;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->bh:I

    if-ne v0, v1, :cond_2

    .line 494
    iget-object p1, p0, Lo/PY$7;->c:Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_1

    .line 496
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 498
    new-instance v0, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 499
    iget-object v0, p0, Lo/PY$7;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 502
    :cond_1
    iget-object p1, p0, Lo/PY$7;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    if-ne p1, v0, :cond_3

    .line 504
    iget-object p1, p0, Lo/PY$7;->c:Landroid/content/Context;

    const-class v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 506
    new-instance v0, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;

    invoke-direct {v0}, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;-><init>()V

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 507
    iget-object v0, p0, Lo/PY$7;->c:Landroid/content/Context;

    invoke-static {p1}, Lo/QU;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
