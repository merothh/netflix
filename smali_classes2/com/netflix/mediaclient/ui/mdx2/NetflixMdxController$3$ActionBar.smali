.class public final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d(Lo/MK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic c:Lo/MK;

.field final synthetic d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;Lo/MK;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MK;",
            ")V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/CharSequence;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->h()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->e()Lo/Bb;

    move-result-object v0

    invoke-interface {v0}, Lo/Bb;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/CharSequence;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->j()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v0

    invoke-interface {v0}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/AK;->S()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v0

    invoke-interface {v0}, Lo/AS;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdxDataEvent.episodeDetails.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v0

    invoke-interface {v0}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    const-string v1, "mdxDataEvent.episodeDetails.playable"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AK;->R()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 8

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v0

    invoke-interface {v0}, Lo/AS;->ai()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->gA:I

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v4, Lo/MK$ActionBar;

    invoke-virtual {v4}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v4

    invoke-interface {v4}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v0

    invoke-interface {v0}, Lo/AS;->bb()Lo/AK;

    move-result-object v0

    const-string v3, "mdxDataEvent.episodeDetails.playable"

    invoke-static {v0, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lo/AK;->V()I

    move-result v0

    .line 356
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;

    iget-object v4, v4, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3;->d:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e()Landroid/content/res/Resources;

    move-result-object v4

    .line 357
    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->gv:I

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    .line 358
    iget-object v7, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v7, Lo/MK$ActionBar;

    invoke-virtual {v7}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v7

    invoke-interface {v7}, Lo/AS;->bb()Lo/AK;

    move-result-object v7

    invoke-static {v7, v3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Lo/AK;->ag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    .line 360
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v1, Lo/MK$ActionBar;

    invoke-virtual {v1}, Lo/MK$ActionBar;->c()Lo/AS;

    move-result-object v1

    invoke-interface {v1}, Lo/AS;->getTitle()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 356
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "if (mdxDataEvent.episode\u2026                        }"

    .line 352
    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->e()Lo/Bb;

    move-result-object v0

    invoke-interface {v0}, Lo/Bb;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdxDataEvent.showDetails.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$ActionBar;->c:Lo/MK;

    check-cast v0, Lo/MK$ActionBar;

    invoke-virtual {v0}, Lo/MK$ActionBar;->e()Lo/Bb;

    move-result-object v0

    invoke-interface {v0}, Lo/Bb;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
