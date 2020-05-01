.class public final Lo/StatsLogEventWrapper$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/WebSyncManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/StatsLogEventWrapper;-><init>(Landroid/content/Context;Lo/SimpleClock$Activity;Lo/StatsLogEventWrapper$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/StatsLogEventWrapper;


# direct methods
.method constructor <init>(Lo/StatsLogEventWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/StatsLogEventWrapper;->b(Lo/StatsLogEventWrapper;Z)V

    .line 110
    iget-object v0, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {v0}, Lo/StatsLogEventWrapper;->c(Lo/StatsLogEventWrapper;)Lo/StatsDimensionsValue;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "nflx-dislikeSelect"

    .line 112
    invoke-static {p1, v5, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object p1, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {p1}, Lo/StatsLogEventWrapper;->e(Lo/StatsLogEventWrapper;)Lo/SimpleClock$Activity;

    move-result-object p1

    check-cast v0, Lo/SystemVibrator;

    invoke-interface {p1, v0, v1}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    goto :goto_0

    :cond_0
    const-string v1, "nflx-likeSelect"

    .line 113
    invoke-static {p1, v1, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {p1}, Lo/StatsLogEventWrapper;->e(Lo/StatsLogEventWrapper;)Lo/SimpleClock$Activity;

    move-result-object p1

    check-cast v0, Lo/SystemVibrator;

    invoke-interface {p1, v0, v3}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    goto :goto_0

    :cond_1
    const-string v1, "nflx-dislikeDeselect"

    .line 114
    invoke-static {p1, v1, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nflx-likeDeselect"

    invoke-static {p1, v1, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {p1}, Lo/StatsLogEventWrapper;->e(Lo/StatsLogEventWrapper;)Lo/SimpleClock$Activity;

    move-result-object p1

    check-cast v0, Lo/SystemVibrator;

    invoke-interface {p1, v0, v4}, Lo/SimpleClock$Activity;->d(Lo/SystemVibrator;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "tag"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {v0}, Lo/StatsLogEventWrapper;->c(Lo/StatsLogEventWrapper;)Lo/StatsDimensionsValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    const-string v5, "nflx-dislikeSelect"

    .line 122
    invoke-static {p1, v5, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v1}, Lo/StatsDimensionsValue;->setRating(I)V

    goto :goto_0

    :cond_0
    const-string v5, "nflx-likeSelect"

    .line 123
    invoke-static {p1, v5, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lo/StatsDimensionsValue;->setRating(I)V

    goto :goto_0

    :cond_1
    const-string v5, "nflx-dislikeDeselect"

    .line 124
    invoke-static {p1, v5, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "nflx-likeDeselect"

    invoke-static {p1, v5, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {v0, v4}, Lo/StatsDimensionsValue;->setRating(I)V

    :cond_3
    :goto_0
    const-string v0, "nflx-thumbExpand"

    .line 127
    invoke-static {p1, v0, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    iget-object v0, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    const-string v5, "nflx-close"

    invoke-static {p1, v5, v4, v3, v2}, Lo/anv;->b(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-static {v0, p1}, Lo/StatsLogEventWrapper;->d(Lo/StatsLogEventWrapper;Z)V

    goto :goto_1

    .line 130
    :cond_4
    iget-object p1, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {p1}, Lo/StatsLogEventWrapper;->d(Lo/StatsLogEventWrapper;)V

    .line 132
    :goto_1
    iget-object p1, p0, Lo/StatsLogEventWrapper$TaskDescription;->c:Lo/StatsLogEventWrapper;

    invoke-static {p1, v4}, Lo/StatsLogEventWrapper;->b(Lo/StatsLogEventWrapper;Z)V

    return-void
.end method
