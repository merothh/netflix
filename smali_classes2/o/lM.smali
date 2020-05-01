.class public Lo/lM;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PLAYER_SET_CURRENT_TIME"

    .line 23
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "xid"

    .line 24
    invoke-virtual {p0, v0, p1}, Lo/lM;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "time"

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/lM;->b(Ljava/lang/String;I)V

    return-void
.end method
