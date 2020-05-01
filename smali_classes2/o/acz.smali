.class public Lo/acz;
.super Lo/acw;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/acu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/acw;",
        "Lo/IntToLongFunction<",
        "Lo/acw$Activity;",
        ">;",
        "Lo/acu;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/acz;",
            "Lo/acw$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/acz;",
            "Lo/acw$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/acz;",
            "Lo/acw$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/acz;",
            "Lo/acw$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/acw;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acz;->d(I)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/acz;
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lo/acw;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/acw$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/acz;->c(Lo/Consumer;Lo/acw$Activity;I)V

    return-void
.end method

.method public a(Lo/acw$Activity;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/acw;->a(Lo/acw$Activity;)V

    .line 66
    iget-object v0, p0, Lo/acz;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/acw$Activity;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/acz;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/acz;->c(J)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)Lo/acu;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acz;->d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public b(FFIILo/acw$Activity;)V
    .locals 7

    .line 110
    iget-object v0, p0, Lo/acz;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 111
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 113
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/acw;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/acw$Activity;

    invoke-virtual {p0, p1, p2}, Lo/acz;->e(ILo/acw$Activity;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1, p2}, Lo/acz;->a(Lo/acw$Activity;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acz;->a(Ljava/lang/CharSequence;)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acz;->d(Lo/BiConsumer$Activity;)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/acz;
    .locals 0

    .line 154
    invoke-super {p0, p1, p2}, Lo/acw;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lio/reactivex/subjects/BehaviorSubject;)Lo/acz;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lo/acz;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lo/acz;->i()V

    .line 143
    iput-object p1, p0, Lo/acw;->c:Lio/reactivex/subjects/BehaviorSubject;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/acw$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/acz;->b(FFIILo/acw$Activity;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/acw$Activity;

    invoke-virtual {p0, p1, p2}, Lo/acz;->e(ILo/acw$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1}, Lo/acz;->a(Lo/acw$Activity;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/acw$Activity;I)V
    .locals 0

    return-void
.end method

.method public d(I)Lo/acz;
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lo/acw;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;)Lo/acz;
    .locals 0

    .line 130
    invoke-virtual {p0}, Lo/acz;->i()V

    .line 131
    iput-object p1, p0, Lo/acw;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/acz;
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lo/acw;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/acw$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/acz;->b(FFIILo/acw$Activity;)V

    return-void
.end method

.method public synthetic e(Lio/reactivex/subjects/BehaviorSubject;)Lo/acu;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acz;->c(Lio/reactivex/subjects/BehaviorSubject;)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/acu;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/acz;->a(Ljava/lang/CharSequence;)Lo/acz;

    move-result-object p1

    return-object p1
.end method

.method public e(ILo/acw$Activity;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/acz;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lo/acw;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/acw$Activity;

    invoke-virtual {p0, p1}, Lo/acz;->a(Lo/acw$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 240
    :cond_0
    instance-of v1, p1, Lo/acz;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 243
    :cond_1
    invoke-super {p0, p1}, Lo/acw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 246
    :cond_2
    check-cast p1, Lo/acz;

    .line 247
    iget-object v1, p0, Lo/acz;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/acz;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 250
    :cond_5
    iget-object v1, p0, Lo/acz;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/acz;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 253
    :cond_8
    iget-object v1, p0, Lo/acz;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/acz;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 256
    :cond_b
    iget-object v1, p0, Lo/acz;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/acz;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 259
    :cond_e
    iget-object v1, p0, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    iget-object v3, p1, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 262
    :cond_10
    iget-object v1, p0, Lo/acz;->c:Lio/reactivex/subjects/BehaviorSubject;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_9

    :cond_11
    const/4 v1, 0x0

    :goto_9
    iget-object p1, p1, Lo/acz;->c:Lio/reactivex/subjects/BehaviorSubject;

    if-nez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_a

    :cond_12
    const/4 p1, 0x0

    :goto_a
    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 270
    invoke-super {p0}, Lo/acw;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Lo/acz;->a:Lo/AEADBadTagException;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    iget-object v1, p0, Lo/acz;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    iget-object v1, p0, Lo/acz;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 274
    iget-object v1, p0, Lo/acz;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 276
    iget-object v1, p0, Lo/acz;->c:Lio/reactivex/subjects/BehaviorSubject;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method protected k()Lo/acw$Activity;
    .locals 1

    .line 220
    new-instance v0, Lo/acw$Activity;

    invoke-direct {v0}, Lo/acw$Activity;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/acz;->k()Lo/acw$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProductChoiceModel_{productChoiceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/acz;->b:Lcom/netflix/mediaclient/service/webclient/model/leafs/ProductChoice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", planSelectionClicks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/acz;->c:Lio/reactivex/subjects/BehaviorSubject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-super {p0}, Lo/acw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
