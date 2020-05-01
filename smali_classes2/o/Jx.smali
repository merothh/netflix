.class public Lo/Jx;
.super Lcom/netflix/mediaclient/ui/launch/LaunchActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/launch/LaunchActivity;-><init>()V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lo/Jx;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "is_cold_start"

    .line 51
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/netflix/cl/model/AppView;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "navigation_source"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/netflix/cl/model/AppView;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-static {p0, p1, v0}, Lo/Jx;->b(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;
    .locals 0

    .line 34
    invoke-static {p0, p1, p2}, Lo/Jx;->b(Landroid/content/Context;Lcom/netflix/cl/model/AppView;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "is_profile_activation"

    const/4 p2, 0x1

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/NetflixApplication;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lo/Js;

    goto :goto_0

    :cond_0
    const-class v0, Lo/Jx;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 3

    .line 86
    invoke-virtual {p0}, Lo/Jx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_cold_start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 65
    invoke-virtual {p0}, Lo/Jx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "is_profile_activation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public h()Lcom/netflix/cl/model/AppView;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lo/Jx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "navigation_source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/Jx;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/netflix/cl/model/AppView;->valueOf(Ljava/lang/String;)Lcom/netflix/cl/model/AppView;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    sget-object v0, Lcom/netflix/cl/model/AppView;->UNKNOWN:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method
