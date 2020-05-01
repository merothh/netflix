.class public Lo/ServiceSpecificException;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lo/ServiceSpecificException;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lo/ServiceSpecificException;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lo/ServiceSpecificException;->setAdjustViewBounds(Z)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 33
    invoke-virtual {p0}, Lo/ServiceSpecificException;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Lo/ServiceSpecificException;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/ServiceSpecificException;->setMeasuredDimension(II)V

    return-void
.end method
