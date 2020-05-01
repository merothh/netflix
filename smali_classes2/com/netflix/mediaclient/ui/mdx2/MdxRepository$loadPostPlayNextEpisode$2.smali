.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MR;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/zG;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/MR;

.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/MR;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->a:Lo/MR;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->e:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/zG;)V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->b:Ljava/lang/String;

    new-instance v1, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;

    sget-object v2, Lo/MR;->c:Lo/MR$ActionBar;

    invoke-virtual {v2}, Lo/MR$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2$1;-><init>(Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;Ljava/lang/String;)V

    check-cast v1, Lo/zU;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p1, v0, v2, v3, v1}, Lo/zG;->e(Ljava/lang/String;Ljava/lang/String;ZLo/zU;)Z

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lo/zG;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadPostPlayNextEpisode$2;->e(Lo/zG;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
