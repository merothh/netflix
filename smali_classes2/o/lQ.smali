.class public final Lo/lQ;
.super Lo/ly;
.source ""


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "PLAYER_SET_VOLUME"

    .line 35
    invoke-direct {p0, v0}, Lo/ly;-><init>(Ljava/lang/String;)V

    const-string v0, "xid"

    .line 36
    invoke-virtual {p0, v0, p1}, Lo/lQ;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "volume"

    .line 37
    invoke-virtual {p0, p1, p2}, Lo/lQ;->b(Ljava/lang/String;I)V

    .line 38
    iput p2, p0, Lo/lQ;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 41
    iget v0, p0, Lo/lQ;->a:I

    return v0
.end method
