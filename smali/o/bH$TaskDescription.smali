.class public final Lo/bH$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic a:Lo/bH$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lo/bH$TaskDescription;

    invoke-direct {v0}, Lo/bH$TaskDescription;-><init>()V

    sput-object v0, Lo/bH$TaskDescription;->a:Lo/bH$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .line 30
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 37
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 30
    const-class v2, Lo/bH$Application;

    invoke-virtual {v0, v1, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/bH$Application;

    .line 31
    invoke-interface {v0}, Lo/bH$Application;->m()Lo/bH;

    move-result-object v0

    .line 32
    invoke-interface {v0, p1}, Lo/bH;->e(I)Z

    move-result p1

    return p1
.end method
