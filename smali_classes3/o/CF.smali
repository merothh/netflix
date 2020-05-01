.class public final Lo/CF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CF$Application;
    }
.end annotation


# static fields
.field public static final b:Lo/CF$Application;

.field private static final g:I

.field private static final i:I


# instance fields
.field private final a:Lo/aka;

.field private final c:Lo/aka;

.field private final d:Lo/aka;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CF$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CF$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/CF;->b:Lo/CF$Application;

    .line 16
    sget v0, Lo/Ct$TaskDescription;->d:I

    sput v0, Lo/CF;->i:I

    .line 17
    sget v0, Lo/Ct$TaskDescription;->c:I

    sput v0, Lo/CF;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CF;->e:Landroid/view/LayoutInflater;

    .line 20
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$view$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$view$2;-><init>(Lo/CF;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CF;->c:Lo/aka;

    .line 24
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$ratingIconView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$ratingIconView$2;-><init>(Lo/CF;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CF;->d:Lo/aka;

    .line 28
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$iconContainer$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryNICAMView$iconContainer$2;-><init>(Lo/CF;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CF;->a:Lo/aka;

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 11
    sget v0, Lo/CF;->i:I

    return v0
.end method

.method public static final synthetic b(Lo/CF;)Landroid/view/LayoutInflater;
    .locals 0

    .line 11
    iget-object p0, p0, Lo/CF;->e:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 11
    sget v0, Lo/CF;->g:I

    return v0
.end method

.method private final d()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lo/CF;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method private final e()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/CF;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/CF;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lo/CF;->e()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final e(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Lo/CF;->d()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_1

    .line 38
    check-cast p1, Ljava/lang/Iterable;

    .line 44
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-direct {p0}, Lo/CF;->d()Landroid/view/ViewGroup;

    move-result-object v1

    sget v2, Lo/Ct$StateListAnimator;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lo/BatteryStats;->e(Landroid/view/ViewGroup;IIILjava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Lo/GridView;

    invoke-virtual {v1, v0}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.netflix.mediaclient.android.widget.NetflixImageView"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
