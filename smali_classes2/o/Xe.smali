.class public Lo/Xe;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/WG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Xe$Activity;,
        Lo/Xe$ActionBar;
    }
.end annotation


# static fields
.field public static final e:Lo/Xe$ActionBar;


# instance fields
.field private final b:Lo/RemoteViewsService;

.field private final c:Lo/ImageSwitcher;

.field private final d:Landroid/view/ViewGroup;

.field private final f:Lo/aka;

.field private final h:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Xe$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Xe$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/Xe;->e:Lo/Xe$ActionBar;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    .line 33
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->em:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/Xe;->d:Landroid/view/ViewGroup;

    .line 35
    invoke-virtual {p0}, Lo/Xe;->n()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->jr:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.label_time_remaining)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/ImageSwitcher;

    iput-object p1, p0, Lo/Xe;->c:Lo/ImageSwitcher;

    .line 37
    invoke-virtual {p0}, Lo/Xe;->n()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->tf:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.timeline_seekbar)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/RemoteViewsService;

    iput-object p1, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    .line 40
    invoke-virtual {p0}, Lo/Xe;->n()Landroid/view/ViewGroup;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->gR:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.extra_seekbar_handler)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    .line 42
    new-instance p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeekbarUIView$containerId$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerSeekbarUIView$containerId$2;-><init>(Lo/Xe;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/Xe;->f:Lo/aka;

    .line 45
    new-instance p1, Lo/Xe$Activity;

    invoke-direct {p1, p0}, Lo/Xe$Activity;-><init>(Lo/Xe;)V

    .line 46
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    move-object v1, p1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lo/RemoteViewsService;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    new-instance v1, Lo/Xe$4;

    invoke-direct {v1, p1}, Lo/Xe$4;-><init>(Lo/Xe$Activity;)V

    check-cast v1, Lo/RemoteViewsService$Activity;

    invoke-virtual {v0, v1}, Lo/RemoteViewsService;->setUglySeekBarListener(Lo/RemoteViewsService$Activity;)V

    return-void

    .line 33
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(I)I
    .locals 3

    .line 100
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lo/RemoteViewsService;->d(J)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    invoke-virtual {v0}, Lo/RemoteViewsService;->getX()F

    move-result v0

    float-to-int v0, v0

    add-int/2addr p1, v0

    return p1
.end method

.method private final b(I)I
    .locals 1

    .line 148
    div-int/lit16 v0, p1, 0x2710

    mul-int/lit16 v0, v0, 0x2710

    return v0
.end method

.method public static final synthetic b(Lo/Xe;)Landroid/widget/ImageView;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic c(Lo/Xe;I)I
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/Xe;->a(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lo/Xe;I)I
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/Xe;->b(I)I

    move-result p0

    return p0
.end method

.method private final d(ILjava/lang/Runnable;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 116
    invoke-direct {p0, p1}, Lo/Xe;->a(I)I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 118
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 120
    new-instance v0, Lo/Xe$TaskDescription;

    invoke-direct {v0, p0}, Lo/Xe$TaskDescription;-><init>(Lo/Xe;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 124
    new-instance v0, Lo/Xe$Application;

    invoke-direct {v0, p0, p2}, Lo/Xe$Application;-><init>(Lo/Xe;Ljava/lang/Runnable;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string p2, "handlerAnimation"

    .line 137
    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    check-cast p2, Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 139
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static final synthetic d(Lo/Xe;ILjava/lang/Runnable;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lo/Xe;->d(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/Xe;->f:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 58
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 62
    invoke-super {p0}, Lo/Xl;->c()V

    .line 63
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/RemoteViewsService;->setEnabled(Z)V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 104
    iget-object v0, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lo/RemoteViewsService;->d(J)F

    move-result p1

    iget-object v1, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "timeRemaining"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lo/Xe;->c:Lo/ImageSwitcher;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic d()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/Xe;->n()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    invoke-virtual {v0, p1}, Lo/RemoteViewsService;->setProgress(I)V

    return-void
.end method

.method public e()V
    .locals 9

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 54
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    invoke-virtual {v0, p1}, Lo/RemoteViewsService;->setMax(I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 96
    iget-object v0, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 67
    invoke-super {p0}, Lo/Xl;->g()V

    .line 68
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RemoteViewsService;->setEnabled(Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 84
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/RemoteViewsService;->e(Z)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/Xe;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 88
    iget-object v0, p0, Lo/Xe;->b:Lo/RemoteViewsService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/RemoteViewsService;->e(Z)V

    return-void
.end method

.method public n()Landroid/view/ViewGroup;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/Xe;->d:Landroid/view/ViewGroup;

    return-object v0
.end method
