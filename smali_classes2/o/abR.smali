.class public final Lo/abR;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lcom/netflix/mediaclient/service/user/UserAgent;)Z
    .locals 1

    .line 59
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->m()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->m()Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->isDirty:Z

    if-nez v0, :cond_0

    .line 61
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p0}, Lcom/netflix/mediaclient/service/user/UserAgent;->b()Lo/BC;

    move-result-object p0

    invoke-interface {p0}, Lo/BC;->isKidsProfile()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 31
    invoke-static {p1}, Lo/abR;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 85
    invoke-static {}, Lo/adq;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p0}, Lo/adq;->c(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->seeOtherPlansText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->abTestCell()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(ILcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 0

    if-gtz p0, :cond_1

    .line 39
    invoke-static {p1}, Lo/abR;->e(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/EogAlert;->abTestCell()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lo/Am;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
