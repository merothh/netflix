.class Lo/LP$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListAnimator"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/LP$2;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lo/LP$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const-string v0, "CastPlayerHelper"

    const-string v1, "resetting shared state"

    .line 134
    invoke-static {v0, v1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lo/LP$StateListAnimator;->c:Z

    .line 136
    iput-boolean v0, p0, Lo/LP$StateListAnimator;->d:Z

    .line 137
    iput-boolean v0, p0, Lo/LP$StateListAnimator;->b:Z

    .line 138
    iput-boolean v0, p0, Lo/LP$StateListAnimator;->a:Z

    return-void
.end method
