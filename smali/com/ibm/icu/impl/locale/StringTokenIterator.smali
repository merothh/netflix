.class public Lcom/ibm/icu/impl/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private _dlms:Ljava/lang/String;

.field private _done:Z

.field private _end:I

.field private _start:I

.field private _text:Ljava/lang/String;

.field private _token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->setStart(I)Lcom/ibm/icu/impl/locale/StringTokenIterator;

    return-void
.end method

.method private nextDelimiter(I)I
    .locals 3

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    .line 85
    :goto_1
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return p1
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public currentEnd()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    return v0
.end method

.method public currentStart()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 61
    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_done:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49
    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    .line 50
    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    .line 51
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    iget v2, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    iput v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_done:Z

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public setStart(I)Lcom/ibm/icu/impl/locale/StringTokenIterator;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 68
    iput p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    .line 69
    iget p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    .line 70
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iget v0, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_start:I

    iget v1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_end:I

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/ibm/icu/impl/locale/StringTokenIterator;->_done:Z

    return-object p0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
