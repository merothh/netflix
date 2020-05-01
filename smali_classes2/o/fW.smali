.class public final Lo/fW;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fW$Activity;
    }
.end annotation


# static fields
.field public static final a:Lo/fW$Activity;


# instance fields
.field private Av1Disabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Av1StreamingIsDisabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/fW$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/fW$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/fW;->a:Lo/fW$Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lo/fW;->Av1Disabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "av1_streaming_disable_configuration"

    return-object v0
.end method
