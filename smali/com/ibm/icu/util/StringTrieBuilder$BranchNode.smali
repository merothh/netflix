.class abstract Lcom/ibm/icu/util/StringTrieBuilder$BranchNode;
.super Lcom/ibm/icu/util/StringTrieBuilder$Node;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BranchNode"
.end annotation


# instance fields
.field protected firstEdgeNumber:I

.field protected hash:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 595
    invoke-direct {p0}, Lcom/ibm/icu/util/StringTrieBuilder$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    .line 597
    iget v0, p0, Lcom/ibm/icu/util/StringTrieBuilder$BranchNode;->hash:I

    return v0
.end method
