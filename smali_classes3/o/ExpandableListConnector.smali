.class public Lo/ExpandableListConnector;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ExpandableListConnector$Activity;,
        Lo/ExpandableListConnector$Application;
    }
.end annotation


# instance fields
.field private a:Lo/ExpandableListConnector$Application;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lo/ExpandableListConnector;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 11
    iput-wide p1, p0, Lo/ExpandableListConnector;->d:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 11
    iput-wide p1, p0, Lo/ExpandableListConnector;->d:J

    return-void
.end method

.method static synthetic a(Lo/ExpandableListConnector;)J
    .locals 2

    .line 8
    iget-wide v0, p0, Lo/ExpandableListConnector;->d:J

    return-wide v0
.end method

.method static synthetic b(Lo/ExpandableListConnector;J)J
    .locals 0

    .line 8
    iput-wide p1, p0, Lo/ExpandableListConnector;->d:J

    return-wide p1
.end method

.method private b()V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/ExpandableListConnector;->a:Lo/ExpandableListConnector$Application;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lo/ExpandableListConnector$Application;->a()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lo/ExpandableListConnector;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lo/ExpandableListConnector;->b()V

    return-void
.end method

.method private c()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 28
    iget-wide p1, p0, Lo/ExpandableListConnector;->d:J

    const-wide/16 p3, -0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    .line 29
    invoke-direct {p0}, Lo/ExpandableListConnector;->c()V

    .line 30
    new-instance p1, Lo/ExpandableListConnector$Activity;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lo/ExpandableListConnector$Activity;-><init>(Lo/ExpandableListConnector;Lo/ExpandableListConnector$4;)V

    const-wide/16 p2, 0x64

    invoke-virtual {p0, p1, p2, p3}, Lo/ExpandableListConnector;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 33
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lo/ExpandableListConnector;->d:J

    return-void
.end method

.method public setOnScrollStopListener(Lo/ExpandableListConnector$Application;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lo/ExpandableListConnector;->a:Lo/ExpandableListConnector$Application;

    return-void
.end method
