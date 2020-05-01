.class public final Lo/WP;
.super Lo/Xl;
.source ""

# interfaces
.implements Lo/Wu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/WP$StateListAnimator;
    }
.end annotation


# static fields
.field public static final e:Lo/WP$StateListAnimator;


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Landroid/view/ViewGroup;

.field private final d:Landroid/view/View;

.field private f:Ljava/lang/String;

.field private final g:Landroid/view/animation/DecelerateInterpolator;

.field private final h:I

.field private final i:Lo/aka;

.field private final j:Landroid/view/animation/AccelerateInterpolator;

.field private final l:Landroid/view/ViewGroup;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/WP$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/WP$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/WP;->e:Lo/WP$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lo/Xl;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lo/WP;->l:Landroid/view/ViewGroup;

    .line 21
    iget-object p1, p0, Lo/WP;->l:Landroid/view/ViewGroup;

    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->y:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lo/WP;->b:Landroid/view/View;

    .line 24
    invoke-virtual {p0}, Lo/WP;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->vB:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.view_netflix_bar)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo/WP;->d:Landroid/view/View;

    .line 26
    invoke-virtual {p0}, Lo/WP;->d()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Fragment;->n:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "uiView.findViewById(R.id.advisory_container)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    .line 28
    sget-object p1, Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;->a:Lcom/netflix/mediaclient/ui/player/v2/uiView/PlayerContentAdvisoryUIView$advisoryProvider$2;

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/WP;->i:Lo/aka;

    .line 29
    iget-object p1, p0, Lo/WP;->l:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$TaskDescription;->w:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lo/WP;->h:I

    .line 32
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/WP;->g:Landroid/view/animation/DecelerateInterpolator;

    .line 33
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lo/WP;->j:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public static final synthetic a(Lo/WP;)Landroid/view/animation/DecelerateInterpolator;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/WP;->g:Landroid/view/animation/DecelerateInterpolator;

    return-object p0
.end method

.method private final varargs a([Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-static {p1}, Lo/ako;->d([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/WP;->n:Ljava/util/List;

    return-void
.end method

.method public static final synthetic b(Lo/WP;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/WP;->n()V

    return-void
.end method

.method private final c(Landroid/view/View;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private final c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    check-cast p1, Ljava/lang/Iterable;

    .line 239
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 240
    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 213
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Lo/adh;->b(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final synthetic c(Lo/WP;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lo/WP;->k()V

    return-void
.end method

.method public static final synthetic d(Lo/WP;)I
    .locals 0

    .line 19
    iget p0, p0, Lo/WP;->h:I

    return p0
.end method

.method public static final synthetic d(Lo/WP;Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lo/WP;->f:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic e(Lo/WP;)Landroid/view/animation/AccelerateInterpolator;
    .locals 0

    .line 19
    iget-object p0, p0, Lo/WP;->j:Landroid/view/animation/AccelerateInterpolator;

    return-object p0
.end method

.method private final k()V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/WP;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 72
    iget-object v0, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    iget v1, p0, Lo/WP;->h:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private final n()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Lo/WP;->b()V

    .line 164
    iget-object v0, p0, Lo/WP;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 165
    iget-object v0, p0, Lo/WP;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 166
    iget-object v0, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private final o()Lo/l;
    .locals 1

    iget-object v0, p0, Lo/WP;->i:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/l;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object v0, p0

    .line 47
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lo/WP;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    sget-object v1, Lo/WP;->e:Lo/WP$StateListAnimator;

    check-cast v1, Lo/MessagePdu;

    .line 51
    new-instance v1, Lo/UW$Activity;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lo/UW$Activity;-><init>(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p0, v1}, Lo/WP;->e(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 56
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/WP;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 76
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/WP;->f:Ljava/lang/String;

    .line 78
    new-instance v0, Lo/WP$Application;

    invoke-direct {v0, p0, p1, p2}, Lo/WP$Application;-><init>(Lo/WP;ZLjava/lang/String;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 91
    invoke-virtual {p0}, Lo/WP;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lo/WP;->e()V

    .line 93
    iget-object p1, p0, Lo/WP;->d:Landroid/view/View;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 94
    iget-object p1, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAlpha(F)V

    const-wide/16 p1, 0x294

    .line 95
    invoke-static {v0, p1, p2}, Lo/adX;->b(Ljava/lang/Runnable;J)Z

    return-void

    .line 100
    :cond_0
    new-instance p1, Lo/WP$ActionBar;

    invoke-direct {p1, p0, v0}, Lo/WP$ActionBar;-><init>(Lo/WP;Ljava/lang/Runnable;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->d(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/WP;->b:Landroid/view/View;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "primaryText"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lo/WP;->o()Lo/l;

    move-result-object v0

    invoke-virtual {p0}, Lo/WP;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "uiView.context"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3}, Lo/l;->d(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    .line 192
    invoke-direct {p0, v0}, Lo/WP;->c(Landroid/view/View;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 195
    invoke-direct {p0, v0}, Lo/WP;->a([Ljava/lang/String;)V

    return-void
.end method

.method public d(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 122
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lo/WP;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 125
    sget-object p1, Lo/WP;->e:Lo/WP$StateListAnimator;

    check-cast p1, Lo/MessagePdu;

    .line 127
    new-instance p1, Lo/UW$Activity;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lo/UW$Activity;-><init>(Ljava/lang/String;I)V

    .line 126
    invoke-virtual {p0, p1}, Lo/WP;->e(Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lo/WP;->p()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    invoke-virtual {p0}, Lo/WP;->b()V

    return-void

    .line 140
    :cond_1
    new-instance p1, Lo/WP$Activity;

    invoke-direct {p1, p0}, Lo/WP$Activity;-><init>(Lo/WP;)V

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p1}, Lo/adX;->d(Ljava/lang/Runnable;)Z

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

    .line 61
    invoke-static/range {v0 .. v8}, Lo/Xl;->a(Lo/Xl;ZJJZILjava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lo/WP;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, v0}, Lo/WP;->c(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public e(Lcom/netflix/model/leafs/advisory/ContentAdvisory;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 200
    iget-object p1, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    new-array p1, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 201
    check-cast v1, Ljava/lang/String;

    aput-object v1, p1, v0

    invoke-direct {p0, p1}, Lo/WP;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-direct {p0}, Lo/WP;->o()Lo/l;

    move-result-object v2

    invoke-virtual {p0}, Lo/WP;->d()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "uiView.context"

    invoke-static {v3, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, p1}, Lo/l;->b(Landroid/content/Context;Lcom/netflix/model/leafs/advisory/ContentAdvisory;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    invoke-direct {p0, v2}, Lo/WP;->c(Landroid/view/View;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 205
    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getI18nRating()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {p1}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;->getI18nAdvisories()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-direct {p0, v2}, Lo/WP;->a([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()J
    .locals 2

    const-wide/16 v0, 0x294

    return-wide v0
.end method

.method public final h()Landroid/view/View;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/WP;->d:Landroid/view/View;

    return-object v0
.end method

.method public final i()Landroid/view/ViewGroup;
    .locals 1

    .line 26
    iget-object v0, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public j()V
    .locals 1

    .line 170
    iget-object v0, p0, Lo/WP;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 171
    iget-object v0, p0, Lo/WP;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 172
    invoke-virtual {p0}, Lo/WP;->x()V

    .line 173
    invoke-virtual {p0}, Lo/WP;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method
