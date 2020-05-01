.class public Lo/FragmentContainer$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FragmentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Application"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FragmentContainer$Application$StateListAnimator;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/FragmentContainer$Application$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/FragmentContainer$Application;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lo/FragmentContainer$Application;->b:Z

    return-void
.end method

.method private a()J
    .locals 4

    .line 171
    iget-object v0, p0, Lo/FragmentContainer$Application;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 175
    :cond_0
    iget-object v0, p0, Lo/FragmentContainer$Application;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/FragmentContainer$Application$StateListAnimator;

    iget-wide v0, v0, Lo/FragmentContainer$Application$StateListAnimator;->a:J

    .line 176
    iget-object v2, p0, Lo/FragmentContainer$Application;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/FragmentContainer$Application$StateListAnimator;

    iget-wide v2, v2, Lo/FragmentContainer$Application$StateListAnimator;->a:J

    sub-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    .line 141
    :try_start_0
    iput-boolean v0, p0, Lo/FragmentContainer$Application;->b:Z

    .line 143
    invoke-direct {p0}, Lo/FragmentContainer$Application;->a()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 145
    monitor-exit p0

    return-void

    .line 148
    :cond_0
    :try_start_1
    iget-object v3, p0, Lo/FragmentContainer$Application;->a:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/FragmentContainer$Application$StateListAnimator;

    iget-wide v5, v3, Lo/FragmentContainer$Application$StateListAnimator;->a:J

    const-string v3, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 149
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v4

    aput-object p1, v5, v0

    invoke-static {v3, v5}, Lo/FragmentContainer;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .locals 2

    .line 163
    iget-boolean v0, p0, Lo/FragmentContainer$Application;->b:Z

    if-nez v0, :cond_0

    const-string v0, "Request on the loose"

    .line 164
    invoke-virtual {p0, v0}, Lo/FragmentContainer$Application;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Marker log finalized without finish() - uncaught exit point for request"

    .line 165
    invoke-static {v1, v0}, Lo/FragmentContainer;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
