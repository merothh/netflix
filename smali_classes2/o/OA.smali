.class public Lo/OA;
.super Lo/Os;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/Os;-><init>()V

    return-void
.end method


# virtual methods
.method protected E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected F()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected H()I
    .locals 1

    .line 28
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->fI:I

    return v0
.end method

.method protected d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lo/OA;->b:Z

    .line 13
    invoke-super {p0, p1}, Lo/Os;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
