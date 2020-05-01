.class public final Lo/gv;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gv$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/gv$StateListAnimator;


# instance fields
.field private cborEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cborEnabled"
    .end annotation
.end field

.field private useEdgeEnvelope:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "useEdgeEnvelope"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gv$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gv$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/gv;->d:Lo/gv$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lo/gv;->cborEnabled:Z

    return-void
.end method

.method public static final c()Z
    .locals 1

    sget-object v0, Lo/gv;->d:Lo/gv$StateListAnimator;

    invoke-virtual {v0}, Lo/gv$StateListAnimator;->d()Z

    move-result v0

    return v0
.end method

.method public static final d()Z
    .locals 1

    sget-object v0, Lo/gv;->d:Lo/gv$StateListAnimator;

    invoke-virtual {v0}, Lo/gv$StateListAnimator;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/gv;->cborEnabled:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lo/gv;->useEdgeEnvelope:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "mslTransportConfiguration"

    return-object v0
.end method
