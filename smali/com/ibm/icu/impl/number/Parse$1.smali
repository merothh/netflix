.class final Lcom/ibm/icu/impl/number/Parse$1;
.super Ljava/lang/ThreadLocal;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/number/Parse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lcom/ibm/icu/impl/number/Parse$ParserState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 990
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/ibm/icu/impl/number/Parse$ParserState;
    .locals 1

    .line 993
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParserState;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Parse$ParserState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 990
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Parse$1;->initialValue()Lcom/ibm/icu/impl/number/Parse$ParserState;

    move-result-object v0

    return-object v0
.end method
