.class Lo/acW$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acW;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lo/acW$4;->e:Lo/acW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 499
    iget-object v0, p0, Lo/acW$4;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->i(Lo/acW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lo/acW$4;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->f(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bc:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    iget-object v0, p0, Lo/acW$4;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->f(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lo/acW$4;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->f(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bb:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    iget-object v0, p0, Lo/acW$4;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->f(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method
