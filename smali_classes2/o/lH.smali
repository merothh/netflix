.class public final Lo/lH;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PLAYER_SET_AUTO_ADVANCE"

    .line 24
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "xid"

    .line 25
    invoke-virtual {p0, v0, p1}, Lo/lH;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "autoAdvanceMaxIncrement"

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/lH;->b(Ljava/lang/String;I)V

    return-void
.end method
