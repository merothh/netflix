.class public final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;
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
.field final synthetic e:Lo/MK;


# direct methods
.method constructor <init>(Lo/MK;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->e:Lo/MK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->e:Lo/MK;

    check-cast v0, Lo/MK$Activity;

    invoke-virtual {v0}, Lo/MK$Activity;->c()Lo/AX;

    move-result-object v0

    invoke-interface {v0}, Lo/AX;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/CharSequence;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->j()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->e:Lo/MK;

    check-cast v0, Lo/MK$Activity;

    invoke-virtual {v0}, Lo/MK$Activity;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->e:Lo/MK;

    check-cast v0, Lo/MK$Activity;

    invoke-virtual {v0}, Lo/MK$Activity;->c()Lo/AX;

    move-result-object v0

    invoke-interface {v0}, Lo/AX;->bb()Lo/AK;

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

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->e:Lo/MK;

    check-cast v0, Lo/MK$Activity;

    invoke-virtual {v0}, Lo/MK$Activity;->c()Lo/AX;

    move-result-object v0

    invoke-interface {v0}, Lo/AX;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mdxDataEvent.movieDetails.id"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .locals 1

    .line 336
    invoke-static {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription$TaskDescription;->c(Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 336
    invoke-static {p0}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription$TaskDescription;->d(Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$3$TaskDescription;->e:Lo/MK;

    check-cast v0, Lo/MK$Activity;

    invoke-virtual {v0}, Lo/MK$Activity;->c()Lo/AX;

    move-result-object v0

    invoke-interface {v0}, Lo/AX;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
