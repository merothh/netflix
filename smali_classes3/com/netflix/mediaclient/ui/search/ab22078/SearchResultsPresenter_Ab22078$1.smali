.class public final Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alA;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ZK;-><init>(Lio/reactivex/Observable;Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;Lo/ZS;Lio/reactivex/Observable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alA<",
        "Lo/ZR;",
        "Lo/akj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/ZK;


# direct methods
.method public constructor <init>(Lo/ZK;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Lo/ZR;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "it"

    invoke-static {v1, v2}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    instance-of v2, v1, Lo/ZR$StateListAnimator;

    if-eqz v2, :cond_0

    .line 171
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    .line 172
    check-cast v1, Lo/ZR$StateListAnimator;

    invoke-virtual {v1}, Lo/ZR$StateListAnimator;->d()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-virtual {v1}, Lo/ZR$StateListAnimator;->a()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 181
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v13, v1

    check-cast v13, Ljava/util/Map;

    .line 182
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v14, v1

    check-cast v14, Ljava/util/Map;

    .line 183
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v15, v1

    check-cast v15, Ljava/util/Map;

    const/16 v16, 0x0

    .line 177
    new-instance v1, Lo/ZU;

    move-object v10, v1

    invoke-direct/range {v10 .. v16}, Lo/ZU;-><init>(Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 186
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v2}, Lo/ZK;->f(Lo/ZK;)Ljava/lang/String;

    move-result-object v11

    .line 171
    invoke-static/range {v3 .. v11}, Lo/ZK;->a(Lo/ZK;Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V

    .line 188
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/ZK;->e(Z)V

    goto/16 :goto_0

    .line 190
    :cond_0
    instance-of v2, v1, Lo/ZR$FragmentManager;

    if-eqz v2, :cond_1

    .line 191
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-virtual {v1}, Lo/ZK;->e()Z

    move-result v1

    if-nez v1, :cond_3

    .line 193
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->b(Lo/ZK;)Lo/ZU;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 194
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    .line 195
    invoke-static {v2}, Lo/ZK;->d(Lo/ZK;)Ljava/lang/String;

    move-result-object v3

    .line 196
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->a(Lo/ZK;)J

    move-result-wide v4

    .line 197
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->e(Lo/ZK;)I

    move-result v6

    .line 198
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->e(Lo/ZK;)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v7, v1, -0x1

    const/4 v8, 0x0

    .line 201
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->f(Lo/ZK;)Ljava/lang/String;

    move-result-object v10

    .line 194
    invoke-static/range {v2 .. v10}, Lo/ZK;->a(Lo/ZK;Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_1
    instance-of v2, v1, Lo/ZR$Dialog;

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v2}, Lo/ZK;->b(Lo/ZK;)Lo/ZU;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 209
    iget-object v3, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    .line 210
    invoke-static {v3}, Lo/ZK;->d(Lo/ZK;)Ljava/lang/String;

    move-result-object v4

    .line 211
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v2}, Lo/ZK;->a(Lo/ZK;)J

    move-result-wide v5

    .line 212
    check-cast v1, Lo/ZR$Dialog;

    invoke-virtual {v1}, Lo/ZR$Dialog;->c()I

    move-result v7

    .line 213
    invoke-virtual {v1}, Lo/ZR$Dialog;->c()I

    move-result v8

    .line 215
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->t()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 216
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->m:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    .line 214
    invoke-static {v1, v2}, Lo/Lq;->b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v9

    .line 219
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->f(Lo/ZK;)Ljava/lang/String;

    move-result-object v11

    .line 209
    invoke-static/range {v3 .. v11}, Lo/ZK;->a(Lo/ZK;Ljava/lang/String;JIIILo/ZU;Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    instance-of v1, v1, Lo/ZR$SharedElementCallback;

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->a:Lo/ZK;

    invoke-static {v1}, Lo/ZK;->c(Lo/ZK;)Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsUIView_Ab22078;->n()V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Lo/ZR;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/search/ab22078/SearchResultsPresenter_Ab22078$1;->b(Lo/ZR;)V

    sget-object p1, Lo/akj;->a:Lo/akj;

    return-object p1
.end method
