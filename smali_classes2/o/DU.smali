.class public Lo/DU;
.super Lo/DW;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lo/DW;-><init>()V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 37
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/ady;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    :cond_0
    invoke-super {p0}, Lo/DW;->j()V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 1

    .line 30
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/ady;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    :cond_0
    invoke-super {p0}, Lo/DW;->n()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Lo/DW;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-static {}, Lo/ady;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 21
    invoke-static {}, Lo/adq;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lo/DU;->h()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lo/DY;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lo/DU;->h()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lo/DY;

    new-instance v0, Lo/DD;

    invoke-virtual {p0}, Lo/DU;->m()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lo/DD;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    invoke-virtual {p1, v0}, Lo/DY;->c(Lo/DD;)V

    :cond_0
    return-void
.end method
