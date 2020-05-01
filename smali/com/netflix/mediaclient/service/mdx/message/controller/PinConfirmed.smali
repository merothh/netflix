.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PinConfirmed;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PinConfirmed.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "PIN_VERIFICATION_RESPONSE"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinConfirmed;->createObj()V

    return-void
.end method

.method private createObj()V
    .locals 0

    return-void
.end method
