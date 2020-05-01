.class public final Lo/lz;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "DIALOG_RESPONSE"

    .line 25
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "uid"

    .line 26
    invoke-virtual {p0, v0, p1}, Lo/lz;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/lz;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
