.class public Lo/SensorEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Lo/SystemSensorManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:J


# instance fields
.field private final d:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lo/SensorEvent;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/SensorEvent;->d:Landroid/app/ActivityManager;

    return-void
.end method

.method private a()I
    .locals 3

    .line 44
    iget-object v0, p0, Lo/SensorEvent;->d:Landroid/app/ActivityManager;

    .line 45
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    const/high16 v1, 0x100000

    mul-int v0, v0, v1

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/high16 v1, 0x2000000

    if-ge v0, v1, :cond_0

    const/high16 v0, 0x400000

    return v0

    :cond_0
    const/high16 v1, 0x4000000

    if-ge v0, v1, :cond_1

    const/high16 v0, 0x600000

    return v0

    .line 53
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    const/high16 v0, 0x800000

    return v0

    .line 56
    :cond_2
    div-int/lit8 v0, v0, 0x4

    return v0
.end method


# virtual methods
.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/SensorEvent;->e()Lo/SystemSensorManager;

    move-result-object v0

    return-object v0
.end method

.method public e()Lo/SystemSensorManager;
    .locals 9

    .line 34
    new-instance v8, Lo/SystemSensorManager;

    .line 35
    invoke-direct {p0}, Lo/SensorEvent;->a()I

    move-result v1

    sget-wide v6, Lo/SensorEvent;->b:J

    const/16 v2, 0x100

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/SystemSensorManager;-><init>(IIIIIJ)V

    return-object v8
.end method
