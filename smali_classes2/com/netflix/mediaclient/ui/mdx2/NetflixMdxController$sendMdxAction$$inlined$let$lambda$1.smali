.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/Integer;

.field final synthetic e:Landroid/content/Intent;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/Integer;

.field final synthetic i:Lcom/netflix/mediaclient/media/Language;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/Integer;

.field final synthetic l:Ljava/lang/String;

.field final synthetic o:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->e:Landroid/content/Intent;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->d:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->h:Ljava/lang/Integer;

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->i:Lcom/netflix/mediaclient/media/Language;

    iput-object p8, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->f:Ljava/lang/String;

    iput-object p11, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->k:Ljava/lang/Integer;

    iput-object p12, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->o:Ljava/lang/Boolean;

    iput-object p13, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->l:Ljava/lang/String;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 3

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 747
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->e:Landroid/content/Intent;

    const-string v2, "episodeId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->e:Landroid/content/Intent;

    const-string v2, "segmentType"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->b:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->e:Landroid/content/Intent;

    const-string v1, "catalogId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    :goto_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->e:Landroid/content/Intent;

    const-string v0, "trackId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->e:Landroid/content/Intent;

    const-string p2, "previewPinProtected"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$sendMdxAction$$inlined$let$lambda$1;->c(Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
