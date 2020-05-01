.class public Lo/pf;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Z
    .locals 2

    .line 15
    invoke-static {}, Lo/pa;->c()Lo/pa$StateListAnimator;

    move-result-object v0

    .line 16
    iget-object v1, v0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lo/pa$StateListAnimator;->mExternalStorageInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static c()Lorg/json/JSONObject;
    .locals 1

    .line 28
    invoke-static {}, Lo/pa;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Z
    .locals 1

    .line 23
    invoke-static {}, Lo/pf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 24
    :cond_0
    invoke-static {}, Lo/pa;->c()Lo/pa$StateListAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/pa$StateListAnimator;->a(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static e()J
    .locals 2

    .line 32
    invoke-static {}, Lo/pa;->c()Lo/pa$StateListAnimator;

    move-result-object v0

    iget-wide v0, v0, Lo/pa$StateListAnimator;->b:J

    return-wide v0
.end method
