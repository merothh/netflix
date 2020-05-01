.class Lo/acW$9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/acW;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic e:Lo/acW;


# direct methods
.method constructor <init>(Lo/acW;Z)V
    .locals 0

    .line 646
    iput-object p1, p0, Lo/acW$9;->e:Lo/acW;

    iput-boolean p2, p0, Lo/acW$9;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 649
    iget-boolean v0, p0, Lo/acW$9;->a:Z

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lo/acW$9;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->h(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->aw:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 651
    iget-object v0, p0, Lo/acW$9;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->h(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 653
    :cond_0
    iget-object v0, p0, Lo/acW$9;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->h(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/netflix/mediaclient/ui/R$Activity;->at:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v0, p0, Lo/acW$9;->e:Lo/acW;

    invoke-static {v0}, Lo/acW;->h(Lo/acW;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_0
    return-void
.end method
