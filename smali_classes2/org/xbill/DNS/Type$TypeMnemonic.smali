.class Lorg/xbill/DNS/Type$TypeMnemonic;
.super Lorg/xbill/DNS/Mnemonic;
.source "Type.java"


# instance fields
.field private objects:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 206
    const-string/jumbo v0, "Type"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    .line 207
    const-string/jumbo v0, "TYPE"

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/Type$TypeMnemonic;->setPrefix(Ljava/lang/String;)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Type$TypeMnemonic;->objects:Ljava/util/HashMap;

    .line 209
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Lorg/xbill/DNS/Record;)V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/xbill/DNS/Type$TypeMnemonic;->objects:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/xbill/DNS/Mnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void
.end method

.method public check(I)V
    .locals 0

    .prologue
    .line 219
    invoke-static {p1}, Lorg/xbill/DNS/Type;->check(I)V

    .line 220
    return-void
.end method

.method public getProto(I)Lorg/xbill/DNS/Record;
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Type$TypeMnemonic;->check(I)V

    .line 225
    iget-object v0, p0, Lorg/xbill/DNS/Type$TypeMnemonic;->objects:Ljava/util/HashMap;

    invoke-static {p1}, Lorg/xbill/DNS/Type$TypeMnemonic;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    return-object v0
.end method
