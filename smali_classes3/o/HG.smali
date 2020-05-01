.class public Lo/HG;
.super Lo/HF;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HF;",
        "Lo/IntToLongFunction<",
        "Lo/Hz;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HG;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HG;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HG;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HG;",
            "Lo/Hz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/HF;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/HG;->c(I)Lo/HG;

    move-result-object p1

    return-object p1
.end method

.method public a(ILo/Hz;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/HG;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HF;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/Hz;

    invoke-virtual {p0, p1, p2, p3}, Lo/HG;->b(Lo/Consumer;Lo/Hz;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lo/HF;->a(Lo/OfPrimitive;)V

    .line 39
    invoke-virtual {p0, p1}, Lo/HG;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/HG;->d(J)Lo/HG;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/HG;
    .locals 0

    .line 200
    invoke-super {p0, p1}, Lo/HF;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Hz;

    invoke-virtual {p0, p1, p2}, Lo/HG;->a(ILo/Hz;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1, p2}, Lo/HG;->b(Lo/Hz;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/Hz;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 45
    invoke-virtual {p0, p1, p3}, Lo/HG;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/Hz;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lo/HF;->e(Lo/TimeUnit;)V

    .line 73
    iget-object v0, p0, Lo/HG;->h:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Lo/Hz;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/HG;->g:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 53
    invoke-virtual {p0, p1, p2}, Lo/HG;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/HG;->b(Ljava/lang/CharSequence;)Lo/HG;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/HG;->e(Lo/BiConsumer$Activity;)Lo/HG;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/HG;
    .locals 0

    .line 219
    invoke-super {p0, p1}, Lo/HF;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Hz;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HG;->e(FFIILo/Hz;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Hz;

    invoke-virtual {p0, p1, p2}, Lo/HG;->a(ILo/Hz;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HG;->b(Lo/Hz;)V

    return-void
.end method

.method public d(J)Lo/HG;
    .locals 0

    .line 182
    invoke-super {p0, p1, p2}, Lo/HF;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;)Lo/HG;
    .locals 0

    .line 157
    invoke-virtual {p0}, Lo/HG;->i()V

    .line 158
    invoke-super {p0, p1}, Lo/HF;->b(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/HG;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lo/HG;->i()V

    .line 137
    invoke-super {p0, p1}, Lo/HF;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Hz;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HG;->e(FFIILo/Hz;)V

    return-void
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/HG;
    .locals 0

    .line 226
    invoke-super {p0, p1}, Lo/HF;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Z)Lo/HG;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/HG;->i()V

    .line 148
    invoke-super {p0, p1}, Lo/HF;->c(Z)V

    return-object p0
.end method

.method public e(FFIILo/Hz;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/HG;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 117
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 119
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HF;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Hz;

    invoke-virtual {p0, p1}, Lo/HG;->b(Lo/Hz;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Lo/HG;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 270
    :cond_1
    invoke-super {p0, p1}, Lo/HF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 273
    :cond_2
    check-cast p1, Lo/HG;

    .line 274
    iget-object v1, p0, Lo/HG;->g:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HG;->g:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 277
    :cond_5
    iget-object v1, p0, Lo/HG;->h:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HG;->h:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 280
    :cond_8
    iget-object v1, p0, Lo/HG;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HG;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 283
    :cond_b
    iget-object v1, p0, Lo/HG;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HG;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 286
    :cond_e
    invoke-virtual {p0}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 289
    :cond_10
    invoke-virtual {p0}, Lo/HG;->q()Z

    move-result v1

    invoke-virtual {p1}, Lo/HG;->q()Z

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 292
    :cond_11
    invoke-virtual {p0}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v1

    invoke-virtual {p1}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_12
    invoke-virtual {p1}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v1

    if-eqz v1, :cond_13

    :goto_9
    return v2

    .line 295
    :cond_13
    invoke-virtual {p0}, Lo/HG;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HG;->l()I

    move-result p1

    if-eq v1, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 303
    invoke-super {p0}, Lo/HF;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    iget-object v1, p0, Lo/HG;->g:Lo/AEADBadTagException;

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

    .line 305
    iget-object v1, p0, Lo/HG;->h:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    iget-object v1, p0, Lo/HG;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    iget-object v1, p0, Lo/HG;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    invoke-virtual {p0}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    invoke-virtual {p0}, Lo/HG;->q()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 310
    invoke-virtual {p0}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 311
    invoke-virtual {p0}, Lo/HG;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayButtonModel_{videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lo/HG;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayButtonLabels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0}, Lo/HG;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lo/HG;->p()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$Actions;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p0}, Lo/HG;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-super {p0}, Lo/HF;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
