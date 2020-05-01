.class public final Lo/gH;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gH$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/gH$Activity;

.field private static e:Ljava/lang/Boolean;


# instance fields
.field private samplingPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "samplingPercentage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gH$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gH$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gH;->a:Lo/gH$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lo/gH;->samplingPercentage:I

    return-void
.end method

.method public static final synthetic c()Ljava/lang/Boolean;
    .locals 1

    .line 12
    sget-object v0, Lo/gH;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic e(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    sput-object p0, Lo/gH;->e:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 16
    iget v0, p0, Lo/gH;->samplingPercentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "perf_debug_event_log_sampling_config"

    return-object v0
.end method
