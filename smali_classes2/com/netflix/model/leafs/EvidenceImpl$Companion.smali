.class public final Lcom/netflix/model/leafs/EvidenceImpl$Companion;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/EvidenceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "Evidence"

    .line 17
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/netflix/model/leafs/EvidenceImpl$Companion;-><init>()V

    return-void
.end method
