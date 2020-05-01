.class final Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;
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
        "Lcom/netflix/mediaclient/media/Language;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/mediaclient/media/Language;)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;->a:Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;

    new-instance v1, Lo/Build$VoiceInteractor;

    const-string v2, "language"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Lo/Build$VoiceInteractor;-><init>(Ljava/lang/Object;)V

    check-cast v1, Lo/Build;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController;->d(Lo/Build;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/mdx2/NetflixMdxController$7;->d(Lcom/netflix/mediaclient/media/Language;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
