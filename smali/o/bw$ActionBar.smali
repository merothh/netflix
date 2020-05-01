.class public final Lo/bw$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# static fields
.field static final synthetic e:Lo/bw$ActionBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lo/bw$ActionBar;

    invoke-direct {v0}, Lo/bw$ActionBar;-><init>()V

    sput-object v0, Lo/bw$ActionBar;->e:Lo/bw$ActionBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/Observable;)Lo/bs;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lo/akj;",
            ">;)",
            "Lo/bs;"
        }
    .end annotation

    const-string v0, "destroyObservable"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 27
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 20
    const-class v2, Lo/bw$Activity;

    invoke-virtual {v0, v1, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bw$Activity;

    .line 21
    invoke-interface {v0}, Lo/bw$Activity;->q()Lo/bw;

    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lo/bw;->d(Lio/reactivex/Observable;)Lo/bs;

    move-result-object p1

    return-object p1
.end method
