.class final Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;
.super Ljava/util/ArrayList;
.source "PlayBilling.java"


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "DETAILS_LIST"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/partner/playbilling/PlayBilling$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
