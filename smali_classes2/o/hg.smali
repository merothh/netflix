.class public final Lo/hg;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hg$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/hg$StateListAnimator;


# instance fields
.field private activateHoldback:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activateHoldback"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hg$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hg$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/hg;->b:Lo/hg$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lo/hg;->activateHoldback:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "topten_activate"

    return-object v0
.end method
