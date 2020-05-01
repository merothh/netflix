.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/MK;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lo/MK;)V
    .locals 11

    .line 332
    sget-object v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$TaskDescription;

    check-cast v0, Lo/MessagePdu;

    .line 334
    instance-of v0, p1, Lo/MK$Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v1, p1

    check-cast v1, Lo/MK$Activity;

    invoke-virtual {v1}, Lo/MK$Activity;->c()Lo/AX;

    move-result-object v1

    invoke-interface {v1}, Lo/AX;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;-><init>(Lo/MK;)V

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    goto/16 :goto_2

    .line 345
    :cond_0
    instance-of v0, p1, Lo/MK$ActionBar;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    move-object v1, p1

    check-cast v1, Lo/MK$ActionBar;

    invoke-virtual {v1}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v1

    invoke-interface {v1}, Lo/AS;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;Lo/MK;)V

    move-object v1, v0

    check-cast v1, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    goto/16 :goto_2

    .line 369
    :cond_1
    instance-of v0, p1, Lo/MK$StateListAnimator;

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 371
    new-instance v9, Lo/Build$ApplicationInfo;

    .line 372
    check-cast p1, Lo/MK$StateListAnimator;

    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v2

    invoke-interface {v2}, Lo/AS;->ai()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "mdxDataEvent.episodeDetails.playable"

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v7

    invoke-interface {v7}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {v2, v6, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 375
    :cond_2
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v2

    invoke-interface {v2}, Lo/AS;->bb()Lo/AK;

    move-result-object v2

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->V()I

    move-result v2

    .line 376
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e()Landroid/content/res/Resources;

    move-result-object v6

    .line 377
    sget v7, Lcom/netflix/mediaclient/ui/R$AssistContent;->gv:I

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 378
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v10

    invoke-interface {v10}, Lo/AS;->bb()Lo/AK;

    move-result-object v10

    invoke-static {v10, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v10}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v4

    .line 379
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v3

    const/4 v2, 0x2

    .line 380
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v3

    invoke-interface {v3}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 376
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v7, v2

    const-string v2, "if (mdxDataEvent.episode\u2026                        }"

    .line 372
    invoke-static {v7, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v2

    invoke-interface {v2}, Lo/AS;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const-string v2, ""

    :goto_1
    move-object v8, v2

    .line 384
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v2

    invoke-interface {v2}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v2, "mdxDataEvent.episodeDetails.id"

    invoke-static {v4, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v2

    invoke-interface {v2}, Lo/AS;->q()Ljava/lang/String;

    move-result-object v6

    const-string v2, "mdxDataEvent.episodeDetails.showId"

    invoke-static {v6, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->c()Lo/AS;

    move-result-object v2

    invoke-interface {v2}, Lo/AS;->bb()Lo/AK;

    move-result-object v2

    invoke-static {v2, v5}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lo/AK;->aa()Z

    move-result v10

    .line 387
    invoke-virtual {p1}, Lo/MK$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v3

    move-object v2, v9

    move-object v5, v6

    move v6, v10

    .line 371
    invoke-direct/range {v2 .. v8}, Lo/Build$ApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    check-cast v9, Lo/Build;

    .line 370
    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    goto :goto_2

    .line 392
    :cond_4
    instance-of v0, p1, Lo/MK$TaskDescription;

    if-eqz v0, :cond_5

    .line 393
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lo/MK$TaskDescription;

    invoke-virtual {p1}, Lo/MK$TaskDescription;->c()Lcom/netflix/mediaclient/android/app/Status;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 397
    :cond_5
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should have been processed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 401
    :goto_2
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-static {p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)Lio/reactivex/ObservableEmitter;

    move-result-object p1

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$2;-><init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;)V

    check-cast v0, Lo/alN;

    invoke-static {v1, p1, v0}, Lo/NfcA;->c(Ljava/lang/Object;Ljava/lang/Object;Lo/alN;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lo/MK;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d(Lo/MK;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
