.class public Lcom/netflix/mediaclient/android/widget/StaticListView;
.super Landroid/widget/ListView;
.source "StaticListView.java"


# instance fields
.field private isStatic:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    if-eqz v0, :cond_0

    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->onMeasure(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setAsStatic(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/StaticListView;->isStatic:Z

    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/StaticListView;->requestLayout()V

    :cond_0
    return-void
.end method
