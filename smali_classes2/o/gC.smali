.class public final Lo/gC;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gC$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/gC$StateListAnimator;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gC$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gC$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/gC;->b:Lo/gC$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lo/gC;->isEnabled:Z

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-object v0, Lo/gC;->b:Lo/gC$StateListAnimator;

    invoke-virtual {v0}, Lo/gC$StateListAnimator;->e()Z

    move-result v0

    return v0
.end method

.method public static final synthetic e(Lo/gC;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lo/gC;->isEnabled:Z

    return p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "offlineprofilesgate"

    return-object v0
.end method
