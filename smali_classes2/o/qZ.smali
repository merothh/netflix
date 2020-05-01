.class public Lo/qZ;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lo/xD;)Z
    .locals 2

    .line 16
    invoke-static {}, Lo/qZ;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 20
    :cond_0
    invoke-static {}, Lo/adk;->g()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 24
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/service/player/streamingplayback/playbackreporter/ErrorCodeUtils;->c(Lo/xD;)Z

    move-result p0

    return p0
.end method

.method public static c()Z
    .locals 2

    .line 31
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Pixel 2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
