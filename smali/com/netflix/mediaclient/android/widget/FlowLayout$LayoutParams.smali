.class public Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "FlowLayout.java"


# instance fields
.field horizontalSpacing:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 169
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 169
    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->horizontalSpacing:I

    .line 173
    sget-object v0, Lcom/netflix/mediaclient/R$styleable;->FlowLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 175
    const/4 v0, 0x0

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/android/widget/FlowLayout$LayoutParams;->horizontalSpacing:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method
