.class public final Lo/hm;
.super Lo/hq;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hm$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/hm$StateListAnimator;


# instance fields
.field private isEnabled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isEnabled"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/hm$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/hm$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/hm;->e:Lo/hm$StateListAnimator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lo/hq;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lo/hm;->isEnabled:Z

    return-void
.end method

.method public static final synthetic b(Lo/hm;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lo/hm;->isEnabled:Z

    return p0
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "use_nq_for_api_falkor"

    return-object v0
.end method