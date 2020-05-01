.class public Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
.super Ljava/lang/Exception;
.source ""


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 15
    iput p1, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I

    .line 23
    iput p2, p0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->_index:I

    return-void
.end method
