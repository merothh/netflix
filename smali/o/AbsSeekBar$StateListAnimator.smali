.class public final Lo/AbsSeekBar$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AbsSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "AppInfoCache"

    .line 42
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lo/AbsSeekBar$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lo/AbsSeekBar;
    .locals 3

    .line 60
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 342
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 60
    const-class v2, Lo/AbsSeekBar$TaskDescription;

    invoke-virtual {v0, v1, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AbsSeekBar$TaskDescription;

    invoke-interface {v0}, Lo/AbsSeekBar$TaskDescription;->p()Lo/AbsSeekBar;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lo/AbsSeekBar;Ljava/lang/String;)V
    .locals 4

    const-string v0, "appInfoCache"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p0

    check-cast v0, Lo/AbsSeekBar$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 52
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;

    invoke-direct {v1, p1, p2}, Lo/AbsSeekBar$StateListAnimator$StateListAnimator;-><init>(Lo/AbsSeekBar;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Runnable;

    .line 56
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    .line 52
    invoke-virtual {v0, v1, v2, v3, p1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
