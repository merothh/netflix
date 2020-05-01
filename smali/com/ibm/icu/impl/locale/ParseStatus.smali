.class public Lcom/ibm/icu/impl/locale/ParseStatus;
.super Ljava/lang/Object;
.source ""


# instance fields
.field _errorIndex:I

.field _errorMsg:Ljava/lang/String;

.field _parseLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isError()Z
    .locals 1

    .line 23
    iget v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    return-void
.end method
