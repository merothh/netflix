.class public final Lo/CB;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CB$ActionBar;
    }
.end annotation


# static fields
.field public static final d:Lo/CB$ActionBar;

.field private static final f:I

.field private static final g:I


# instance fields
.field private final a:Lo/aka;

.field private final b:Lo/aka;

.field private final c:Lo/aka;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CB$ActionBar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CB$ActionBar;-><init>(Lo/amc;)V

    sput-object v0, Lo/CB;->d:Lo/CB$ActionBar;

    .line 15
    sget v0, Lo/Ct$TaskDescription;->e:I

    sput v0, Lo/CB;->g:I

    .line 16
    sget v0, Lo/Ct$TaskDescription;->a:I

    sput v0, Lo/CB;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CB;->e:Landroid/view/LayoutInflater;

    .line 19
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBRView$view$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBRView$view$2;-><init>(Lo/CB;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CB;->c:Lo/aka;

    .line 23
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBRView$iconView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBRView$iconView$2;-><init>(Lo/CB;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CB;->a:Lo/aka;

    .line 27
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBRView$advisoriesView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryBRView$advisoriesView$2;-><init>(Lo/CB;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CB;->b:Lo/aka;

    return-void
.end method

.method private final b()Lo/GridView;
    .locals 1

    iget-object v0, p0, Lo/CB;->a:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GridView;

    return-object v0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 10
    sget v0, Lo/CB;->f:I

    return v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 10
    sget v0, Lo/CB;->g:I

    return v0
.end method

.method public static final synthetic e(Lo/CB;)Landroid/view/LayoutInflater;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/CB;->e:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private final e()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lo/CB;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/CB;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lo/CB;->e()Landroid/widget/TextView;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lo/CB;->e()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/CharSequence;

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

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lo/CB;->b()Lo/GridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GridView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
