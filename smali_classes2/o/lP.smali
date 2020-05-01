.class public final Lo/lP;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PLAYER_STOP"

    .line 26
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "xid"

    .line 27
    invoke-virtual {p0, v0, p1}, Lo/lP;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "disablePostPlay"

    const/4 v0, 0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Lo/lP;->c(Ljava/lang/String;Z)V

    return-void
.end method
