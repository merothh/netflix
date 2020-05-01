.class public final Lo/aeM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeM$Application;
    }
.end annotation


# direct methods
.method public static b(I)Lo/FragmentController;
    .locals 3

    .line 161
    new-instance v0, Lo/ContentProviderHolder;

    if-gtz p0, :cond_0

    const/16 p0, 0x9c4

    :cond_0
    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, v1, v2}, Lo/ContentProviderHolder;-><init>(IIF)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Lo/aeM$Application;
    .locals 6

    .line 52
    new-instance v0, Lo/aeM$Application;

    invoke-direct {v0}, Lo/aeM$Application;-><init>()V

    .line 53
    iput-object p0, v0, Lo/aeM$Application;->c:Ljava/lang/String;

    .line 54
    iput-object p1, v0, Lo/aeM$Application;->a:Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    invoke-static {p0}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "/"

    const-string v3, "[0-9]+"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, v0, Lo/aeM$Application;->d:Z

    .line 63
    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iput-object p0, v0, Lo/aeM$Application;->e:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 68
    array-length v5, v1

    if-lt v5, v4, :cond_2

    .line 69
    array-length v5, v1

    sub-int/2addr v5, v4

    aget-object v1, v1, v5

    iput-object v1, v0, Lo/aeM$Application;->e:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catalogIdUrl expects at least one segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catalogIdUrl is not a URL or ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_3
    :goto_0
    invoke-static {p1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 79
    iput-boolean v4, v0, Lo/aeM$Application;->d:Z

    .line 81
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 82
    iput-object p1, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    goto :goto_1

    .line 85
    :cond_4
    :try_start_1
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 86
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    .line 87
    array-length v1, p0

    sub-int/2addr v1, v4

    aget-object v1, p0, v1

    iput-object v1, v0, Lo/aeM$Application;->b:Ljava/lang/String;

    .line 88
    iget-object v1, v0, Lo/aeM$Application;->e:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    array-length v1, p0

    sub-int/2addr v1, v2

    aget-object p0, p0, v1

    iput-object p0, v0, Lo/aeM$Application;->e:Ljava/lang/String;

    goto :goto_1

    .line 92
    :cond_5
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "episodeIdUrl expects at least two segments: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    :catch_1
    new-instance p0, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "episodeId is not a URL or ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-object v0
.end method
