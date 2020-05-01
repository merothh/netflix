.class final Lo/SeekableByteChannel$1;
.super Lo/SeekableByteChannel$Application;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SeekableByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Lo/SeekableByteChannel$Application;-><init>(Lo/SeekableByteChannel$4;)V

    return-void
.end method


# virtual methods
.method public d(Landroid/view/ViewGroup;Landroid/view/View;)F
    .locals 0

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    return p2
.end method
