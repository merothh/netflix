.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZF;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/ApfStats;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/ZF;


# direct methods
.method public constructor <init>(Lo/ZF;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;->e:Lo/ZF;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c(Lo/ApfStats;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;->e:Lo/ZF;

    invoke-virtual {v0}, Lo/ZF;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p1}, Lo/ApfStats;->b()Landroid/widget/SearchView;

    move-result-object p1

    const-string v0, "searchViewQueryTextEvent.view()"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 189
    sget-object v0, Lo/ZF;->b:Lo/ZF$StateListAnimator;

    check-cast v0, Lo/MessagePdu;

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;->e:Lo/ZF;

    invoke-static {v0, p1}, Lo/ZF;->d(Lo/ZF;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lo/ApfStats;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsFrag_Ab22078$setupQueryTextChangeListener$$inlined$let$lambda$1;->c(Lo/ApfStats;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
