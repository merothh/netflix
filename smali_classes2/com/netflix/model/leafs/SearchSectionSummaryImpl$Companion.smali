.class public final Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/model/leafs/SearchSectionSummaryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "SearchSectionSummary"

    .line 106
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/netflix/model/leafs/SearchSectionSummaryImpl$Companion;-><init>()V

    return-void
.end method
