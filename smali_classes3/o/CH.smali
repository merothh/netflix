.class public final Lo/CH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CH$StateListAnimator;
    }
.end annotation


# static fields
.field public static final b:Lo/CH$StateListAnimator;

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I


# instance fields
.field private final a:Lo/aka;

.field private final c:Lo/aka;

.field private final d:Landroid/view/LayoutInflater;

.field private final e:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CH$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CH$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/CH;->b:Lo/CH$StateListAnimator;

    .line 17
    sget v0, Lo/Ct$TaskDescription;->d:I

    sput v0, Lo/CH;->i:I

    .line 18
    sget v0, Lo/Ct$TaskDescription;->c:I

    sput v0, Lo/CH;->f:I

    .line 19
    sget v0, Lo/Ct$TaskDescription;->e:I

    sput v0, Lo/CH;->h:I

    .line 20
    sget v0, Lo/Ct$TaskDescription;->g:I

    sput v0, Lo/CH;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CH;->d:Landroid/view/LayoutInflater;

    .line 23
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$view$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$view$2;-><init>(Lo/CH;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CH;->c:Lo/aka;

    .line 27
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$ratingIconView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$ratingIconView$2;-><init>(Lo/CH;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CH;->e:Lo/aka;

    .line 31
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$iconContainer$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryKMRBView$iconContainer$2;-><init>(Lo/CH;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CH;->a:Lo/aka;

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 12
    sget v0, Lo/CH;->i:I

    return v0
.end method

.method public static final synthetic b(Lo/CH;)Landroid/view/LayoutInflater;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/CH;->d:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private final c()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/CH;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method private final d()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lo/CH;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 12
    sget v0, Lo/CH;->f:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/CH;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lo/CH;->d()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    .line 41
    check-cast p1, Ljava/lang/Iterable;

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 42
    invoke-direct {p0}, Lo/CH;->d()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lo/Ct$StateListAnimator;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 43
    sget v2, Lo/CH;->h:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/GridView;

    invoke-virtual {v0}, Lkotlin/Pair;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    sget v2, Lo/CH;->g:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById<TextView>(advisoryIconTextViewId)"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lo/CH;->c()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
