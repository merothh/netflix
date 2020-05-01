.class public final Lo/OQ;
.super Lo/OK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/OQ$ActionBar;
    }
.end annotation


# static fields
.field public static final f:Lo/OQ$ActionBar;


# instance fields
.field private h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/OQ$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/OQ$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/OQ;->f:Lo/OQ$ActionBar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lo/OK;-><init>()V

    return-void
.end method

.method private final v()V
    .locals 6

    .line 36
    invoke-virtual {p0}, Lo/OQ;->getActivity()Lo/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$Fragment;->kU:I

    invoke-virtual {v0, v1}, Lo/Serializable;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    div-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_0
    return-void
.end method


# virtual methods
.method public b(II)Lo/ON;
    .locals 1

    .line 25
    new-instance v0, Lo/OP;

    invoke-direct {v0, p1, p2}, Lo/OP;-><init>(II)V

    check-cast v0, Lo/ON;

    return-object v0
.end method

.method public c()V
    .locals 0

    .line 30
    invoke-super {p0}, Lo/OK;->c()V

    .line 32
    invoke-direct {p0}, Lo/OQ;->v()V

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lo/OK;->onDestroyView()V

    invoke-virtual {p0}, Lo/OQ;->y()V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lo/OQ;->h:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method
