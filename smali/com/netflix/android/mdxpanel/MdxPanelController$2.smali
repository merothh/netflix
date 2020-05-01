.class final Lcom/netflix/android/mdxpanel/MdxPanelController$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/android/mdxpanel/MdxPanelController;-><init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Lo/UnicodeScript;Lcom/netflix/android/mdxpanel/MdxPanelController$Experience;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netflix/android/mdxpanel/MdxPanelController;


# direct methods
.method constructor <init>(Lcom/netflix/android/mdxpanel/MdxPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$2;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V
    .locals 1

    .line 242
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$2;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    invoke-static {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController;->c(Lcom/netflix/android/mdxpanel/MdxPanelController;)Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$ActionBar;->c()V

    .line 243
    iget-object p1, p0, Lcom/netflix/android/mdxpanel/MdxPanelController$2;->c:Lcom/netflix/android/mdxpanel/MdxPanelController;

    const/4 v0, 0x0

    check-cast v0, Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;

    invoke-static {p1, v0}, Lcom/netflix/android/mdxpanel/MdxPanelController;->a(Lcom/netflix/android/mdxpanel/MdxPanelController;Lcom/netflix/android/mdxpanel/MdxPanelController$TaskDescription;)V

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;

    invoke-virtual {p0, p1}, Lcom/netflix/android/mdxpanel/MdxPanelController$2;->d(Lcom/netflix/android/mdxpanel/MdxPanelController$Activity;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
