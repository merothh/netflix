.class public Lcom/ibm/icu/impl/locale/Extension;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private _key:C

.field protected _value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(C)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-char p1, p0, Lcom/ibm/icu/impl/locale/Extension;->_key:C

    return-void
.end method

.method constructor <init>(CLjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-char p1, p0, Lcom/ibm/icu/impl/locale/Extension;->_key:C

    .line 22
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lcom/ibm/icu/impl/locale/Extension;->_key:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
