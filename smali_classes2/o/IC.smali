.class public Lo/IC;
.super Lo/IA;
.source ""


# direct methods
.method constructor <init>(Lo/Iw;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lo/IA;-><init>(Lo/Iw;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/IC;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lo/IC;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/HomeActivity;->getServiceManager()Lo/Am;

    move-result-object v0

    new-instance v1, Lo/IC$2;

    invoke-direct {v1, p0}, Lo/IC$2;-><init>(Lo/IC;)V

    invoke-virtual {v0, v1}, Lo/Am;->e(Lo/zU;)V

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Lo/IC;->e()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v1

    invoke-static {v1}, Lo/adh;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0}, Lo/abN;->a(Lcom/netflix/mediaclient/ui/home/HomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
