.class public final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;
.super Lo/GP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->buildModels()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

.field final synthetic c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

.field final synthetic f:I

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;IZILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;",
            "IZI",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 429
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;->c:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;->a:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iput p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;->f:I

    iput-boolean p4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$LoaderManager;->j:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p5

    move-object v2, p6

    invoke-direct/range {v0 .. v7}, Lo/GP;-><init>(ILjava/util/List;Lo/EncryptedPrivateKeyInfo;Lo/CipherSpi;Ljava/lang/String;ILo/amc;)V

    return-void
.end method
