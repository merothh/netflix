.class final Lo/BatteryManagerInternal$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/BatteryManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Activity"
.end annotation


# static fields
.field public static final d:Lo/BatteryManagerInternal$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Lo/BatteryManagerInternal$Activity;

    invoke-direct {v0}, Lo/BatteryManagerInternal$Activity;-><init>()V

    sput-object v0, Lo/BatteryManagerInternal$Activity;->d:Lo/BatteryManagerInternal$Activity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
