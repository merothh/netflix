.class public abstract Lo/SJ;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SJ$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SJ$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 23
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aR:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    .line 17
    iput p1, p0, Lo/SJ;->c:I

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lo/SJ;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 15
    check-cast p1, Lo/SJ$Application;

    invoke-virtual {p0, p1}, Lo/SJ;->e(Lo/SJ$Application;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 19
    iput p1, p0, Lo/SJ;->b:I

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/SJ$Application;

    invoke-virtual {p0, p1}, Lo/SJ;->e(Lo/SJ$Application;)V

    return-void
.end method

.method public e(Lo/SJ$Application;)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lo/SJ$Application;->c()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/SJ;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget v0, p0, Lo/SJ;->c:I

    if-eqz v0, :cond_1

    iget v0, p0, Lo/SJ;->b:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ge:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 29
    iget v1, p0, Lo/SJ;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "episodes"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 30
    iget v1, p0, Lo/SJ;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "movies"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 32
    :goto_1
    invoke-virtual {p1}, Lo/SJ$Application;->d()Lo/ImageSwitcher;

    move-result-object v1

    invoke-virtual {p1}, Lo/SJ$Application;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->gc:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h()I
    .locals 1

    .line 17
    iget v0, p0, Lo/SJ;->c:I

    return v0
.end method

.method public final k()I
    .locals 1

    .line 19
    iget v0, p0, Lo/SJ;->b:I

    return v0
.end method

.method public final o()Landroid/view/View$OnClickListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lo/SJ;->a:Landroid/view/View$OnClickListener;

    return-object v0
.end method
