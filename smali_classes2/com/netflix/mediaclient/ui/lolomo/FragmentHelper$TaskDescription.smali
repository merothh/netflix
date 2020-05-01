.class public final Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "FragmentHelper"

    .line 555
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;-><init>()V

    return-void
.end method

.method public static final synthetic b(Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;Landroid/view/View;IJ)V
    .locals 0

    .line 555
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription;->e(Landroid/view/View;IJ)V

    return-void
.end method

.method private final e(Landroid/view/View;IJ)V
    .locals 2

    .line 565
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 566
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    return-void

    .line 569
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 570
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    const-string v1, "animator"

    .line 571
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 572
    new-instance p3, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;

    invoke-direct {p3, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper$TaskDescription$Activity;-><init>(Landroid/view/View;I)V

    check-cast p3, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 584
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public final e()J
    .locals 5

    .line 590
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->l()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 591
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getInstance()Lcom/netflix/mediaclient/NetflixApplication;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/netflix/mediaclient/ui/R$LoaderManager;->a:I

    invoke-static {v0, v1}, Lo/adk;->c(Landroid/content/Context;I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->e(J)V

    .line 593
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/lolomo/FragmentHelper;->l()J

    move-result-wide v0

    return-wide v0
.end method
