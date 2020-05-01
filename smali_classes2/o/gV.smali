.class public final Lo/gV;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/gV$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/gV$StateListAnimator;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/gV$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/gV$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/gV;->d:Lo/gV$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/hq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lo/gV;->isEnabled:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "postplay_enable_repository"

    return-object v0
.end method
