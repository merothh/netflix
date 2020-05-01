.class public final Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Zp;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/bz<",
        "+",
        "Lo/AD;",
        ">;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lo/Zp;


# direct methods
.method public constructor <init>(Lo/Zp;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c:Lo/Zp;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/bz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/bz<",
            "+",
            "Lo/AD;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lolopis"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c:Lo/Zp;

    invoke-virtual {v0}, Lo/Zp;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    instance-of v0, p1, Lo/bG;

    if-eqz v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c:Lo/Zp;

    invoke-static {v0}, Lo/Zp;->a(Lo/Zp;)Lo/Zh;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c:Lo/Zp;

    invoke-static {v1}, Lo/Zp;->e(Lo/Zp;)Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c:Lo/Zp;

    invoke-static {v1}, Lo/Zp;->e(Lo/Zp;)Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;

    invoke-virtual {v1, v2}, Lcom/netflix/android/widgetry/lolomo/LolomoRecyclerView;->setLolomoAdapter(Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter;)V

    .line 113
    :cond_1
    check-cast p1, Lo/bG;

    invoke-virtual {p1}, Lo/bG;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AD;

    invoke-virtual {v0, p1}, Lo/Zh;->c(Lo/AD;)V

    goto :goto_0

    .line 116
    :cond_2
    instance-of p1, p1, Lo/bu;

    if-eqz p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c:Lo/Zp;

    invoke-static {p1}, Lo/Zp;->d(Lo/Zp;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lo/bz;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/profiles/icons/impl/OriginalProfileIconsFragment$loadData$1;->c(Lo/bz;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
