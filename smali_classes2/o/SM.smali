.class public abstract Lo/SM;
.super Lo/SQ;
.source ""


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lo/SQ;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 14
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aS:I

    return v0
.end method

.method public e(Lo/SQ$ActionBar;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lo/SM;->o()Lo/adJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/adJ;->a()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/SM;->o()Lo/adJ;

    move-result-object v0

    invoke-virtual {v0}, Lo/adJ;->e()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/SM;->a:Z

    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p1}, Lo/SQ$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object v0

    invoke-virtual {p1}, Lo/SQ$ActionBar;->g()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->gb:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lo/SQ$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object p1

    .line 21
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->fZ:I

    invoke-static {v0}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lo/SM;->o()Lo/adJ;

    move-result-object v1

    invoke-virtual {v1}, Lo/adJ;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hours"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 23
    invoke-virtual {p0}, Lo/SM;->o()Lo/adJ;

    move-result-object v1

    invoke-virtual {v1}, Lo/adJ;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "minutes"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lo/SM;->a:Z

    return-void
.end method

.method public final m()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lo/SM;->a:Z

    return v0
.end method
