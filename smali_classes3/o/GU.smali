.class public final Lo/GU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/GU$Application;
    }
.end annotation


# static fields
.field public static final d:Lo/GU$Application;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Integer;

.field private c:Ljava/lang/Integer;

.field private e:Ljava/lang/String;

.field private final f:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

.field private g:Ljava/lang/String;

.field private final h:Lo/UpdateEngine;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/GX;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

.field private final k:I

.field private final l:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/GU$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/GU$Application;-><init>(Lo/amc;)V

    sput-object v0, Lo/GU;->d:Lo/GU$Application;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lo/UpdateEngine;ILo/EncryptedPrivateKeyInfo;Lo/CipherSpi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;",
            "Lo/UpdateEngine;",
            "I",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;",
            "Lo/CipherSpi<",
            "Lo/GP;",
            "Lo/DoubleStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "epoxyController"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventBusFactory"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/GU;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    iput-object p2, p0, Lo/GU;->h:Lo/UpdateEngine;

    iput p3, p0, Lo/GU;->k:I

    iput-object p4, p0, Lo/GU;->m:Lo/EncryptedPrivateKeyInfo;

    iput-object p5, p0, Lo/GU;->l:Lo/CipherSpi;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/GU;->i:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lo/GU;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/GU;->a:Ljava/lang/String;

    return-object p0
.end method

.method private final a()V
    .locals 20

    move-object/from16 v9, p0

    .line 128
    sget-object v0, Lo/GU;->d:Lo/GU$Application;

    check-cast v0, Lo/MessagePdu;

    .line 129
    iget-object v0, v9, Lo/GU;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 131
    iget-object v0, v9, Lo/GU;->b:Ljava/lang/Integer;

    .line 132
    iget-object v1, v9, Lo/GU;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    .line 133
    iget-object v2, v9, Lo/GU;->c:Ljava/lang/Integer;

    .line 134
    new-instance v3, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;

    invoke-direct {v3, v9}, Lcom/netflix/mediaclient/ui/extras/epoxy/ExtrasEpoxyModelWithHolderBuilder$addPendingModels$itemDefinition$1;-><init>(Lo/GU;)V

    check-cast v3, Lo/alO;

    .line 130
    invoke-static {v0, v1, v2, v3}, Lo/NfcA;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lo/alO;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/GW;

    if-eqz v0, :cond_0

    move-object v10, v0

    goto :goto_0

    .line 160
    :cond_0
    move-object v0, v9

    check-cast v0, Lo/GU;

    .line 162
    new-instance v1, Lo/GW;

    .line 163
    iget-object v2, v0, Lo/GU;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    .line 164
    iget v13, v0, Lo/GU;->k:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 165
    iget-object v0, v0, Lo/GU;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->getSessionIdMap$impl_release()Ljava/util/Map;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x5a

    const/16 v19, 0x0

    move-object v10, v1

    .line 162
    invoke-direct/range {v10 .. v19}, Lo/GW;-><init>(ILjava/lang/Integer;ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/mediaclient/servicemgr/PlayContext;Ljava/util/Map;Ljava/lang/String;ILo/amc;)V

    .line 170
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 171
    iget-object v0, v9, Lo/GU;->i:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 225
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lo/akz;->c()V

    :cond_1
    check-cast v2, Lo/GX;

    .line 172
    iget-object v4, v9, Lo/GU;->b:Ljava/lang/Integer;

    invoke-interface {v2, v4}, Lo/GX;->b(Ljava/lang/Integer;)V

    .line 173
    invoke-interface {v2, v10}, Lo/GX;->b(Lo/GW;)V

    .line 174
    iget-object v4, v9, Lo/GU;->h:Lo/UpdateEngine;

    invoke-interface {v2, v4}, Lo/GX;->b(Lo/UpdateEngine;)V

    .line 175
    invoke-interface {v2, v1}, Lo/GX;->e(I)V

    .line 176
    instance-of v4, v2, Lo/GP;

    if-eqz v4, :cond_3

    .line 178
    move-object v4, v2

    check-cast v4, Lo/GP;

    invoke-virtual {v4}, Lo/GP;->q()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 226
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/BiConsumer;

    .line 179
    instance-of v7, v6, Lo/GX;

    if-eqz v7, :cond_2

    .line 180
    check-cast v6, Lo/GX;

    iget-object v7, v9, Lo/GU;->b:Ljava/lang/Integer;

    invoke-interface {v6, v7}, Lo/GX;->b(Ljava/lang/Integer;)V

    .line 181
    invoke-interface {v6, v10}, Lo/GX;->b(Lo/GW;)V

    .line 182
    iget-object v7, v9, Lo/GU;->h:Lo/UpdateEngine;

    invoke-interface {v6, v7}, Lo/GX;->b(Lo/UpdateEngine;)V

    .line 183
    invoke-interface {v6, v1}, Lo/GX;->e(I)V

    goto :goto_2

    .line 187
    :cond_3
    check-cast v2, Lo/BiConsumer;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_1

    .line 191
    :cond_4
    new-instance v12, Lo/GU$Activity;

    .line 192
    sget v4, Lo/GS$FragmentManager;->t:I

    .line 194
    iget-object v6, v9, Lo/GU;->m:Lo/EncryptedPrivateKeyInfo;

    .line 195
    iget-object v7, v9, Lo/GU;->l:Lo/CipherSpi;

    .line 196
    invoke-virtual {v10}, Lo/GW;->f()Ljava/lang/String;

    move-result-object v8

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v10

    invoke-direct/range {v0 .. v8}, Lo/GU$Activity;-><init>(Lo/GU;Ljava/util/List;Lo/GW;ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;)V

    .line 198
    iget-object v0, v9, Lo/GU;->b:Ljava/lang/Integer;

    invoke-virtual {v12, v0}, Lo/GU$Activity;->b(Ljava/lang/Integer;)V

    .line 199
    invoke-virtual {v12, v10}, Lo/GU$Activity;->b(Lo/GW;)V

    .line 200
    iget-object v0, v9, Lo/GU;->h:Lo/UpdateEngine;

    invoke-virtual {v12, v0}, Lo/GU$Activity;->b(Lo/UpdateEngine;)V

    .line 201
    invoke-virtual {v12, v11}, Lo/GU$Activity;->e(I)V

    .line 202
    invoke-virtual {v12}, Lo/GU$Activity;->m()Lo/GW;

    move-result-object v0

    iget-object v1, v9, Lo/GU;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lo/GW;->e(Ljava/lang/Integer;)V

    .line 203
    iget-object v0, v9, Lo/GU;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    check-cast v12, Lo/BiConsumer;

    invoke-virtual {v0, v12}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->addExtrasEpoxyModelWithHolder(Lo/BiConsumer;)V

    .line 204
    iget-object v0, v9, Lo/GU;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    return-void
