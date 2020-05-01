.class public abstract Lo/SV;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SV$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/SV$Application;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lo/SV;->j:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected b()I
    .locals 1

    .line 25
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->aV:I

    return v0
.end method

.method public b(Lo/SV$Application;)V
    .locals 4

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Lo/SV$Application;->b()Lo/ImageSwitcher;

    move-result-object v0

    .line 28
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ge:I

    invoke-static {v1}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object v1

    .line 29
    iget v2, p0, Lo/SV;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "episodes"

    invoke-virtual {v1, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 30
    iget v2, p0, Lo/SV;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "movies"

    invoke-virtual {v1, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p1}, Lo/SV$Application;->a()Lo/HorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lo/SV;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/HorizontalScrollView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p1}, Lo/SV$Application;->g()Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lo/SV;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    .line 17
    iput p1, p0, Lo/SV;->c:I

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 15
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1}, Lo/SV;->b(Lo/SV$Application;)V

    return-void
.end method

.method public final d(I)V
    .locals 0

    .line 19
    iput p1, p0, Lo/SV;->a:I

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lo/SV$Application;

    invoke-virtual {p0, p1}, Lo/SV;->b(Lo/SV$Application;)V

    return-void
.end method

.method public final e(Z)V
    .locals 0

    .line 21
    iput-boolean p1, p0, Lo/SV;->b:Z

    return-void
.end method

.method public final h()I
    .locals 1

    .line 17
    iget v0, p0, Lo/SV;->c:I

    return v0
.end method

.method public final l()I
    .locals 1

    .line 19
    iget v0, p0, Lo/SV;->a:I

    return v0
.end method

.method public final m()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lo/SV;->b:Z

    return v0
.end method

.method public final o()Landroid/view/View$OnClickListener;
    .locals 1

    .line 23
    iget-object v0, p0, Lo/SV;->j:Landroid/view/View$OnClickListener;

    return-object v0
.end method
