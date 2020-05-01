.class Lcom/ibm/icu/impl/Trie2$Trie2Iterator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Trie2Iterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/ibm/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private doLeadSurrogates:Z

.field private doingCodePoints:Z

.field private limitCP:I

.field private mapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

.field private nextStart:I

.field private returnValue:Lcom/ibm/icu/impl/Trie2$Range;

.field final synthetic this$0:Lcom/ibm/icu/impl/Trie2;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/Trie2;Lcom/ibm/icu/impl/Trie2$ValueMapper;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    new-instance p1, Lcom/ibm/icu/impl/Trie2$Range;

    invoke-direct {p1}, Lcom/ibm/icu/impl/Trie2$Range;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->returnValue:Lcom/ibm/icu/impl/Trie2$Range;

    const/4 p1, 0x1

    .line 995
    iput-boolean p1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    .line 999
    iput-boolean p1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    .line 857
    iput-object p2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->mapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    const/4 p2, 0x0

    .line 858
    iput p2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    const/high16 p2, 0x110000

    .line 859
    iput p2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    .line 860
    iput-boolean p1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    return-void
.end method

.method private rangeEndLS(C)I
    .locals 4

    const v0, 0xdbff

    if-lt p1, v0, :cond_0

    return v0

    .line 973
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v0, :cond_2

    .line 975
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    int-to-char v3, p1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    return p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 943
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doLeadSurrogates:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    const v1, 0xdc00

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/ibm/icu/impl/Trie2$Range;
    .locals 5

    .line 882
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 885
    iget v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 888
    iput-boolean v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    const v0, 0xd800

    .line 889
    iput v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    .line 895
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    if-eqz v0, :cond_3

    .line 897
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie2;->get(I)I

    move-result v0

    .line 898
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->mapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-interface {v1, v0}, Lcom/ibm/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v1

    .line 899
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    iget v3, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iget v4, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/ibm/icu/impl/Trie2;->rangeEnd(III)I

    move-result v0

    .line 903
    :goto_0
    iget v2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_1

    goto :goto_2

    .line 906
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/Trie2;->get(I)I

    move-result v2

    .line 907
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->mapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-interface {v4, v2}, Lcom/ibm/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v4

    if-eq v4, v1, :cond_2

    goto :goto_2

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    iget v4, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->limitCP:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/ibm/icu/impl/Trie2;->rangeEnd(III)I

    move-result v0

    goto :goto_0

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    iget v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v0

    .line 915
    iget-object v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->mapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-interface {v1, v0}, Lcom/ibm/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v1

    .line 916
    iget v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    move-result v0

    :goto_1
    const v2, 0xdbff

    if-lt v0, v2, :cond_4

    goto :goto_2

    .line 923
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->this$0:Lcom/ibm/icu/impl/Trie2;

    add-int/lit8 v3, v0, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/Trie2;->getFromU16SingleLead(C)I

    move-result v2

    .line 924
    iget-object v4, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->mapper:Lcom/ibm/icu/impl/Trie2$ValueMapper;

    invoke-interface {v4, v2}, Lcom/ibm/icu/impl/Trie2$ValueMapper;->map(I)I

    move-result v2

    if-eq v2, v1, :cond_5

    .line 930
    :goto_2
    iget-object v2, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->returnValue:Lcom/ibm/icu/impl/Trie2$Range;

    iget v3, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    iput v3, v2, Lcom/ibm/icu/impl/Trie2$Range;->startCodePoint:I

    .line 931
    iput v0, v2, Lcom/ibm/icu/impl/Trie2$Range;->endCodePoint:I

    .line 932
    iput v1, v2, Lcom/ibm/icu/impl/Trie2$Range;->value:I

    .line 933
    iget-boolean v1, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->doingCodePoints:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v2, Lcom/ibm/icu/impl/Trie2$Range;->leadSurrogate:Z

    add-int/lit8 v0, v0, 0x1

    .line 934
    iput v0, p0, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->nextStart:I

    return-object v2

    .line 927
    :cond_5
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->rangeEndLS(C)I

    move-result v0

    goto :goto_1

    .line 883
    :cond_6
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 853
    invoke-virtual {p0}, Lcom/ibm/icu/impl/Trie2$Trie2Iterator;->next()Lcom/ibm/icu/impl/Trie2$Range;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 948
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
