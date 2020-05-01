.class final Lo/ExemptionMechanismSpi;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Landroid/view/ViewStub;

.field private final c:Landroid/view/ViewGroup;

.field private final d:I


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewStub;I)V
    .locals 1

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewStub"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    iput-object p2, p0, Lo/ExemptionMechanismSpi;->a:Landroid/view/ViewStub;

    iput p3, p0, Lo/ExemptionMechanismSpi;->d:I

    return-void
.end method

.method private final e()V
    .locals 3

    .line 218
    iget-object v0, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    iget v1, p0, Lo/ExemptionMechanismSpi;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v1, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view exists at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/ExemptionMechanismSpi;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final a()Landroid/view/ViewGroup;
    .locals 1

    .line 191
    iget-object v0, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 213
    invoke-direct {p0}, Lo/ExemptionMechanismSpi;->e()V

    .line 214
    iget-object v0, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/ExemptionMechanismSpi;->a:Landroid/view/ViewStub;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lo/ExemptionMechanismSpi;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final e(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lo/ExemptionMechanismSpi;->e()V

    .line 200
    iget-object v0, p0, Lo/ExemptionMechanismSpi;->a:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    if-eqz p2, :cond_1

    .line 206
    iget-object p2, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    iget v0, p0, Lo/ExemptionMechanismSpi;->d:I

    iget-object v1, p0, Lo/ExemptionMechanismSpi;->a:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object p2, p0, Lo/ExemptionMechanismSpi;->c:Landroid/view/ViewGroup;

    iget v0, p0, Lo/ExemptionMechanismSpi;->d:I

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-void
.end method
