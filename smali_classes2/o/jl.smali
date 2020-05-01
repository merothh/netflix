.class public final Lo/jl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static b(Landroid/content/Context;)Lo/ji;
    .locals 3

    const-string v0, "nf_log"

    .line 33
    invoke-static {}, Lo/aeB;->c()Z

    const/4 v1, 0x0

    .line 36
    :try_start_0
    invoke-static {p0}, Lo/adq;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "Not success!"

    .line 42
    invoke-static {v0, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 45
    :cond_0
    new-instance v2, Lo/jq;

    invoke-direct {v2, p0}, Lo/jq;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    const-string v2, "Failed to create Google Play provider"

    .line 53
    invoke-static {v0, v2, p0}, Lo/ChooserTargetService;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
