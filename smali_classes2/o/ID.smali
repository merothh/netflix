.class public Lo/ID;
.super Lo/IA;
.source ""


# direct methods
.method public constructor <init>(Lo/Iw;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lo/IA;-><init>(Lo/Iw;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 33
    invoke-virtual {p0}, Lo/ID;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    new-instance v1, Lo/RF;

    invoke-direct {v1}, Lo/RF;-><init>()V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->showDialog(Lo/PushbackReader;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 2

    .line 22
    invoke-virtual {p0}, Lo/ID;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-static {v1}, Lo/adh;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getTutorialHelper()Lo/Se;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/Se;->b(Lo/Am;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
