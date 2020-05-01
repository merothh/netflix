.class public abstract Lo/PW;
.super Lo/IntBinaryOperator;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PW$ActionBar;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/IntBinaryOperator<",
        "Lo/PW$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z

.field private c:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/IntBinaryOperator;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 19
    sget v0, Lcom/netflix/mediaclient/ui/R$Dialog;->ax:I

    return v0
.end method

.method public final b(Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lo/PW;->b:Z

    return-void
.end method

.method public synthetic c(Lo/TimeUnit;)V
    .locals 0

    .line 14
    check-cast p1, Lo/PW$ActionBar;

    invoke-virtual {p0, p1}, Lo/PW;->e(Lo/PW$ActionBar;)V

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/PW;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lo/PW$ActionBar;

    invoke-virtual {p0, p1}, Lo/PW;->e(Lo/PW$ActionBar;)V

    return-void
.end method

.method public e(Lo/PW$ActionBar;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lo/PW$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object v0

    iget-boolean v1, p0, Lo/PW;->b:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jG:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->jz:I

    :goto_0
    invoke-virtual {v0, v1}, Lo/ImageSwitcher;->setText(I)V

    .line 23
    iget-boolean v0, p0, Lo/PW;->b:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->ao:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->al:I

    .line 24
    :goto_1
    invoke-virtual {p1}, Lo/PW$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lo/PW$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object v2

    invoke-virtual {v2}, Lo/ImageSwitcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lo/OnSystemUiVisibilityChangeListener;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2, v2, v0, v2}, Lo/ImageSwitcher;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p1}, Lo/PW$ActionBar;->a()Lo/ImageSwitcher;

    move-result-object p1

    iget-object v0, p0, Lo/PW;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lo/ImageSwitcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final h()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lo/PW;->b:Z

    return v0
.end method

.method public final l()Landroid/view/View$OnClickListener;
    .locals 1

    .line 17
    iget-object v0, p0, Lo/PW;->c:Landroid/view/View$OnClickListener;

    return-object v0
.end method
