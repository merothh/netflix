.class public Lcom/netflix/mediaclient/android/widget/StaticListView;
.super Landroid/widget/ListView;
.source "StaticListView.java"


# instance fields
.field private isStatic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 22
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    if-eqz v0, :cond_0

    .line 28
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 29
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    return-void

    .line 32
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAsStatic(Z)V
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    if-eq v0, p1, :cond_0

    .line 41
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->requestLayout()V

    .line 44
    :cond_0
    return-void
.end method
