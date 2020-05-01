.class public final Lo/FO$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MultiAutoCompleteTextView$Application;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lo/Du$Activity;

.field private final e:Z


# direct methods
.method public constructor <init>(ZLo/Du$Activity;)V
    .locals 1

    const-string v0, "onPlayEpisodeClickListener"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/FO$StateListAnimator;->e:Z

    iput-object p2, p0, Lo/FO$StateListAnimator;->b:Lo/Du$Activity;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/view/View;
    .locals 3

    const-string v0, "parentView"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lo/ady;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {}, Lo/adq;->c()Z

    move-result v0

    .line 414
    :goto_0
    iget-boolean v1, p0, Lo/FO$StateListAnimator;->e:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 415
    new-instance v0, Lo/DP;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->bk:I

    iget-object v2, p0, Lo/FO$StateListAnimator;->b:Lo/Du$Activity;

    invoke-direct {v0, p1, v1, v2}, Lo/DP;-><init>(Landroid/content/Context;ILo/Du$Activity;)V

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 417
    :cond_1
    new-instance v0, Lo/DH;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/netflix/mediaclient/ui/R$Dialog;->bg:I

    iget-object v2, p0, Lo/FO$StateListAnimator;->b:Lo/Du$Activity;

    invoke-direct {v0, p1, v1, v2}, Lo/DH;-><init>(Landroid/content/Context;ILo/Du$Activity;)V

    check-cast v0, Landroid/view/View;

    :goto_1
    return-object v0
.end method
