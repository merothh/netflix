.class final Lo/PY$10;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PY;->b(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;Z)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/ui/offline/DownloadButton;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lo/PY$10;->b:Landroid/content/Context;

    iput-object p2, p0, Lo/PY$10;->d:Ljava/lang/String;

    iput-object p3, p0, Lo/PY$10;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->lR:I

    if-ne v0, v1, :cond_0

    .line 116
    new-instance p1, Lcom/netflix/cl/model/event/session/command/PauseDownloadCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/PauseDownloadCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 117
    iget-object p1, p0, Lo/PY$10;->b:Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_2

    .line 119
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 121
    iget-object v0, p0, Lo/PY$10;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/nS;->b(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lo/PY$10;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->b:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iget-object v1, p0, Lo/PY$10;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->bh:I

    if-ne v0, v1, :cond_1

    .line 126
    new-instance p1, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 127
    iget-object p1, p0, Lo/PY$10;->b:Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_2

    .line 129
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 131
    iget-object v0, p0, Lo/PY$10;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lo/PY$10;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    if-ne p1, v0, :cond_2

    .line 136
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 137
    iget-object p1, p0, Lo/PY$10;->b:Landroid/content/Context;

    const-class v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 139
    iget-object v0, p0, Lo/PY$10;->b:Landroid/content/Context;

    invoke-static {p1}, Lo/QU;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
