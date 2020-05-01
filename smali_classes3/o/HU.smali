.class public Lo/HU;
.super Lo/HV;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HV;",
        "Lo/IntToLongFunction<",
        "Lo/HV$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HU;",
            "Lo/HV$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HU;",
            "Lo/HV$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HU;",
            "Lo/HV$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HU;",
            "Lo/HV$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/HV;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/HU;->b(I)Lo/HU;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/HU;
    .locals 0

    .line 243
    invoke-super {p0, p1}, Lo/HV;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(ILo/HV$StateListAnimator;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/HU;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HV;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/HU;->b(Lo/Consumer;Lo/HV$StateListAnimator;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lo/HV;->a(Lo/OfPrimitive;)V

    .line 43
    invoke-virtual {p0, p1}, Lo/HU;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/HU;->c(J)Lo/HU;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/HU;
    .locals 0

    .line 236
    invoke-super {p0, p1}, Lo/HV;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(FFIILo/HV$StateListAnimator;)V
    .locals 7

    .line 120
    iget-object v0, p0, Lo/HU;->o:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 121
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 123
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HV;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HU;->a(ILo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HU;->d(Lo/HV$StateListAnimator;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/HV$StateListAnimator;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 49
    invoke-virtual {p0, p1, p3}, Lo/HU;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/HV$StateListAnimator;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lo/HV;->b(Lo/HV$StateListAnimator;)V

    .line 77
    iget-object v0, p0, Lo/HU;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/HU;->d(Ljava/lang/CharSequence;)Lo/HU;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/HU;->a(Lo/BiConsumer$Activity;)Lo/HU;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/HU;
    .locals 0

    .line 187
    invoke-virtual {p0}, Lo/HU;->i()V

    .line 188
    invoke-super {p0, p1}, Lo/HV;->d(I)V

    return-object p0
.end method

.method public c(J)Lo/HU;
    .locals 0

    .line 199
    invoke-super {p0, p1, p2}, Lo/HV;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)Lo/HU;
    .locals 0

    .line 151
    invoke-virtual {p0}, Lo/HU;->i()V

    .line 152
    invoke-super {p0, p1}, Lo/HV;->d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)V

    return-object p0
.end method

.method public c(Lo/GK;)Lo/HU;
    .locals 0

    .line 174
    invoke-virtual {p0}, Lo/HU;->i()V

    .line 175
    iput-object p1, p0, Lo/HV;->j:Lo/GK;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/HV$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HU;->b(FFIILo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 27
    check-cast p2, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/HU;->a(ILo/HV$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HU;->b(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/HU;
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lo/HV;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/Integer;)Lo/HU;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lo/HU;->i()V

    .line 163
    invoke-super {p0, p1}, Lo/HV;->e(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/HV$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HU;->b(FFIILo/HV$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/HV$StateListAnimator;I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/HU;->g:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 57
    invoke-virtual {p0, p1, p2}, Lo/HU;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lo/HU;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lo/HU;->i()V

    .line 141
    invoke-super {p0, p1}, Lo/HV;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 27
    check-cast p1, Lo/HV$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/HU;->b(Lo/HV$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 285
    :cond_0
    instance-of v1, p1, Lo/HU;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 288
    :cond_1
    invoke-super {p0, p1}, Lo/HV;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 291
    :cond_2
    check-cast p1, Lo/HU;

    .line 292
    iget-object v1, p0, Lo/HU;->g:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HU;->g:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 295
    :cond_5
    iget-object v1, p0, Lo/HU;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HU;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 298
    :cond_8
    iget-object v1, p0, Lo/HU;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HU;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 301
    :cond_b
    iget-object v1, p0, Lo/HU;->o:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HU;->o:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 304
    :cond_e
    invoke-virtual {p0}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 307
    :cond_10
    invoke-virtual {p0}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    invoke-virtual {p1}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 310
    :cond_12
    invoke-virtual {p0}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 313
    :cond_14
    iget-object v1, p0, Lo/HU;->j:Lo/GK;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    :goto_b
    iget-object v3, p1, Lo/HU;->j:Lo/GK;

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    :goto_c
    if-eq v1, v3, :cond_17

    return v2

    .line 316
    :cond_17
    invoke-virtual {p0}, Lo/HU;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HU;->l()I

    move-result p1

    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 324
    invoke-super {p0}, Lo/HV;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 325
    iget-object v1, p0, Lo/HU;->g:Lo/AEADBadTagException;

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

    .line 326
    iget-object v1, p0, Lo/HU;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 327
    iget-object v1, p0, Lo/HU;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 328
    iget-object v1, p0, Lo/HU;->o:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    invoke-virtual {p0}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    invoke-virtual {p0}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    invoke-virtual {p0}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget-object v1, p0, Lo/HU;->j:Lo/GK;

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    invoke-virtual {p0}, Lo/HU;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoViewModel_{playableId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0}, Lo/HU;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p0}, Lo/HU;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {p0}, Lo/HU;->r()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extrasFeedViewModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/HU;->j:Lo/GK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lo/HU;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-super {p0}, Lo/HV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