.end method

.method private final a(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 1

    .line 90
    sget-object v0, Lo/GU;->d:Lo/GU$Application;

    check-cast v0, Lo/MessagePdu;

    .line 92
    iget-object v0, p0, Lo/GU;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 94
    :goto_0
    invoke-direct {p0}, Lo/GU;->a()V

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/GU;->b:Ljava/lang/Integer;

    .line 98
    :cond_1
    iput-object p2, p0, Lo/GU;->j:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    if-eqz p3, :cond_3

    .line 100
    invoke-interface {p3}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getTrackId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/GU;->c:Ljava/lang/Integer;

    .line 101
    invoke-interface {p3}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getRequestId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/GU;->a:Ljava/lang/String;

    .line 102
    invoke-interface {p3}, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;->getListId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/GU;->e:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 104
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result p3

    if-le p1, p3, :cond_2

    .line 105
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/AG;

    invoke-virtual {p1}, Lo/AG;->e()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 104
    :goto_1
    iput-object p1, p0, Lo/GU;->g:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public static final synthetic b(Lo/GU;)I
    .locals 0

    .line 17
    iget p0, p0, Lo/GU;->k:I

    return p0
.end method

.method public static final synthetic c(Lo/GU;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/GU;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lo/GU;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/GU;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic e(Lo/GU;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/GU;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lo/GU;ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 87
    move-object p2, v0

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 88
    move-object p3, v0

    check-cast p3, Lcom/netflix/model/leafs/ExtrasFeedItemSummary;

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lo/GU;->a(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    return-void
.end method

.method public static final synthetic f(Lo/GU;)Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/GU;->f:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    return-object p0
.end method


# virtual methods
.method public final b(I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 66
    invoke-static/range {v0 .. v5}, Lo/GU;->e(Lo/GU;ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;ILjava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lo/GU;->a()V

    return-void
.end method

.method public final d(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V
    .locals 1

    const-string v0, "extrasFeedItem"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extrasFeedItemSummary"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lo/GU;->a(ILcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;Lcom/netflix/model/leafs/ExtrasFeedItemSummary;)V

    return-void
.end method

.method public final d(Lo/GX;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lo/GU;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lo/GU;->d:Lo/GU$Application;

    check-cast v0, Lo/MessagePdu;

    .line 116
    iget-object v0, p0, Lo/GU;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startItem(position) must be called with non-null value before adding models ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
