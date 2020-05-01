.class public final Lo/CE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CD;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CE$Application;
    }
.end annotation


# static fields
.field public static final a:Lo/CE$Application;

.field private static final g:I

.field private static final i:I


# instance fields
.field private final b:Lo/aka;

.field private final c:Lo/aka;

.field private final d:Lo/aka;

.field private final e:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/CE$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/CE$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/CE;->a:Lo/CE$Application;

    .line 15
    sget v0, Lo/Ct$TaskDescription;->b:I

    sput v0, Lo/CE;->i:I

    .line 16
    sget v0, Lo/Ct$TaskDescription;->j:I

    sput v0, Lo/CE;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/CE;->e:Landroid/view/LayoutInflater;

    .line 19
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$view$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$view$2;-><init>(Lo/CE;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CE;->d:Lo/aka;

    .line 23
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$messageView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$messageView$2;-><init>(Lo/CE;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CE;->c:Lo/aka;

    .line 27
    new-instance p1, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$secondaryMessageView$2;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/ui/advisories/provider/view/ContentAdvisoryTwoLineView$secondaryMessageView$2;-><init>(Lo/CE;)V

    check-cast p1, Lo/alB;

    invoke-static {p1}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object p1

    iput-object p1, p0, Lo/CE;->b:Lo/aka;

    return-void
.end method

.method public static final synthetic b(Lo/CE;)Landroid/view/LayoutInflater;
    .locals 0

    .line 10
    iget-object p0, p0, Lo/CE;->e:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private final b()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lo/CE;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private final c()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lo/CE;->c:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 10
    sget v0, Lo/CE;->i:I

    return v0
.end method

.method public static final synthetic e()I
    .locals 1

    .line 10
    sget v0, Lo/CE;->g:I

    return v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lo/CE;->d:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 36
    invoke-direct {p0}, Lo/CE;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-direct {p0}, Lo/CE;->b()Landroid/widget/TextView;

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

.method public final d(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lo/CE;->c()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
