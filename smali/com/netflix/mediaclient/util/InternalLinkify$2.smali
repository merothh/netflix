.class final Lcom/netflix/mediaclient/util/InternalLinkify$2;
.super Ljava/lang/Object;
.source "InternalLinkify.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/mediaclient/util/LinkSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/netflix/mediaclient/util/LinkSpec;Lcom/netflix/mediaclient/util/LinkSpec;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 203
    iget v2, p1, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    iget v3, p2, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    if-ge v2, v3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    iget v2, p1, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    iget v3, p2, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    if-le v2, v3, :cond_2

    move v0, v1

    .line 208
    goto :goto_0

    .line 211
    :cond_2
    iget v2, p1, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v3, p2, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    if-ge v2, v3, :cond_3

    move v0, v1

    .line 212
    goto :goto_0

    .line 215
    :cond_3
    iget v1, p1, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v2, p2, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    if-gt v1, v2, :cond_0

    .line 219
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 200
    check-cast p1, Lcom/netflix/mediaclient/util/LinkSpec;

    check-cast p2, Lcom/netflix/mediaclient/util/LinkSpec;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/util/InternalLinkify$2;->compare(Lcom/netflix/mediaclient/util/LinkSpec;Lcom/netflix/mediaclient/util/LinkSpec;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method