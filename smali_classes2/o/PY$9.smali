.class final Lo/PY$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PY;->a(Landroid/content/Context;Lcom/netflix/mediaclient/ui/offline/DownloadButton;Ljava/lang/String;ZZ)Landroid/widget/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lo/PY$9;->d:Landroid/content/Context;

    iput-object p2, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->qu:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 163
    iget-object p1, p0, Lo/PY$9;->d:Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 164
    iget-object v0, p0, Lo/PY$9;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v0}, Lo/Am;->q()Lo/nS;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 167
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    invoke-interface {p1}, Lo/nS;->i()Z

    move-result p1

    .line 168
    iget-object v1, p0, Lo/PY$9;->d:Landroid/content/Context;

    .line 169
    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->i(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PY$9;->d:Landroid/content/Context;

    .line 170
    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PY$9;->d:Landroid/content/Context;

    .line 171
    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 173
    :goto_0
    iget-object v3, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-static {v3}, Lo/RL;->b(Ljava/lang/String;)Lo/Tf;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 175
    iget-object p1, p0, Lo/PY$9;->d:Landroid/content/Context;

    iget-object v0, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-static {p1, v0, v1, v2}, Lo/PY;->a(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 177
    :cond_1
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ResumeDownloadCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 178
    iget-object p1, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-interface {v0, p1}, Lo/nS;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 182
    :cond_2
    iget-object p1, p0, Lo/PY$9;->d:Landroid/content/Context;

    iget-object v0, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lo/PY;->e(Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 184
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->bh:I

    if-ne v0, v1, :cond_5

    .line 185
    new-instance p1, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/RemoveCachedVideoCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 186
    iget-object p1, p0, Lo/PY$9;->d:Landroid/content/Context;

    const-class v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz p1, :cond_4

    .line 188
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lo/Am;

    move-result-object p1

    invoke-virtual {p1}, Lo/Am;->q()Lo/nS;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 190
    iget-object v0, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/nS;->a(Ljava/lang/String;)V

    .line 193
    :cond_4
    iget-object p1, p0, Lo/PY$9;->c:Ljava/lang/String;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vA:I

    if-ne p1, v0, :cond_6

    .line 195
    new-instance p1, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;

    invoke-direct {p1}, Lcom/netflix/cl/model/event/session/command/ViewCachedVideosCommand;-><init>()V

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->e(Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 196
    iget-object p1, p0, Lo/PY$9;->d:Landroid/content/Context;

    const-class v0, Landroid/app/Activity;

    invoke-static {p1, v0}, Lo/adu;->c(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_6

    .line 198
    iget-object v0, p0, Lo/PY$9;->d:Landroid/content/Context;

    invoke-static {p1}, Lo/QU;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_6
    :goto_1
    return v2
.end method
