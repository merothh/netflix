.class final Lo/Vk$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Vk;->b(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/interactive/Choice;

.field final synthetic b:I

.field final synthetic c:Lo/Vk;

.field final synthetic d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

.field final synthetic e:Lo/Vn;

.field final synthetic g:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

.field final synthetic j:F


# direct methods
.method constructor <init>(Lo/Vn;Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;Lcom/netflix/model/leafs/originals/interactive/Choice;Lo/Vk;ILcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;F)V
    .locals 0

    iput-object p1, p0, Lo/Vk$TaskDescription;->e:Lo/Vn;

    iput-object p2, p0, Lo/Vk$TaskDescription;->d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    iput-object p3, p0, Lo/Vk$TaskDescription;->a:Lcom/netflix/model/leafs/originals/interactive/Choice;

    iput-object p4, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    iput p5, p0, Lo/Vk$TaskDescription;->b:I

    iput-object p6, p0, Lo/Vk$TaskDescription;->g:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    iput p7, p0, Lo/Vk$TaskDescription;->j:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 487
    iget-object v0, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->m()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {v0}, Lo/Vk;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    iget-object v0, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/Vk;->d(Z)V

    const/4 v0, 0x3

    .line 489
    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 490
    sget-object p1, Lo/Vk;->e:Lo/Vk$Application;

    check-cast p1, Lo/MessagePdu;

    .line 492
    iget-object p1, p0, Lo/Vk$TaskDescription;->d:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout$ChoiceLayout;->selected()Lcom/netflix/model/leafs/originals/interactive/SpriteImage;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 493
    sget-object v2, Lo/XJ;->c:Lo/XJ;

    .line 494
    iget-object v3, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {v3}, Lo/Vk;->q()Lo/ErrorCodes;

    move-result-object v3

    .line 495
    iget-object v4, p0, Lo/Vk$TaskDescription;->e:Lo/Vn;

    invoke-virtual {v4}, Lo/Vn;->f()Lo/GridView;

    move-result-object v4

    .line 496
    iget-object v5, p0, Lo/Vk$TaskDescription;->g:Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;

    invoke-virtual {v5}, Lcom/netflix/model/leafs/originals/interactive/CommonMetaData$Layout;->assetManifest()Lcom/netflix/model/leafs/originals/interactive/AssetManifest;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->assetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netflix/model/leafs/originals/interactive/AssetManifest;->getImage(Ljava/lang/String;)Lcom/netflix/model/leafs/originals/interactive/Image;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 497
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/SpriteImage;->rect()Lcom/netflix/model/leafs/originals/interactive/SourceRect;

    move-result-object v6

    .line 498
    iget v7, p0, Lo/Vk$TaskDescription;->j:F

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 493
    invoke-static/range {v2 .. v10}, Lo/XJ;->b(Lo/XJ;Lo/ErrorCodes;Lo/GridView;Lcom/netflix/model/leafs/originals/interactive/Image;Lcom/netflix/model/leafs/originals/interactive/SourceRect;FLo/XK;ILjava/lang/Object;)V

    .line 503
    :cond_1
    iget-object p1, p0, Lo/Vk$TaskDescription;->e:Lo/Vn;

    invoke-virtual {p1}, Lo/Vn;->i()Lo/GridView;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lo/GridView;->setVisibility(I)V

    .line 504
    iget-object p1, p0, Lo/Vk$TaskDescription;->e:Lo/Vn;

    invoke-virtual {p1}, Lo/Vn;->h()Lo/GridView;

    move-result-object p1

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lo/GridView;->setVisibility(I)V

    .line 509
    iget-object p1, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->n()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Moment;->isInterstitialPostPlay()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/Vk$TaskDescription;->a:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->action()Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice$ChoiceAction;->type()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    const/4 v3, 0x2

    const-string v4, "playNextEpisode"

    invoke-static {p1, v4, v2, v3, v0}, Lo/anv;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 513
    iget-object p1, p0, Lo/Vk$TaskDescription;->a:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->segmentId()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    .line 515
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "Interactive no segment"

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 517
    :cond_4
    iget-object p1, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->s()Lo/Xt;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    .line 519
    iget-object p1, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    invoke-virtual {p1}, Lo/Vk;->p()Lcom/netflix/model/leafs/originals/interactive/Moment;

    move-result-object v4

    .line 520
    iget-object p1, p0, Lo/Vk$TaskDescription;->a:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->id()Ljava/lang/String;

    move-result-object v5

    const-string p1, "choiceDetail.id()"

    invoke-static {v5, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lo/Vk$TaskDescription;->a:Lcom/netflix/model/leafs/originals/interactive/Choice;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/interactive/Choice;->impressionData()Lcom/netflix/model/leafs/originals/interactive/ImpressionData;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    .line 517
    invoke-static/range {v2 .. v10}, Lo/Xt$StateListAnimator;->d(Lo/Xt;ZLcom/netflix/model/leafs/originals/interactive/Moment;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/ImpressionData;Ljava/lang/String;ILjava/lang/Object;)V

    .line 526
    :cond_5
    :goto_3
    iget-object p1, p0, Lo/Vk$TaskDescription;->c:Lo/Vk;

    .line 527
    iget-object v0, p0, Lo/Vk$TaskDescription;->a:Lcom/netflix/model/leafs/originals/interactive/Choice;

    .line 529
    iget v2, p0, Lo/Vk$TaskDescription;->b:I

    .line 526
    invoke-static {p1, v0, v1, v2}, Lo/Vk;->c(Lo/Vk;Lcom/netflix/model/leafs/originals/interactive/Choice;ZI)V

    :cond_6
    return-void
.end method
