.class public Lo/ZX;
.super Lo/ZY;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/ZZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/ZY;",
        "Lo/IntToLongFunction<",
        "Lo/aal$Activity;",
        ">;",
        "Lo/ZZ;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/ZY;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->e(I)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/ZX;
    .locals 0

    .line 227
    invoke-virtual {p0}, Lo/ZX;->i()V

    .line 228
    iput-object p1, p0, Lo/ZY;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object p0
.end method

.method public synthetic a(Ljava/lang/String;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->j(Ljava/lang/String;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/LongStream;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->e(Lo/LongStream;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public a(FFIILo/aal$Activity;)V
    .locals 7

    .line 122
    iget-object v0, p0, Lo/ZX;->o:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 123
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 125
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/ZY;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/aal$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/ZX;->b(Lo/Consumer;Lo/aal$Activity;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Lo/ZY;->a(Lo/OfPrimitive;)V

    .line 42
    invoke-virtual {p0, p1}, Lo/ZX;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public a(Lo/aal$Activity;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lo/ZY;->e(Lo/TimeUnit;)V

    .line 77
    iget-object v0, p0, Lo/ZX;->g:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/ZX;->e(J)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->e(Ljava/lang/CharSequence;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->c(Ljava/lang/String;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/aal$Activity;

    invoke-virtual {p0, p1, p2}, Lo/ZX;->e(ILo/aal$Activity;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1, p2}, Lo/ZX;->b(Lo/aal$Activity;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/aal$Activity;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 48
    invoke-virtual {p0, p1, p3}, Lo/ZX;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/aal$Activity;I)V
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ZX;->j:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 57
    invoke-virtual {p0, p1, p2}, Lo/ZX;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->e(Ljava/lang/CharSequence;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->e(Lo/BiConsumer$Activity;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/ZX;
    .locals 0

    .line 193
    invoke-virtual {p0}, Lo/ZX;->i()V

    .line 194
    iput-object p1, p0, Lo/ZY;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lo/LongStream;)Lo/ZX;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;)",
            "Lo/ZX;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lo/ZX;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 172
    invoke-super {p0, p1}, Lo/ZY;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/ZY;->a(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/aal$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/ZX;->a(FFIILo/aal$Activity;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p2, Lo/aal$Activity;

    invoke-virtual {p0, p1, p2}, Lo/ZX;->e(ILo/aal$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1}, Lo/ZX;->a(Lo/aal$Activity;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/ZX;
    .locals 0

    .line 204
    invoke-virtual {p0}, Lo/ZX;->i()V

    .line 205
    iput-object p1, p0, Lo/ZY;->a:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lo/LongStream;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->c(Lo/LongStream;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/aal$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/ZX;->a(FFIILo/aal$Activity;)V

    return-void
.end method

.method public e(I)Lo/ZX;
    .locals 0

    .line 277
    invoke-super {p0, p1}, Lo/ZY;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(J)Lo/ZX;
    .locals 0

    .line 239
    invoke-super {p0, p1, p2}, Lo/ZY;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/ZX;
    .locals 0

    .line 257
    invoke-super {p0, p1}, Lo/ZY;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/ZX;
    .locals 0

    .line 284
    invoke-super {p0, p1}, Lo/ZY;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/LongStream;)Lo/ZX;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/ZX;",
            "Lo/aal$Activity;",
            ">;)",
            "Lo/ZX;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lo/ZX;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 147
    invoke-super {p0, p1}, Lo/ZY;->d(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/ZY;->d(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic e(Ljava/lang/String;)Lo/ZZ;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/ZX;->d(Ljava/lang/String;)Lo/ZX;

    move-result-object p1

    return-object p1
.end method

.method public e(ILo/aal$Activity;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/ZX;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 102
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ZY;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p1, Lo/aal$Activity;

    invoke-virtual {p0, p1}, Lo/ZX;->a(Lo/aal$Activity;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 332
    :cond_0
    instance-of v1, p1, Lo/ZX;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 335
    :cond_1
    invoke-super {p0, p1}, Lo/ZY;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 338
    :cond_2
    check-cast p1, Lo/ZX;

    .line 339
    iget-object v1, p0, Lo/ZX;->j:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/ZX;->j:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 342
    :cond_5
    iget-object v1, p0, Lo/ZX;->g:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/ZX;->g:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 345
    :cond_8
    iget-object v1, p0, Lo/ZX;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/ZX;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 348
    :cond_b
    iget-object v1, p0, Lo/ZX;->o:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/ZX;->o:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 351
    :cond_e
    invoke-virtual {p0}, Lo/ZX;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/ZX;->k()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eq v1, v3, :cond_11

    return v2

    .line 354
    :cond_11
    invoke-virtual {p0}, Lo/ZX;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lo/ZX;->l()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_14

    return v2

    .line 357
    :cond_14
    iget-object v1, p0, Lo/ZX;->b:Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lo/ZX;->b:Ljava/lang/String;

    iget-object v3, p1, Lo/ZX;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_c

    :cond_15
    iget-object v1, p1, Lo/ZX;->b:Ljava/lang/String;

    if-eqz v1, :cond_16

    :goto_c
    return v2

    .line 360
    :cond_16
    iget-object v1, p0, Lo/ZX;->a:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lo/ZX;->a:Ljava/lang/String;

    iget-object v3, p1, Lo/ZX;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_d

    :cond_17
    iget-object v1, p1, Lo/ZX;->a:Ljava/lang/String;

    if-eqz v1, :cond_18

    :goto_d
    return v2

    .line 363
    :cond_18
    iget-object v1, p0, Lo/ZX;->c:Ljava/lang/String;

    if-nez v1, :cond_19

    const/4 v1, 0x1

    goto :goto_e

    :cond_19
    const/4 v1, 0x0

    :goto_e
    iget-object v3, p1, Lo/ZX;->c:Ljava/lang/String;

    if-nez v3, :cond_1a

    const/4 v3, 0x1

    goto :goto_f

    :cond_1a
    const/4 v3, 0x0

    :goto_f
    if-eq v1, v3, :cond_1b

    return v2

    .line 366
    :cond_1b
    iget-object v1, p0, Lo/ZX;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_10

    :cond_1c
    const/4 v1, 0x0

    :goto_10
    iget-object p1, p1, Lo/ZX;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez p1, :cond_1d

    const/4 p1, 0x1

    goto :goto_11

    :cond_1d
    const/4 p1, 0x0

    :goto_11
    if-eq v1, p1, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method protected h()Lo/aal$Activity;
    .locals 1

    .line 308
    new-instance v0, Lo/aal$Activity;

    invoke-direct {v0}, Lo/aal$Activity;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 374
    invoke-super {p0}, Lo/ZY;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 375
    iget-object v1, p0, Lo/ZX;->j:Lo/AEADBadTagException;

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

    .line 376
    iget-object v1, p0, Lo/ZX;->g:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 377
    iget-object v1, p0, Lo/ZX;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 378
    iget-object v1, p0, Lo/ZX;->o:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    invoke-virtual {p0}, Lo/ZX;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 380
    invoke-virtual {p0}, Lo/ZX;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    iget-object v1, p0, Lo/ZX;->b:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/ZX;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 382
    iget-object v1, p0, Lo/ZX;->a:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lo/ZX;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 383
    iget-object v1, p0, Lo/ZX;->c:Ljava/lang/String;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 384
    iget-object v1, p0, Lo/ZX;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    return v0
.end method

.method public j(Ljava/lang/String;)Lo/ZX;
    .locals 0

    .line 215
    invoke-virtual {p0}, Lo/ZX;->i()V

    .line 216
    iput-object p1, p0, Lo/ZY;->c:Ljava/lang/String;

    return-object p0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lo/ZX;->h()Lo/aal$Activity;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListWithNewPlayButtonModel_{clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {p0}, Lo/ZX;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoPlayClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {p0}, Lo/ZX;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ZX;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", preQueryImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ZX;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ZX;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", itemTrackingInfoHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/ZX;->h:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-super {p0}, Lo/ZY;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
