.class public final Lo/aeB;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static final a()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final a(Ljava/lang/String;Z)Z
    .locals 2

    .line 86
    invoke-static {}, Lo/aeB;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_0

    .line 88
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->a:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-interface {v0, v1, p0}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "On main thread when we should not be."

    :goto_0
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b()Z
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final b(Ljava/lang/String;Z)Z
    .locals 2

    .line 61
    invoke-static {}, Lo/aeB;->b()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p0, :cond_0

    .line 63
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/api/logging/error/ErrorType;->a:Lcom/netflix/mediaclient/api/logging/error/ErrorType;

    invoke-interface {v0, v1, p0}, Lo/SpinnerAdapter;->b(Lcom/netflix/mediaclient/api/logging/error/ErrorType;Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p0, "Not on main thread when we should be."

    :goto_0
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final c()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v0}, Lo/aeB;->d(Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static synthetic c(Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 60
    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {p0, p1}, Lo/aeB;->b(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p2, 0x1

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 85
    check-cast p0, Ljava/lang/String;

    :cond_0
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    invoke-static {p0, p1}, Lo/aeB;->a(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "threadName"

    invoke-static {p0, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method
