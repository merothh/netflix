.class public final Lo/Ze$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# static fields
.field static final synthetic a:Lo/Ze$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lo/Ze$Activity;

    invoke-direct {v0}, Lo/Ze$Activity;-><init>()V

    sput-object v0, Lo/Ze$Activity;->a:Lo/Ze$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lo/Ze;
    .locals 3

    .line 19
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 25
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 19
    const-class v2, Lo/Ze$TaskDescription;

    invoke-virtual {v0, v1, v2}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ze$TaskDescription;

    .line 20
    invoke-interface {v0}, Lo/Ze$TaskDescription;->s()Lo/Ze;

    move-result-object v0

    return-object v0
.end method
