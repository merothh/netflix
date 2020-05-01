.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Dk$StateListAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->e(Lo/CommonClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

.field final synthetic d:Lo/CommonClock;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;Lo/CommonClock;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;->d:Lo/CommonClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 17

    move-object/from16 v0, p0

    .line 509
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

    iget-object v2, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    .line 510
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->n()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "controllerView.context"

    invoke-static {v3, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v4, v0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$5$StateListAnimator;->e:Ljava/lang/String;

    .line 513
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v5, "com.netflix.mediaclient.intent.action.MDX_ACTION_SETVOLUME"

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfe8

    const/16 v16, 0x0

    .line 509
    invoke-static/range {v2 .. v16}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->e(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/netflix/mediaclient/media/Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method
