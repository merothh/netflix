.class public Lo/lO;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PLAYER_SKIP_INTRO"

    .line 20
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "xid"

    .line 21
    invoke-virtual {p0, v0, p1}, Lo/lO;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method