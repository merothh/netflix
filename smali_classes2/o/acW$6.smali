.class Lo/acW$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acW;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lo/acW$6;->c:Lo/acW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 545
    iget-object v0, p0, Lo/acW$6;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->j(Lo/acW;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lo/acW$6;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->g(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->by:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 547
    iget-object v0, p0, Lo/acW$6;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->g(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lo/acW$6;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->g(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->bv:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    iget-object v0, p0, Lo/acW$6;->c:Lo/acW;

    invoke-static {v0}, Lo/acW;->g(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method
