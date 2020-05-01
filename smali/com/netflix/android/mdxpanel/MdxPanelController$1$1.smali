.class final Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController$1;->a(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/android/mdxpanel/MdxPanelController$1;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController$1;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)V
    .locals 8

    .line 234
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$1;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    new-instance v7, Lo/Build$Cursor;

    invoke-interface {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/Build$Cursor;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILo/amc;)V

    check-cast v7, Lo/Build;

    invoke-virtual {v0, v7}, Lcom/netflix/android/mdxpanel/MdxPanelController;->d(Lo/Build;)V

    .line 235
    iget-object v0, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;->b:Lcom/netflix/android/mdxpanel/MdxPanelController$1;

    iget-object v0, v0, Lcom/netflix/android/mdxpanel/MdxPanelController$1;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {v0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$1$1;->d(Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
