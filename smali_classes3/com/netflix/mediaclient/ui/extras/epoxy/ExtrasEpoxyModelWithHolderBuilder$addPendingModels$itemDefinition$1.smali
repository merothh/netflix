.class public final Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lo/alO;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/GU;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/alO<",
        "Ljava/lang/Integer;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
        "Ljava/lang/Integer;",
        "Lo/GW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/GU;


# direct methods
.method public constructor <init>(Lo/GU;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final e(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;I)Lo/GW;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "extrasFeedItem"

    move-object/from16 v6, p2

    invoke-static {v6, v1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    invoke-static {v1}, Lo/GU;->e(Lo/GU;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 138
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    invoke-static {v1}, Lo/GU;->b(Lo/GU;)I

    move-result v5

    .line 139
    new-instance v1, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 140
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    invoke-static {v2}, Lo/GU;->a(Lo/GU;)Ljava/lang/String;

    move-result-object v8

    .line 144
    sget-object v12, Lcom/netflix/mediaclient/servicemgr/PlayLocationType;->f:Lcom/netflix/mediaclient/servicemgr/PlayLocationType;

    .line 146
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    invoke-static {v2}, Lo/GU;->d(Lo/GU;)Ljava/lang/String;

    move-result-object v14

    .line 147
    iget-object v2, v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    invoke-static {v2}, Lo/GU;->c(Lo/GU;)Ljava/lang/String;

    move-result-object v15

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object v7, v1

    move/from16 v9, p3

    move/from16 v11, p1

    .line 139
    invoke-direct/range {v7 .. v15}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;IIILcom/netflix/mediaclient/servicemgr/PlayLocationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Lcom/netflix/mediaclient/servicemgr/PlayContext;

    .line 150
    iget-object v1, v0, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->a:Lo/GU;

    invoke-static {v1}, Lo/GU;->f(Lo/GU;)Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->getSessionIdMap$impl_release()Ljava/util/Map;

    move-result-object v8

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n                        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->c()Ljava/lang/String;

    move-result-object v4

    const-string v9, ""

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v9

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v9

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v9

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface/range {p2 .. p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->k()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v10, v2

    check-cast v10, Ljava/lang/Iterable;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget-object v2, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;->c:Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1$1;

    move-object/from16 v16, v2

    check-cast v16, Lo/alA;

    const/16 v17, 0x1f

    const/16 v18, 0x0

    invoke-static/range {v10 .. v18}, Lo/akz;->e(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lo/alA;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v9

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n                    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Lo/anv;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 136
    new-instance v1, Lo/GW;

    const/4 v4, 0x0

    move-object v2, v1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v11}, Lo/GW;-><init>(ILjava/lang/Integer;ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/util/Map;Ljava/lang/String;ILo/amc;)V

    return-object v1
.end method

.method public synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;->e(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;I)Lo/GW;

    move-result-object p1

    return-object p1
.end method
