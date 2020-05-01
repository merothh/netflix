.class public final Lo/aal$StateListAnimator;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "PreQuerySearchListModel"

    .line 27
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/aal$StateListAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()F
    .locals 1

    .line 30
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3eaaaaab

    return v0

    .line 32
    :cond_0
    sget-object v0, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 118
    const-class v0, Landroid/content/Context;

    invoke-static {v0}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 32
    invoke-static {v0}, Lo/adq;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    return v0

    :cond_1
    const v0, 0x3e2aaaab

    return v0
.end method

.method public final e()F
    .locals 1

    const/high16 v0, 0x3f100000    # 0.5625f

    return v0
.end method
