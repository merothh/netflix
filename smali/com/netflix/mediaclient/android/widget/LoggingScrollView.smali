.class public Lcom/netflix/mediaclient/android/widget/LoggingScrollView;
.super Landroid/widget/ScrollView;
.source "LoggingScrollView.java"


# instance fields
.field private lastScrollUpdate:J

.field private stopScrollListener:Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;)J
    .locals 2

    iget-wide v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->onScrollEnd()V

    return-void
.end method

.method private onScrollEnd()V
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->stopScrollListener:Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->stopScrollListener:Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;->log()V

    :cond_0
    return-void
.end method

.method private onScrollStart()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-wide v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->onScrollStart()V

    new-instance v0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView$ScrollStateHandler;-><init>(Lcom/netflix/mediaclient/android/widget/LoggingScrollView;Lcom/netflix/mediaclient/android/widget/LoggingScrollView$1;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->lastScrollUpdate:J

    return-void
.end method

.method public setOnScrollStopListener(Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/LoggingScrollView;->stopScrollListener:Lcom/netflix/mediaclient/android/widget/LoggingScrollView$OnScrollStopListener;

    return-void
.end method
