.class public final Lo/lE;
.super Lo/ly;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "HANDSHAKE"

    .line 22
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "contractVersion"

    const/4 v1, 0x1

    .line 23
    invoke-virtual {p0, v0, v1}, Lo/lE;->b(Ljava/lang/String;I)V

    return-void
.end method
