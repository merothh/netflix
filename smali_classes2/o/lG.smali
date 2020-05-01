.class public final Lo/lG;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "META_DATA_CHANGED"

    .line 8
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "catalogId"

    .line 9
    invoke-virtual {p0, v0, p1}, Lo/lG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "episodeId"

    .line 10
    invoke-virtual {p0, p1, p2}, Lo/lG;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 11
    invoke-virtual {p0, p1, p3}, Lo/lG;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
