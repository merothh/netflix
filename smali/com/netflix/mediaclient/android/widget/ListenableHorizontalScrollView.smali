.class public Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ListenableHorizontalScrollView.java"


# instance fields
.field private onScrollChangedListener:Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView;->onScrollChangedListener:Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView;->onScrollChangedListener:Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView$OnScrollChangedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView$OnScrollChangedListener;->onScrollChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollChangedListener(Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView$OnScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView;->onScrollChangedListener:Lcom/netflix/mediaclient/android/widget/ListenableHorizontalScrollView$OnScrollChangedListener;

    return-void
.end method
