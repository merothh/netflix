.class public Lo/HJ;
.super Lo/HK;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HK;",
        "Lo/IntToLongFunction<",
        "Lo/HK$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HJ;",
            "Lo/HK$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HJ;",
            "Lo/HK$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HJ;",
            "Lo/HK$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HJ;",
            "Lo/HK$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/HK;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/HJ;->b(I)Lo/HJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/HJ;->e(Lo/Consumer;Lo/HK$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/HK;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/HJ;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/HJ;->e(J)Lo/HJ;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/HJ;
    .locals 0

    .line 210
    invoke-super {p0, p1}, Lo/HK;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(FFIILo/HK$TaskDescription;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lo/HJ;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 118
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 120
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HK;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HJ;->b(ILo/HK$TaskDescription;)V

    return-void
.end method

.method public b(ILo/HK$TaskDescription;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/HJ;->i:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HK;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HJ;->d(Lo/HK$TaskDescription;I)V

    return-void
.end method

.method public b(Lo/HK$TaskDescription;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/HK;->b(Lo/HK$TaskDescription;)V

    .line 74
    iget-object v0, p0, Lo/HJ;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/HJ;->e(Ljava/lang/CharSequence;)Lo/HJ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/HJ;->d(Lo/BiConsumer$Activity;)Lo/HJ;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/HJ;
    .locals 0

    .line 161
    invoke-virtual {p0}, Lo/HJ;->i()V

    .line 162
    invoke-super {p0, p1}, Lo/HK;->d(I)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/HK$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HJ;->b(FFIILo/HK$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HJ;->b(ILo/HK$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HJ;->b(Lo/HK$TaskDescription;)V

    return-void
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)Lo/HJ;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lo/HJ;->i()V

    .line 138
    invoke-super {p0, p1}, Lo/HK;->a(Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lo/HJ;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lo/HJ;->i()V

    .line 149
    invoke-super {p0, p1}, Lo/HK;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/HJ;
    .locals 0

    .line 217
    invoke-super {p0, p1}, Lo/HK;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/CipherSpi;)Lo/HJ;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CipherSpi<",
            "Lo/HJ;",
            "Lo/HK$TaskDescription;",
            ">;)",
            "Lo/HJ;"
        }
    .end annotation

    .line 109
    invoke-virtual {p0}, Lo/HJ;->i()V

    .line 110
    iput-object p1, p0, Lo/HJ;->i:Lo/CipherSpi;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/HK$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HJ;->b(FFIILo/HK$TaskDescription;)V

    return-void
.end method

.method public d(Lo/HK$TaskDescription;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/HJ;->g:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/HJ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(J)Lo/HJ;
    .locals 0

    .line 173
    invoke-super {p0, p1, p2}, Lo/HK;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/HJ;
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lo/HK;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/HK$TaskDescription;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/HJ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/HK$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HJ;->b(Lo/HK$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 257
    :cond_0
    instance-of v1, p1, Lo/HJ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 260
    :cond_1
    invoke-super {p0, p1}, Lo/HK;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 263
    :cond_2
    check-cast p1, Lo/HJ;

    .line 264
    iget-object v1, p0, Lo/HJ;->g:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HJ;->g:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 267
    :cond_5
    iget-object v1, p0, Lo/HJ;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HJ;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 270
    :cond_8
    iget-object v1, p0, Lo/HJ;->i:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HJ;->i:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 273
    :cond_b
    iget-object v1, p0, Lo/HJ;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HJ;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 276
    :cond_e
    invoke-virtual {p0}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    invoke-virtual {p1}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 279
    :cond_10
    invoke-virtual {p0}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 282
    :cond_12
    invoke-virtual {p0}, Lo/HJ;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HJ;->l()I

    move-result p1

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 290
    invoke-super {p0}, Lo/HK;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 291
    iget-object v1, p0, Lo/HJ;->g:Lo/AEADBadTagException;

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

    .line 292
    iget-object v1, p0, Lo/HJ;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 293
    iget-object v1, p0, Lo/HJ;->i:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 294
    iget-object v1, p0, Lo/HJ;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 295
    invoke-virtual {p0}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 296
    invoke-virtual {p0}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 297
    invoke-virtual {p0}, Lo/HJ;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StillImageModel_{aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p0}, Lo/HJ;->q()Lcom/netflix/mediaclient/servicemgr/interface_/ExtrasFeedItem$AspectRatio;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Lo/HJ;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lo/HJ;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-super {p0}, Lo/HK;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
