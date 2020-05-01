.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Dialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EncryptedPrivateKeyInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lo/BiConsumer<",
        "TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/EncryptedPrivateKeyInfo<",
        "Lo/GP;",
        "Lo/DoubleStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Dialog;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;FFII)V
    .locals 7

    .line 66
    move-object v1, p1

    check-cast v1, Lo/GP;

    move-object v2, p2

    check-cast v2, Lo/DoubleStream;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Dialog;->e(Lo/GP;Lo/DoubleStream;FFII)V

    return-void
.end method

.method public final e(Lo/GP;Lo/DoubleStream;FFII)V
    .locals 0

    .line 182
    invoke-virtual {p1}, Lo/GP;->m()Lo/GW;

    move-result-object p2

    invoke-virtual {p2}, Lo/GW;->e()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 183
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->v()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 184
    iget-object p4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Dialog;->e:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    invoke-static {p4}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->access$getHighlighter$p(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;)Lo/Ic;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lo/Ic;->e()Lo/Ic$StateListAnimator;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 185
    invoke-virtual {p1}, Lo/GP;->k()I

    move-result p1

    .line 186
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result p2

    .line 184
    invoke-interface {p4, p1, p2, p3}, Lo/Ic$StateListAnimator;->e(IIF)V

    :cond_0
    return-void
.end method
