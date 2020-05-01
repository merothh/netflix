.class public final Lcom/netflix/mediaclient/service/mdx/message/controller/PinCancelled;
.super Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;
.source "PinCancelled.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "PIN_VERIFICATION_CANCEL"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/message/MdxMessage;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/message/controller/PinCancelled;->createObj()V

    .line 12
    return-void
.end method

.method private createObj()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method
