.class public final Lcom/netflix/mediaclient/partner/PartnerInstallType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "isPaiPreload"

    .line 41
    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->d:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object p0

    .line 45
    :cond_0
    invoke-static {p0}, Lo/adk;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    sget-object p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->c:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object p0

    :cond_1
    const-string v1, "isPostLoaded"

    .line 49
    invoke-static {p0, v1, v0}, Lo/aer;->e(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 50
    sget-object p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->e:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object p0

    .line 53
    :cond_2
    sget-object p0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->a:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .line 57
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 60
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->a:Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/PartnerInstallType$InstallType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lo/aev;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
