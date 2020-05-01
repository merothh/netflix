.class public final Lo/adT;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static a(Lo/ahF;)V
    .locals 0

    return-void
.end method

.method public static b(Lcom/netflix/mediaclient/service/user/UserAgent;Ljava/lang/String;Lo/np;Z)Lo/np;
    .locals 2

    .line 129
    invoke-interface {p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent;->b(Ljava/lang/String;)Lo/zX;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    const/4 v0, 0x1

    const-string v1, "nf_msl_utils"

    if-eqz p3, :cond_0

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, p0

    const-string p0, "MSLUserCredentialRegistry not found for profile %s, but request is marked as always deliver, use current credentials."

    .line 132
    invoke-static {v1, p0, p3}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, p0

    const-string p0, "MSLUserCredentialRegistry not found for profile %s, drop request"

    .line 134
    invoke-static {v1, p0, p2}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_1
    invoke-virtual {p2, p0}, Lo/np;->c(Lo/zX;)V

    :goto_0
    return-object p2
.end method

.method public static c(Lcom/android/volley/VolleyError;)Z
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/volley/VolleyError;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    .line 57
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;

    .line 59
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/msl/client/MslErrorException;->d()Lo/ahF;

    move-result-object p0

    const v0, 0x320e8

    invoke-static {p0, v0}, Lo/adT;->d(Lo/ahF;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lo/ahF;)Z
    .locals 1

    const v0, 0x3289b

    .line 84
    invoke-static {p0, v0}, Lo/adT;->d(Lo/ahF;I)Z

    move-result p0

    return p0
.end method

.method public static d(Lo/ahF;I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 100
    :cond_0
    invoke-static {p0}, Lo/adT;->a(Lo/ahF;)V

    .line 102
    invoke-virtual {p0}, Lo/ahF;->e()I

    move-result p0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static e(Lo/ahF;)Z
    .locals 1

    const v0, 0x3289f

    .line 73
    invoke-static {p0, v0}, Lo/adT;->d(Lo/ahF;I)Z

    move-result p0

    return p0
.end method
