.class Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParserState"
.end annotation


# instance fields
.field offset:I

.field final pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    const/4 p1, 0x0

    .line 572
    iput p1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    return-void
.end method


# virtual methods
.method next()I
    .locals 3

    .line 584
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->peek()I

    move-result v0

    .line 585
    iget v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    return v0
.end method

.method peek()I
    .locals 2

    .line 576
    iget v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    iget-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    return v0
.end method

.method toParseException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected character in decimal format pattern: \'"

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    iget-object v1, p0, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': "

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    .line 595
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->peek()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p1, "EOL"

    .line 597
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "\'"

    .line 599
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/PatternString$LdmlDecimalPatternParser$ParserState;->peek()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
