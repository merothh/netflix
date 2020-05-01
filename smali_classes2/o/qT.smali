.class public Lo/qT;
.super Lcom/google/android/exoplayer2/ui/SubtitlePainter;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/SubtitlePainter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lo/qT;->spacingAdd:F

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 10
    iput p1, p0, Lo/qT;->spacingMult:F

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 19
    iget v0, p0, Lo/qT;->textTop:I

    return v0
.end method

.method public setupBitmapLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p0, v0}, Lo/qT;->setupBitmapLayout(Z)V

    return-void
.end method
