.class public Lo/XQ;
.super Lo/ImageSwitcher;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, v0}, Lo/XQ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lo/ImageSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x10000

    .line 32
    invoke-virtual {p0, p1}, Lo/XQ;->setTextColor(I)V

    const/high16 p1, 0x41400000    # 12.0f

    .line 33
    invoke-virtual {p0, p1}, Lo/XQ;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public e(Lo/zJ;)V
    .locals 0

    return-void
.end method
