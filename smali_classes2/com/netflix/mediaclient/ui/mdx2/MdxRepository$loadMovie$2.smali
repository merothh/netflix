.class public final Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MR;->e(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic e:Lo/MR;


# direct methods
.method public constructor <init>(Lo/MR;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;->e:Lo/MR;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;->a:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(Lo/zG;)V
    .locals 6

    .line 126
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;->b:Ljava/lang/String;

    sget-object v4, Lcom/netflix/mediaclient/browse/api/task/TaskMode;->d:Lcom/netflix/mediaclient/browse/api/task/TaskMode;

    new-instance v0, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2$4;

    sget-object v2, Lo/MR;->c:Lo/MR$ActionBar;

    invoke-virtual {v2}, Lo/MR$ActionBar;->getLogTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2$4;-><init>(Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;Ljava/lang/String;)V

    move-object v5, v0

    check-cast v5, Lo/zU;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lo/zG;->a(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/browse/api/task/TaskMode;Lo/zU;)Z

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Lo/zG;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/MdxRepository$loadMovie$2;->e(Lo/zG;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
