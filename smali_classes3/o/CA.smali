.class public final Lo/CA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CD;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CA$TaskDescription;
    }
.end annotation


# static fields
.field public static final b:Lo/CA$TaskDescription;

.field private static final h:I

.field private static final j:I


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final c:Lo/aka;

.field private final d:Lo/aka;

.field private final e:Lo/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CA$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CA$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/CA;->b:Lo/CA$TaskDescription;

    .line 15
    sget v0, Lo/Ct$TaskDescription;->e:I

    sput v0, Lo/CA;->j:I

    .line 16
    sget v0, Lo/Ct$TaskDescription;->a:I

    sput v0, Lo/CA;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CA;->a:Landroid/view/LayoutInflater;

    .line 19
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBBFCView$view$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBBFCView$view$2;-><init>(Lo/CA;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CA;->d:Lo/aka;

    .line 23
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBBFCView$iconView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBBFCView$iconView$2;-><init>(Lo/CA;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CA;->e:Lo/aka;

    .line 27
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBBFCView$advisoriesView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBBFCView$advisoriesView$2;-><init>(Lo/CA;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CA;->c:Lo/aka;

    return-void
.end method

.method public static final synthetic b()I
    .locals 1

    .line 12
    sget v0, Lo/CA;->h:I

    return v0
.end method

.method public static final synthetic b(Lo/CA;)Landroid/view/LayoutInflater;
    .locals 0

    .line 12
    iget-object p0, p0, Lo/CA;->a:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 12
    sget v0, Lo/CA;->j:I

    return v0
.end method

.method private final d()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lo/CA;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final e()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/CA;->e:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/CA;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lo/CA;->e()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final c(Ljava/lang/CharSequence;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lo/CA;->d()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lo/CA;->d()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v2, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
