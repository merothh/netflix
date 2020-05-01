.class public abstract Lo/Sk;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Sk$ActionBar;,
        Lo/Sk$TaskDescription;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/Sk$ActionBar;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/Sk$TaskDescription;


# instance fields
.field private b:Z

.field private c:I

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Sk$TaskDescription;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Sk$TaskDescription;-><init>(Lo/amc;)V

    sput-object v0, Lo/Sk;->a:Lo/Sk$TaskDescription;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method

.method private final a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 62
    div-int/lit16 v0, p1, 0xe10

    .line 63
    div-int/lit8 p1, p1, 0x3c

    const-string v1, "ICUMessageFormat.getForm\u2026                .format()"

    const-string v2, "size"

    if-lez v0, :cond_0

    .line 65
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->bG:I

    invoke-static {p1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p1

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    .line 70
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bF:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 71
    invoke-virtual {p2, p1}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 75
    :cond_1
    sget p1, Lcom/netflix/mediaclient/ui/R$AssistContent;->bJ:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026for_you_last_updated_now)"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lo/Sk;->b:Z

    return-void
.end method

.method protected b()I
    .locals 1

    .line 30
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ao:I

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lo/Sk;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 19
    check-cast p1, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sk;->e(Lo/Sk$ActionBar;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lo/Sk$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sk;->e(Lo/Sk$ActionBar;)V

    return-void
.end method

.method public final e(I)V
    .locals 0

    .line 26
    iput p1, p0, Lo/Sk;->c:I

    return-void
.end method

.method public e(Lo/Sk$ActionBar;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lo/Sk$ActionBar;->e()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    invoke-virtual {p1}, Lo/Sk$ActionBar;->d()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lo/Sk;->b:Z

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    sget-object v1, Lo/fo;->c:Lo/fo$ActionBar;

    invoke-virtual {v1}, Lo/fo$ActionBar;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lo/Sk;->b:Z

    if-nez v1, :cond_1

    .line 37
    invoke-virtual {p1}, Lo/Sk$ActionBar;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38
    invoke-virtual {p1}, Lo/Sk$ActionBar;->e()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v4}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 40
    invoke-virtual {p1}, Lo/Sk$ActionBar;->e()Lo/ImageSwitcher;

    move-result-object v1

    sget-object v2, Lo/aeN;->e:Lo/aeN;

    invoke-virtual {v2}, Lo/aeN;->d()I

    move-result v2

    const-string v3, "context"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v0}, Lo/Sk;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p1}, Lo/Sk$ActionBar;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p1}, Lo/Sk$ActionBar;->e()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lo/ImageSwitcher;->setVisibility(I)V

    .line 47
    :goto_1
    invoke-virtual {p1}, Lo/Sk$ActionBar;->b()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v1, p0, Lo/Sk;->f:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->bO:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_2

    .line 49
    :cond_4
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->bN:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lo/Sk;->f:Ljava/lang/String;

    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lo/VideoView2;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 47
    :goto_2
    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 24
    iget-boolean v0, p0, Lo/Sk;->b:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lo/Sk;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 26
    iget v0, p0, Lo/Sk;->c:I

    return v0
.end method
