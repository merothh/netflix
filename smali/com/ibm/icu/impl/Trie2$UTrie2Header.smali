.class Lcom/ibm/icu/impl/Trie2$UTrie2Header;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTrie2Header"
.end annotation


# instance fields
.field dataNullOffset:I

.field index2NullOffset:I

.field indexLength:I

.field options:I

.field shiftedDataLength:I

.field shiftedHighStart:I

.field signature:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
