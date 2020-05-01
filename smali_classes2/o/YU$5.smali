.class Lo/YU$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/YU;->createManagerStatusListener()Lo/zT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/YU;


# direct methods
.method constructor <init>(Lo/YU;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    const-string p2, "ProfileDetailsActivity"

    const-string v0, "Manager is here!"

    .line 188
    invoke-static {p2, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p2, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p2, p1}, Lo/YU;->c(Lo/YU;Lo/Am;)Lo/Am;

    .line 190
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p1}, Lo/YU;->a(Lo/YU;)V

    .line 191
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p1}, Lo/YU;->e(Lo/YU;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 193
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p1}, Lo/YU;->c(Lo/YU;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 194
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p1}, Lo/YU;->d(Lo/YU;)Lo/Am;

    move-result-object p1

    new-instance p2, Lo/YU$StateListAnimator;

    iget-object v0, p0, Lo/YU$5;->e:Lo/YU;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lo/YU$StateListAnimator;-><init>(Lo/YU;Lo/YU$5;)V

    invoke-virtual {p1, p2}, Lo/Am;->a(Lo/zU;)Z

    goto :goto_1

    .line 198
    :cond_0
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    new-instance p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    invoke-static {p1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object v0

    invoke-interface {v0}, Lo/BC;->getProfileName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {v1}, Lo/YU;->b(Lo/YU;)Lo/BC;

    move-result-object v1

    invoke-interface {v1}, Lo/BC;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p2, v0, v1, v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p1, p2}, Lo/YU;->a(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 199
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-virtual {p1}, Lo/YU;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "avatar_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p2}, Lo/YU;->j(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p2}, Lo/YU;->i(Lo/YU;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    move-result-object p2

    :goto_0
    invoke-static {p1, p2}, Lo/YU;->e(Lo/YU;Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;

    .line 202
    :cond_2
    :goto_1
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p1}, Lo/YU;->h(Lo/YU;)V

    return-void
.end method

.method public onManagerUnavailable(Lo/Am;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    const-string p1, "ProfileDetailsActivity"

    const-string p2, "Manager isn\'t available!"

    .line 207
    invoke-static {p1, p2}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lo/YU;->c(Lo/YU;Lo/Am;)Lo/Am;

    .line 209
    iget-object p1, p0, Lo/YU$5;->e:Lo/YU;

    invoke-static {p1}, Lo/YU;->h(Lo/YU;)V

    return-void
.end method
