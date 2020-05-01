.class public final Lo/lN;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PLAYER_SKIP"

    .line 23
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "seconds"

    .line 24
    invoke-virtual {p0, v0, p2}, Lo/lN;->b(Ljava/lang/String;I)V

    const-string p2, "xid"

    .line 25
    invoke-virtual {p0, p2, p1}, Lo/lN;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
