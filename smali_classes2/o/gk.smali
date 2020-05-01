.class public final Lo/gk;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gk$Activity;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/Boolean;

.field public static final b:Lo/gk$Activity;


# instance fields
.field private falcorPerfSamplingPercentage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sampling"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gk$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gk$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/gk;->b:Lo/gk$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method

.method public static final synthetic b()Ljava/lang/Boolean;
    .locals 1

    .line 14
    sget-object v0, Lo/gk;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    .line 14
    sput-object p0, Lo/gk;->a:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 18
    iget v0, p0, Lo/gk;->falcorPerfSamplingPercentage:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "falcor_perf_sampling"

    return-object v0
.end method
