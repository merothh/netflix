.class public final Lo/gL;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gL$TaskDescription;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/Boolean;

.field public static final d:Lo/gL$TaskDescription;


# instance fields
.field private samplingPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "samplingPercentage"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gL$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gL$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/gL;->d:Lo/gL$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lo/gL;->samplingPercentage:I

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Boolean;
    .locals 1

    .line 12
    sget-object v0, Lo/gL;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    sput-object p0, Lo/gL;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    .line 16
    iget v0, p0, Lo/gL;->samplingPercentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "perf_debug_session_log_sampling_config"

    return-object v0
.end method
