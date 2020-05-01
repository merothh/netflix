.class public final Lo/xL;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b([Lcom/netflix/mediaclient/media/subtitles/Subtitle;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Subtitles are null!"

    .line 31
    invoke-static {p1, p0}, Lo/ChooserTargetService;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
