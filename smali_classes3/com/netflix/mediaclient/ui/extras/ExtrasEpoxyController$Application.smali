.class final Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CipherSpi;


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
        "Lo/CipherSpi<",
        "Lo/HJ;",
        "Lo/HK$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lo/HJ;

.field final synthetic b:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

.field final synthetic c:Lo/AG;

.field final synthetic e:I


# direct methods
.method constructor <init>(Lo/HJ;ILo/AG;Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->a:Lo/HJ;

    iput p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->e:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->c:Lo/AG;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lo/BiConsumer;Ljava/lang/Object;I)V
    .locals 0

    .line 66
    check-cast p1, Lo/HJ;

    check-cast p2, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->c(Lo/HJ;Lo/HK$TaskDescription;I)V

    return-void
.end method

.method public final c(Lo/HJ;Lo/HK$TaskDescription;I)V
    .locals 1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 395
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    iget p3, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->e:I

    invoke-interface {p2, p3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->d(I)V

    .line 396
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->a:Lo/HJ;

    invoke-virtual {p2}, Lo/HJ;->h()Lo/UpdateEngine;

    move-result-object p2

    .line 397
    new-instance p3, Lo/GY$ActionBar$ActionBar;

    .line 398
    invoke-virtual {p1}, Lo/HJ;->k()I

    move-result p1

    .line 399
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$Application;->b:Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem;->m()I

    move-result v0

    .line 397
    invoke-direct {p3, p1, v0}, Lo/GY$ActionBar$ActionBar;-><init>(II)V

    check-cast p3, Lo/VintfObject;

    .line 629
    const-class p1, Lo/GY;

    invoke-virtual {p2, p1, p3}, Lo/UpdateEngine;->c(Ljava/lang/Class;Lo/VintfObject;)V

    .line 402
    sget-object p1, Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController;->Companion:Lcom/netflix/mediaclient/ui/extras/ExtrasEpoxyController$ActionBar;

    check-cast p1, Lo/MessagePdu;

    :cond_0
    return-void
.end method
