.class Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ibm/icu/text/UnicodeSet$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/UnicodeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyFilter"
.end annotation


# instance fields
.field prop:I

.field value:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 3205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3206
    iput p1, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    .line 3207
    iput p2, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 1

    .line 3211
    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->prop:I

    invoke-static {p1, v0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/text/UnicodeSet$IntPropertyFilter;->value:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
