.class public final Lo/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ViewAnimator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lo/ViewFlipper;

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lo/Ap;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Lo/g;

.field private final j:Lo/d$Application;


# direct methods
.method public constructor <init>(Lo/g;Z)V
    .locals 1

    const-string v0, "uiLatencyTracker"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/d;->h:Lo/g;

    iput-boolean p2, p0, Lo/d;->g:Z

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    const-string p2, "Collections.emptyMap()"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/d;->e:Ljava/util/Map;

    .line 62
    new-instance p1, Lo/d$Application;

    invoke-direct {p1, p0}, Lo/d$Application;-><init>(Lo/d;)V

    iput-object p1, p0, Lo/d;->j:Lo/d$Application;

    return-void
.end method

.method public static final synthetic c(Lo/d;)Lo/g;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/d;->h:Lo/g;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lo/ViewAnimator;
    .locals 1

    const-string v0, "fetchStatus"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lo/d;->a:Ljava/lang/String;

    .line 30
    move-object p1, p0

    check-cast p1, Lo/ViewAnimator;

    return-object p1
.end method

.method public a()Lo/YearPickerView;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 39
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lo/d;->h:Lo/g;

    invoke-virtual {v1}, Lo/g;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    iget-object v0, p0, Lo/d;->j:Lo/d$Application;

    check-cast v0, Lo/YearPickerView;

    return-object v0

    .line 44
    :cond_0
    iget-boolean v1, p0, Lo/d;->g:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->c:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->a:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    .line 45
    :goto_0
    iget-object v2, p0, Lo/d;->h:Lo/g;

    iget-object v3, p0, Lo/d;->a:Ljava/lang/String;

    iget-object v4, p0, Lo/d;->e:Ljava/util/Map;

    invoke-virtual {v2, v1, v3, v4}, Lo/g;->e(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    iget-boolean v1, p0, Lo/d;->g:Z

    if-nez v1, :cond_2

    .line 47
    iget-object v1, p0, Lo/d;->h:Lo/g;

    sget-object v2, Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;->a:Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;

    const-string v3, "TTI Failed"

    invoke-virtual {v1, v2, v3, v0}, Lo/g;->d(Lcom/netflix/mediaclient/latencytracker/impl/UiLatencyStatus;Ljava/lang/String;Ljava/util/Collection;)V

    .line 50
    :cond_2
    iget-object v0, p0, Lo/d;->j:Lo/d$Application;

    check-cast v0, Lo/YearPickerView;

    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lo/d;->b:J

    return-wide v0
.end method

.method public b(Ljava/util/Map;)Lo/ViewAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/ViewAnimator;"
        }
    .end annotation

    const-string v0, "additionalArgs"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lo/d;->e:Ljava/util/Map;

    .line 35
    move-object p1, p0

    check-cast p1, Lo/ViewAnimator;

    return-object p1
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 54
    invoke-static {v0, v1, v2, v0}, Lo/aeB;->c(Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 56
    iget-wide v1, p0, Lo/d;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lo/d;->b:J

    .line 58
    iget-object v1, p0, Lo/d;->c:Lo/ViewFlipper;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/ViewFlipper;->c()Ljava/util/Collection;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lo/d;->d:Ljava/util/Collection;

    :cond_1
    return-void
.end method

.method public final d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lo/Ap;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/d;->d:Ljava/util/Collection;

    return-object v0
.end method

.method public final e()Lo/ViewFlipper;
    .locals 1

    .line 18
    iget-object v0, p0, Lo/d;->c:Lo/ViewFlipper;

    return-object v0
.end method

.method public final e(Lo/ViewFlipper;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lo/d;->c:Lo/ViewFlipper;

    return-void
.end method
