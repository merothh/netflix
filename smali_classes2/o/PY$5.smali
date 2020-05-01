.class final Lo/PY$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PY;->b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;ZLcom/netflix/mediaclient/servicemgr/PlayContext;)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netflix/mediaclient/servicemgr/PlayContext;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lo/PY$5;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/PY$5;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/PY$5;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p4, p0, Lo/PY$5;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->mL:I

    if-ne v0, v1, :cond_1

    .line 77
    iget-object p1, p0, Lo/PY$5;->c:Landroid/content/Context;

    const-class v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 78
    const-class v0, Lo/q;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/q;

    invoke-interface {v0, p1}, Lo/q;->d(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 81
    :cond_0
    iget-object p1, p0, Lo/PY$5;->c:Landroid/content/Context;

    iget-object v0, p0, Lo/PY$5;->d:Ljava/lang/String;

    iget-object v1, p0, Lo/PY$5;->a:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lo/PY$5;->e:Lcom/netflix/mediaclient/servicemgr/PlayContext;

    invoke-static {p1, v0, v1, v2}, Lo/RL;->b(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Lcom/netflix/mediaclient/servicemgr/PlayContext;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->ec:I

    if-ne v0, v1, :cond_2

    .line 83
    new-instance p1, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 84
    iget-object p1, p0, Lo/PY$5;->c:Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 88
    iget-object v0, p0, Lo/PY$5;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lo/PY$5;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    if-ne p1, v0, :cond_3

    .line 93
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 94
    iget-object p1, p0, Lo/PY$5;->c:Landroid/content/Context;

    const-class v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 96
    iget-object v0, p0, Lo/PY$5;->c:Landroid/content/Context;

    invoke-static {p1}, Lo/QU;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
