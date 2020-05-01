.class public Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;
.super Lcom/fasterxml/jackson/core/base/ParserBase;
.source "ReaderBasedJsonParser.java"


# static fields
.field protected static final _icLatin1:[I


# instance fields
.field protected _bufferRecyclable:Z

.field protected final _hashSeed:I

.field protected _inputBuffer:[C

.field protected _nameStartCol:I

.field protected _nameStartOffset:J

.field protected _nameStartRow:I

.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

.field protected _reader:Ljava/io/Reader;

.field protected final _symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

.field protected _tokenIncomplete:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1()[I

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/base/ParserBase;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;I)V

    iput-object p3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocTokenBuffer()[C

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    iput-object p4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;

    iput-object p5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {p5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->hashSeed()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_bufferRecyclable:Z

    return-void
.end method

.method private _handleOddName2(II[I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    array-length v3, p3

    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v4, v2, v4

    if-gt v4, v3, :cond_3

    aget v2, p3, v4

    if-nez v2, :cond_0

    :cond_2
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    mul-int/lit8 v2, p2, 0x21

    add-int p2, v2, v4

    add-int/lit8 v2, v0, 0x1

    aput-char v4, v1, v0

    array-length v0, v1

    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method private final _matchFalse()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v0, 0x4

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v2, v1, v0

    const/16 v3, 0x61

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x6c

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x73

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "false"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final _matchNull()V
    .locals 5

    const/16 v4, 0x6c

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v2, v1, v0

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    if-ne v2, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "null"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final _matchTrue()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v2, v1, v0

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x75

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v2, v1, v0

    const/16 v3, 0x65

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_1

    :cond_0
    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "true"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final _nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameCopied:Z

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    goto :goto_0
.end method

.method private final _parseFloat(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v0, 0x0

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_d

    move v1, v0

    move v2, p3

    :goto_0
    if-lt v2, v4, :cond_0

    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 p3, v2, 0x1

    aget-char v2, v3, v2

    if-lt v2, v6, :cond_1

    if-le v2, v7, :cond_4

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v3, "Decimal point not followed by a digit"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_2
    move v3, v1

    move v1, p3

    :goto_2
    const/16 v5, 0x65

    if-eq v2, v5, :cond_3

    const/16 v5, 0x45

    if-ne v2, v5, :cond_a

    :cond_3
    if-lt v1, v4, :cond_5

    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v2, p3

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v5, v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_6

    const/16 v5, 0x2b

    if-ne v1, v5, :cond_c

    :cond_6
    if-lt v2, v4, :cond_7

    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v1, v2, 0x1

    aget-char v2, v5, v2

    :goto_3
    if-gt v2, v7, :cond_9

    if-lt v2, v6, :cond_9

    add-int/lit8 v0, v0, 0x1

    if-lt v1, v4, :cond_8

    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, p4, p2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v2, v1, 0x1

    aget-char v1, v5, v1

    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_3

    :cond_9
    if-nez v0, :cond_a

    const-string/jumbo v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_a
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    :cond_b
    sub-int/2addr v1, p2

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v2, v4, p2, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    invoke-virtual {p0, p4, p5, v3, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetFloat(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_3

    :cond_d
    move v3, v0

    move v1, p3

    move v2, p1

    goto :goto_2
.end method

.method private _parseName2(III)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x5c

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int/2addr v2, p1

    invoke-virtual {v0, v1, p1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ": was expecting closing \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-char v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' for name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    if-gt v2, v5, :cond_1

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    :cond_1
    :goto_1
    mul-int/lit8 v3, p2, 0x21

    add-int p2, v3, v2

    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v0

    array-length v0, v1

    if-lt v3, v0, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-gt v2, p3, :cond_1

    if-ne v2, p3, :cond_3

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextBuffer()[C

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getTextOffset()I

    move-result v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->size()I

    move-result v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v3, v1, v2, v0, p2}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "name"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private final _parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 10

    if-eqz p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    iput p2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v2

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    const/16 v3, 0x2d

    aput-char v3, v2, v1

    :goto_0
    const/4 v3, 0x0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v4, :cond_3

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v4

    :goto_1
    const/16 v4, 0x30

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNoLeadingZeroes()C

    move-result v1

    :cond_1
    const/4 v5, 0x0

    move v9, v1

    move-object v1, v2

    move v2, v9

    :goto_2
    const/16 v4, 0x30

    if-lt v2, v4, :cond_19

    const/16 v4, 0x39

    if-gt v2, v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    if-lt v0, v4, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v4, v0, 0x1

    aput-char v2, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v5, 0x1

    move v7, v3

    move-object v3, v1

    move v1, v0

    :goto_3
    if-nez v7, :cond_5

    invoke-virtual {p0, v1, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_4
    return-object v0

    :cond_3
    const-string/jumbo v1, "No digit following minus sign"

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v0, v2

    move v0, v4

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_18

    add-int/lit8 v2, v4, 0x1

    aput-char v1, v3, v4

    :goto_5
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v4, v6, :cond_d

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v4

    if-nez v4, :cond_d

    const/4 v5, 0x1

    move v4, v5

    move v5, v1

    :goto_6
    if-nez v0, :cond_6

    const-string/jumbo v1, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_6
    move v6, v0

    move-object v1, v3

    move v0, v2

    :goto_7
    const/4 v3, 0x0

    const/16 v2, 0x65

    if-eq v5, v2, :cond_7

    const/16 v2, 0x45

    if-ne v5, v2, :cond_15

    :cond_7
    array-length v2, v1

    if-lt v0, v2, :cond_8

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_8
    add-int/lit8 v2, v0, 0x1

    aput-char v5, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v5, :cond_f

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v5, v0, v5

    :goto_8
    const/16 v0, 0x2d

    if-eq v5, v0, :cond_9

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_14

    :cond_9
    array-length v0, v1

    if-lt v2, v0, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_9
    add-int/lit8 v2, v0, 0x1

    aput-char v5, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v5, :cond_10

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v8, v5, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v5

    :goto_a
    move v9, v0

    move v0, v2

    move v2, v9

    :goto_b
    const/16 v5, 0x39

    if-gt v2, v5, :cond_12

    const/16 v5, 0x30

    if-lt v2, v5, :cond_12

    add-int/lit8 v3, v3, 0x1

    array-length v5, v1

    if-lt v0, v5, :cond_a

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_a
    add-int/lit8 v5, v0, 0x1

    aput-char v2, v1, v0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v8, :cond_11

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v4, 0x1

    move v0, v3

    move v1, v4

    move v3, v5

    :goto_c
    if-nez v0, :cond_b

    const-string/jumbo v4, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    :cond_b
    :goto_d
    if-nez v1, :cond_c

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    :cond_c
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    invoke-virtual {p0, p1, v7, v6, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reset(ZIII)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto/16 :goto_4

    :cond_d
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v4

    const/16 v4, 0x30

    if-lt v1, v4, :cond_17

    const/16 v4, 0x39

    if-le v1, v4, :cond_e

    move v4, v5

    move v5, v1

    goto/16 :goto_6

    :cond_e
    add-int/lit8 v0, v0, 0x1

    array-length v4, v3

    if-lt v2, v4, :cond_16

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    const/4 v2, 0x0

    move v4, v2

    :goto_e
    add-int/lit8 v2, v4, 0x1

    aput-char v1, v3, v4

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v5

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v0, "expected a digit for number exponent"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getNextChar(Ljava/lang/String;)C

    move-result v0

    goto/16 :goto_a

    :cond_11
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v0, v2

    move v0, v5

    goto/16 :goto_b

    :cond_12
    move v1, v4

    move v9, v3

    move v3, v0

    move v0, v9

    goto :goto_c

    :cond_13
    move v0, v2

    goto/16 :goto_9

    :cond_14
    move v0, v2

    move v2, v5

    goto/16 :goto_b

    :cond_15
    move v1, v4

    move v2, v5

    move v9, v3

    move v3, v0

    move v0, v9

    goto :goto_d

    :cond_16
    move v4, v2

    goto :goto_e

    :cond_17
    move v4, v5

    move v5, v1

    goto/16 :goto_6

    :cond_18
    move v6, v0

    move v0, v4

    move v4, v5

    move v5, v1

    move-object v1, v3

    goto/16 :goto_7

    :cond_19
    move v7, v3

    move v4, v0

    move-object v3, v1

    move v1, v2

    goto/16 :goto_3

    :cond_1a
    move v0, v1

    goto/16 :goto_0
.end method

.method private final _skipAfterComma2()I
    .locals 4

    const/16 v3, 0x20

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_4

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    return v0

    :cond_4
    if-ge v0, v3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private _skipCComment()V
    .locals 4

    const/16 v3, 0x2a

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-gt v0, v3, :cond_0

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_1

    :cond_4
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipColon()I
    .locals 7

    const/16 v6, 0x9

    const/16 v5, 0x2f

    const/16 v4, 0x23

    const/4 v3, 0x1

    const/16 v2, 0x20

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v2, :cond_3

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_0

    :cond_3
    if-eq v0, v2, :cond_4

    if-ne v0, v6, :cond_7

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v2, :cond_7

    if-eq v0, v5, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_0

    :cond_7
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_0

    :cond_8
    if-eq v0, v2, :cond_9

    if-ne v0, v6, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    :cond_a
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v2, :cond_d

    if-eq v0, v5, :cond_b

    if-ne v0, v4, :cond_c

    :cond_b
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto :goto_0

    :cond_c
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto :goto_0

    :cond_d
    if-eq v0, v2, :cond_e

    if-ne v0, v6, :cond_11

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v2, :cond_11

    if-eq v0, v5, :cond_f

    if-ne v0, v4, :cond_10

    :cond_f
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto/16 :goto_0

    :cond_10
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon2(Z)I

    move-result v0

    goto/16 :goto_0
.end method

.method private final _skipColon2(Z)I
    .locals 4

    const/16 v3, 0x20

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMoreGuaranteed()V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_7

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    if-eqz p1, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_6

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    :cond_5
    const-string/jumbo v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    if-ge v0, v3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_8
    const/16 v1, 0xd

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    :cond_9
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipComma(I)I
    .locals 4

    const/16 v3, 0x20

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "was expecting comma to separate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getTypeDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipAfterComma2()I

    move-result v0

    :cond_2
    :goto_1
    return v0

    :cond_3
    if-ge v0, v3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipAfterComma2()I

    move-result v0

    goto :goto_1
.end method

.method private _skipComment()V
    .locals 4

    const/16 v3, 0x2f

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, " in a comment"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLine()V

    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCComment()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _skipLine()V
    .locals 3

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private final _skipWSOrEnd()I
    .locals 8

    const/16 v7, 0x23

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x9

    const/16 v3, 0x20

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_eofAsNextChar()I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    if-ne v0, v7, :cond_0

    :cond_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_4

    if-ne v0, v5, :cond_6

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    :cond_4
    :goto_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_8

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_5

    if-ne v0, v7, :cond_0

    :cond_5
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_0

    :cond_6
    if-ne v0, v6, :cond_7

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    :cond_7
    if-eq v0, v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_1

    :cond_8
    if-eq v0, v3, :cond_4

    if-ne v0, v5, :cond_9

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_1

    :cond_9
    if-ne v0, v6, :cond_a

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_1

    :cond_a
    if-eq v0, v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd2()I

    move-result v0

    goto :goto_0
.end method

.method private _skipWSOrEnd2()I
    .locals 4

    const/16 v3, 0x20

    :cond_0
    :goto_0
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_eofAsNextChar()I

    move-result v0

    :cond_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    if-le v0, v3, :cond_4

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComment()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipYAMLComment()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_4
    if-eq v0, v3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    :cond_5
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwInvalidSpace(I)V

    goto :goto_0
.end method

.method private _skipYAMLComment()Z
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_YAML_COMMENTS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipLine()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final _updateLocation()V
    .locals 6

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputTotal:J

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    return-void
.end method

.method private final _updateNameLocation()V
    .locals 4

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v2, v0

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameStartOffset:J

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameStartRow:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameStartCol:I

    return-void
.end method

.method private _verifyNLZ2()C
    .locals 5

    const/16 v4, 0x39

    const/16 v1, 0x30

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    if-lt v0, v1, :cond_2

    if-le v0, v4, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NUMERIC_LEADING_ZEROS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportInvalidNumber(Ljava/lang/String;)V

    :cond_4
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    if-ne v0, v1, :cond_0

    :cond_5
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_6
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    if-lt v0, v1, :cond_7

    if-le v0, v4, :cond_8

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    if-eq v0, v1, :cond_5

    goto :goto_0
.end method

.method private final _verifyNoLeadingZeroes()C
    .locals 3

    const/16 v0, 0x30

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    if-lt v1, v0, :cond_0

    const/16 v2, 0x39

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyNLZ2()C

    move-result v0

    goto :goto_0
.end method

.method private final _verifyRootSpace(I)V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sparse-switch p1, :sswitch_data_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMissingRootWS(I)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipCR()V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected _closeInput()V
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/io/IOContext;->isResourceManaged()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->AUTO_CLOSE_SOURCE:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    :cond_2
    return-void
.end method

.method protected _decodeEscaped()C
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v2

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleUnrecognizedCharacterEscape(C)C

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_5
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_6
    move v0, v1

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    invoke-static {v2}, Lcom/fasterxml/jackson/core/io/CharTypes;->charToHex(I)I

    move-result v3

    if-gez v3, :cond_2

    const-string/jumbo v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    int-to-char v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2f -> :sswitch_0
        0x5c -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6e -> :sswitch_3
        0x72 -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method protected final _finishString()V
    .locals 6

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v0, v1, :cond_2

    sget-object v2, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    array-length v3, v2

    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v4, v4, v0

    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    if-eqz v5, :cond_1

    const/16 v1, 0x22

    if-ne v4, v1, :cond_2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    sub-int v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithCopy([CII)V

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString2()V

    goto :goto_0
.end method

.method protected _finishString2()V
    .locals 7

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    sget-object v4, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    array-length v5, v4

    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    if-ge v2, v5, :cond_2

    aget v3, v4, v2

    if-eqz v3, :cond_2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    return-void

    :cond_1
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    :cond_2
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected final _getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->id()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected _handleApos()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 7

    const/16 v6, 0x5c

    const/16 v5, 0x27

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->getCurrentSegmentSize()I

    move-result v0

    :goto_0
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v2, v2, v3

    if-gt v2, v6, :cond_1

    if-ne v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    move-result v2

    :cond_1
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_4

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v1

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    add-int/lit8 v0, v3, 0x1

    aput-char v2, v1, v3

    goto :goto_0

    :cond_2
    if-gt v2, v5, :cond_1

    if-ne v2, v5, :cond_3

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "string value"

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2
.end method

.method protected _handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    const/4 v7, 0x3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const/16 v0, 0x49

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v6, v1, 0x1

    iput v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char p1, v0, v1

    const/16 v0, 0x4e

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_1

    const-string/jumbo v0, "-INF"

    :goto_0
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    const-string/jumbo v0, "+INF"

    goto :goto_0

    :cond_2
    move-wide v2, v4

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-string/jumbo v0, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_6

    const-string/jumbo v0, "-Infinity"

    :goto_4
    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p2, :cond_7

    :goto_5
    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "+Infinity"

    goto :goto_4

    :cond_7
    move-wide v2, v4

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Non-standard token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected _handleOddName(I)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x27

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseAposName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_UNQUOTED_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->getInputCodeLatin1JsNames()[I

    move-result-object v2

    array-length v3, v2

    if-ge p1, v3, :cond_5

    aget v0, v2, p1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string/jumbo v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v4, :cond_8

    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    if-ge v5, v3, :cond_6

    aget v6, v2, v5

    if-eqz v6, :cond_7

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    goto :goto_1

    :cond_6
    int-to-char v6, v5

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-nez v6, :cond_7

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v4, :cond_3

    :cond_8
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v3, -0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v3, v0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName2(II[I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "(\'true\', \'false\' or \'null\')"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_SINGLE_QUOTES:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleApos()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "NaN"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "NaN"

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Non-standard token \'NaN\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "Infinity"

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchToken(Ljava/lang/String;I)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$Feature;->ALLOW_NON_NUMERIC_NUMBERS:Lcom/fasterxml/jackson/core/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "Infinity"

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {p0, v0, v2, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetAsNaN(Ljava/lang/String;D)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "Non-standard token \'Infinity\': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOFInValue()V

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x2b -> :sswitch_3
        0x49 -> :sswitch_2
        0x4e -> :sswitch_1
    .end sparse-switch
.end method

.method protected final _matchToken(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    :cond_2
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 p2, p2, 0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7d

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _parseAposName()Ljava/lang/String;
    .locals 8

    const/16 v7, 0x27

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v2, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    array-length v4, v3

    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v5, v5, v1

    if-ne v5, v7, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    if-eqz v6, :cond_3

    :cond_2
    :goto_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v2, v0, v7}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_0

    goto :goto_1
.end method

.method protected final _parseName()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x22

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_hashSeed:I

    sget-object v2, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_icLatin1:[I

    :goto_0
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    aget-char v3, v3, v1

    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget v4, v2, v3

    if-eqz v4, :cond_0

    if-ne v3, v5, :cond_1

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    sub-int/2addr v1, v2

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->findSymbol([CIII)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    mul-int/lit8 v0, v0, 0x21

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v2, v0, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName2(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected final _parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 9

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v4, 0x1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v0, -0x1

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v6, :cond_0

    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v0, v1, v0

    if-gt v0, v8, :cond_1

    if-ge v0, v7, :cond_2

    :cond_1
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleInvalidNumberStart(IZ)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_3

    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v5, v4

    move v0, v3

    :goto_1
    if-lt v0, v6, :cond_4

    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v1, v1, v0

    if-lt v1, v7, :cond_5

    if-le v1, v8, :cond_7

    :cond_5
    const/16 v0, 0x2e

    if-eq v1, v0, :cond_6

    const/16 v0, 0x65

    if-eq v1, v0, :cond_6

    const/16 v0, 0x45

    if-ne v1, v0, :cond_8

    :cond_6
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFloat(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    :cond_9
    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v1, v3, v2, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected final _parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 8

    const/16 v7, 0x30

    const/4 v4, 0x0

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v3, -0x1

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-ne p1, v7, :cond_0

    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x1

    move v0, v3

    :goto_1
    if-lt v0, v6, :cond_1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-direct {p0, v4, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNumber2(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v1, v1, v0

    if-lt v1, v7, :cond_2

    const/16 v0, 0x39

    if-le v1, v0, :cond_4

    :cond_2
    const/16 v0, 0x2e

    if-eq v1, v0, :cond_3

    const/16 v0, 0x65

    if-eq v1, v0, :cond_3

    const/16 v0, 0x45

    if-ne v1, v0, :cond_5

    :cond_3
    iput v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseFloat(IIIZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v0, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inRoot()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_verifyRootSpace(I)V

    :cond_6
    sub-int/2addr v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    invoke-virtual {v1, v3, v2, v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->resetWithShared([CII)V

    invoke-virtual {p0, v4, v5}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->resetInt(ZI)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected _releaseBuffers()V
    .locals 2

    invoke-super {p0}, Lcom/fasterxml/jackson/core/base/ParserBase;->_releaseBuffers()V

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_symbols:Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->release()V

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_bufferRecyclable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->releaseTokenBuffer([C)V

    :cond_0
    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "\'null\', \'true\', \'false\' or NaN"

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected _reportInvalidToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unrecognized token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\': was expecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportError(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v1, v1, v2

    invoke-static {v1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected final _skipCR()V
    .locals 2

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    :cond_1
    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    return-void
.end method

.method protected final _skipString()V
    .locals 7

    const/16 v6, 0x5c

    const/16 v5, 0x22

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    :goto_0
    if-lt v1, v0, :cond_1

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ": was expecting closing quote for a string value"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    :cond_1
    add-int/lit8 v2, v1, 0x1

    aget-char v1, v3, v1

    if-gt v1, v6, :cond_4

    if-ne v1, v6, :cond_2

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_decodeEscaped()C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    goto :goto_0

    :cond_2
    if-gt v1, v5, :cond_4

    if-ne v1, v5, :cond_3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    return-void

    :cond_3
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    const-string/jumbo v4, "string value"

    invoke-virtual {p0, v1, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_throwUnquotedSpace(ILjava/lang/String;)V

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 10

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v0, v1

    add-int/lit8 v7, v0, 0x1

    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_ioContext:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getSourceReference()Ljava/lang/Object;

    move-result-object v1

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    int-to-long v8, v6

    add-long/2addr v4, v8

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRow:I

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    return-object v0
.end method

.method protected getNextChar(Ljava/lang/String;)C
    .locals 3

    iget v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->loadMore()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportInvalidEOF(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    aget-char v0, v0, v1

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_getText2(Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValueAsString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getValueAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_finishString()V

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/fasterxml/jackson/core/base/ParserBase;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadMore()Z
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputProcessed:J

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currInputRowStart:I

    iget-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameStartOffset:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nameStartOffset:J

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputBuffer:[C

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-lez v1, :cond_1

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputPtr:I

    iput v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_closeInput()V

    if-nez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reader returned 0 characters when trying to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_inputEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x7d

    const/16 v3, 0x5d

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextAfterName()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_numTypesValid:I

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipString()V

    :cond_1
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipWSOrEnd()I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->close()V

    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    move-object v0, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_binaryValue:[B

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_updateLocation()V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inArray()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_6

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_updateLocation()V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportMismatchedEndMarker(IC)V

    :cond_5
    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->clearAndGetParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->expectComma()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipComma(I)I

    move-result v0

    :cond_7
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->inObject()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_updateNameLocation()V

    const/16 v2, 0x22

    if-ne v0, v2, :cond_9

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_skipColon()I

    move-result v0

    :cond_8
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_updateLocation()V

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddValue(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    :goto_2
    if-eqz v1, :cond_c

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_nextToken:Lcom/fasterxml/jackson/core/JsonToken;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_handleOddName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenIncomplete:Z

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :sswitch_1
    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    :cond_a
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :sswitch_2
    if-nez v1, :cond_b

    iget-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    iget v2, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputRow:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_tokenInputCol:I

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;

    :cond_b
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "expected a value"

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_reportUnexpectedChar(ILjava/lang/String;)V

    :sswitch_4
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchTrue()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :sswitch_5
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchFalse()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :sswitch_6
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_matchNull()V

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parseNegNumber()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :sswitch_8
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_parsePosNumber(I)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_2

    :cond_c
    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2d -> :sswitch_7
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x38 -> :sswitch_8
        0x39 -> :sswitch_8
        0x5b -> :sswitch_1
        0x5d -> :sswitch_3
        0x66 -> :sswitch_5
        0x6e -> :sswitch_6
        0x74 -> :sswitch_4
        0x7b -> :sswitch_2
        0x7d -> :sswitch_3
    .end sparse-switch
.end method
