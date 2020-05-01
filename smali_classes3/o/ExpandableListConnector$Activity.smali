.class Lo/ExpandableListConnector$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Activity"
.end annotation


# instance fields
.field final synthetic d:Lo/ExpandableListConnector;


# direct methods
.method private constructor <init>(Lo/ExpandableListConnector;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/ExpandableListConnector$Activity;->d:Lo/ExpandableListConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ExpandableListConnector;Lo/ExpandableListConnector$4;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lo/ExpandableListConnector$Activity;-><init>(Lo/ExpandableListConnector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-object v2, p0, Lo/ExpandableListConnector$Activity;->d:Lo/ExpandableListConnector;

    invoke-static {v2}, Lo/ExpandableListConnector;->a(Lo/ExpandableListConnector;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 59
    iget-object v0, p0, Lo/ExpandableListConnector$Activity;->d:Lo/ExpandableListConnector;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lo/ExpandableListConnector;->b(Lo/ExpandableListConnector;J)J

    .line 60
    iget-object v0, p0, Lo/ExpandableListConnector$Activity;->d:Lo/ExpandableListConnector;

    invoke-static {v0}, Lo/ExpandableListConnector;->b(Lo/ExpandableListConnector;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lo/ExpandableListConnector$Activity;->d:Lo/ExpandableListConnector;

    invoke-virtual {v0, p0, v2, v3}, Lo/ExpandableListConnector;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
