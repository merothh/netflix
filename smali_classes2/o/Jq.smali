.class public final Lo/Jq;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aga;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Jq$Activity;
    }
.end annotation


# static fields
.field public static final c:Lo/Jq$Activity;


# instance fields
.field private final a:Landroid/content/Context;

.field private final d:Lo/TimePickerClockDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Jq$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Jq$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Jq;->c:Lo/Jq$Activity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/TimePickerClockDelegate;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Jq;->a:Landroid/content/Context;

    iput-object p2, p0, Lo/Jq;->d:Lo/TimePickerClockDelegate;

    return-void
.end method

.method private final b()J
    .locals 6

    .line 58
    iget-object v0, p0, Lo/Jq;->d:Lo/TimePickerClockDelegate;

    invoke-interface {v0}, Lo/TimePickerClockDelegate;->e()J

    move-result-wide v0

    iget-object v2, p0, Lo/Jq;->a:Landroid/content/Context;

    const-string v3, "profile_gate_policy_profile_gate_shown_timestamp"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final d()Z
    .locals 5

    .line 62
    iget-object v0, p0, Lo/Jq;->a:Landroid/content/Context;

    const-string v1, "profile_gate_policy_profile_gate_shown_timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lo/aer;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 63
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v0

    .line 64
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lo/Jq;->d:Lo/TimePickerClockDelegate;

    invoke-interface {v3}, Lo/TimePickerClockDelegate;->e()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Z
    .locals 7

    .line 24
    sget-object v0, Lo/ey;->b:Lo/ey$StateListAnimator;

    invoke-virtual {v0}, Lo/ey$StateListAnimator;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 28
    :cond_0
    sget-object v0, Lo/ey;->b:Lo/ey$StateListAnimator;

    invoke-virtual {v0}, Lo/ey$StateListAnimator;->e()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 29
    invoke-direct {p0}, Lo/Jq;->b()J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    return v2

    .line 34
    :cond_1
    sget-object v0, Lo/ey;->b:Lo/ey$StateListAnimator;

    invoke-virtual {v0}, Lo/ey$StateListAnimator;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-direct {p0}, Lo/Jq;->b()J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    return v2

    .line 40
    :cond_2
    sget-object v0, Lo/ey;->b:Lo/ey$StateListAnimator;

    invoke-virtual {v0}, Lo/ey$StateListAnimator;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41
    invoke-direct {p0}, Lo/Jq;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public c()V
    .locals 4

    .line 50
    iget-object v0, p0, Lo/Jq;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/Jq;->d:Lo/TimePickerClockDelegate;

    invoke-interface {v1}, Lo/TimePickerClockDelegate;->e()J

    move-result-wide v1

    const-string v3, "profile_gate_policy_profile_gate_shown_timestamp"

    invoke-static {v0, v3, v1, v2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public final e()V
    .locals 4

    .line 54
    iget-object v0, p0, Lo/Jq;->a:Landroid/content/Context;

    iget-object v1, p0, Lo/Jq;->d:Lo/TimePickerClockDelegate;

    invoke-interface {v1}, Lo/TimePickerClockDelegate;->e()J

    move-result-wide v1

    const-string v3, "profile_gate_policy_app_moved_to_background_timestamp"

    invoke-static {v0, v3, v1, v2}, Lo/aer;->d(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method
