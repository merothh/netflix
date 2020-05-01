.class public final Lo/ErrorCodes$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# static fields
.field static final synthetic d:Lo/ErrorCodes$TaskDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lo/ErrorCodes$TaskDescription;

    invoke-direct {v0}, Lo/ErrorCodes$TaskDescription;-><init>()V

    sput-object v0, Lo/ErrorCodes$TaskDescription;->d:Lo/ErrorCodes$TaskDescription;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Context;)Lo/ErrorCodes;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lo/CellularBatteryStats;->e:Lo/CellularBatteryStats;

    const-class v1, Lo/ErrorCodes$Application;

    invoke-virtual {v0, p1, v1}, Lo/CellularBatteryStats;->d(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ErrorCodes$Application;

    invoke-interface {p1}, Lo/ErrorCodes$Application;->e()Lo/ErrorCodes;

    move-result-object p1

    return-object p1
.end method
