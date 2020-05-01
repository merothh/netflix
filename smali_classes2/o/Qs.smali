.class public Lo/Qs;
.super Lo/Qu;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Qu;",
        "Lo/IntToLongFunction<",
        "Lo/Qu$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Qs;",
            "Lo/Qu$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Qs;",
            "Lo/Qu$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Qs;",
            "Lo/Qu$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Qs;",
            "Lo/Qu$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lo/Qu;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Qs;->b(I)Lo/Qs;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/Qs;
    .locals 0

    .line 281
    invoke-super {p0, p1, p2}, Lo/Qu;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/Qs;
    .locals 0

    .line 188
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 189
    invoke-super {p0, p1}, Lo/Qu;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p2, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/Qs;->a(Lo/Consumer;Lo/Qu$StateListAnimator;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/Qu$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lo/Qs;->a(J)Lo/Qs;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Qs;
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lo/Qu;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/Qs;
    .locals 0

    .line 213
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 214
    invoke-super {p0, p1}, Lo/Qu;->d(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public b(FFIILo/Qu$StateListAnimator;)V
    .locals 7

    .line 113
    iget-object v0, p0, Lo/Qs;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 114
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 116
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Qu;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qs;->d(ILo/Qu$StateListAnimator;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 27
    check-cast p1, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qs;->d(Lo/Qu$StateListAnimator;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Qs;->e(Ljava/lang/CharSequence;)Lo/Qs;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lo/Qs;->e(Lo/BiConsumer$Activity;)Lo/Qs;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Lo/Qs;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/Qs;"
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 144
    invoke-super {p0, p1}, Lo/Qu;->d(Ljava/util/List;)V

    return-object p0
.end method

.method public c(Z)Lo/Qs;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 134
    invoke-super {p0, p1}, Lo/Qu;->b(Z)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/Qu$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Qs;->b(FFIILo/Qu$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 27
    check-cast p2, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qs;->d(ILo/Qu$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qs;->e(Lo/Qu$StateListAnimator;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lo/Qs;
    .locals 0

    .line 177
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 178
    invoke-super {p0, p1}, Lo/Qu;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Lo/Tf;)Lo/Qs;
    .locals 0

    .line 166
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 167
    invoke-super {p0, p1}, Lo/Qu;->e(Lo/Tf;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 27
    move-object v5, p5

    check-cast v5, Lo/Qu$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Qs;->b(FFIILo/Qu$StateListAnimator;)V

    return-void
.end method

.method public d(ILo/Qu$StateListAnimator;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/Qs;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Qu;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public d(Lo/Qu$StateListAnimator;I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lo/Qs;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public e(J)Lo/Qs;
    .locals 0

    .line 270
    invoke-virtual {p0}, Lo/Qs;->i()V

    .line 271
    invoke-super {p0, p1, p2}, Lo/Qu;->h(J)V

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/Qs;
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lo/Qu;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/Qs;
    .locals 0

    .line 325
    invoke-super {p0, p1}, Lo/Qu;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Qu$StateListAnimator;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lo/Qu;->e(Lo/TimeUnit;)V

    .line 69
    iget-object v0, p0, Lo/Qs;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 27
    check-cast p1, Lo/Qu$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qs;->e(Lo/Qu$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lo/Qs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 382
    :cond_1
    invoke-super {p0, p1}, Lo/Qu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 385
    :cond_2
    check-cast p1, Lo/Qs;

    .line 386
    iget-object v1, p0, Lo/Qs;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Qs;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 389
    :cond_5
    iget-object v1, p0, Lo/Qs;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Qs;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 392
    :cond_8
    iget-object v1, p0, Lo/Qs;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Qs;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 395
    :cond_b
    iget-object v1, p0, Lo/Qs;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Qs;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 398
    :cond_e
    invoke-virtual {p0}, Lo/Qs;->h()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qs;->h()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 401
    :cond_f
    invoke-virtual {p0}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    :goto_8
    return v2

    .line 404
    :cond_11
    invoke-virtual {p0}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_12
    invoke-virtual {p1}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_13

    :goto_9
    return v2

    .line 407
    :cond_13
    invoke-virtual {p0}, Lo/Qs;->l()Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lo/Qs;->l()Lo/Tf;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qs;->l()Lo/Tf;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/Tf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_14
    invoke-virtual {p1}, Lo/Qs;->l()Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_15

    :goto_a
    return v2

    .line 410
    :cond_15
    invoke-virtual {p0}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_b

    :cond_16
    invoke-virtual {p1}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    :goto_b
    return v2

    .line 413
    :cond_17
    invoke-virtual {p0}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_c

    :cond_18
    invoke-virtual {p1}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    :goto_c
    return v2

    .line 416
    :cond_19
    invoke-virtual {p0}, Lo/Qs;->p()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1}, Lo/Qs;->p()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_1b

    const/4 v3, 0x1

    goto :goto_e

    :cond_1b
    const/4 v3, 0x0

    :goto_e
    if-eq v1, v3, :cond_1c

    return v2

    .line 419
    :cond_1c
    invoke-virtual {p0}, Lo/Qs;->I()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qs;->I()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    .line 422
    :cond_1d
    invoke-virtual {p0}, Lo/Qs;->F()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qs;->F()Z

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    .line 425
    :cond_1e
    iget-object v1, p0, Lo/Qs;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lo/Qs;->i:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/Qs;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_f

    :cond_1f
    iget-object v1, p1, Lo/Qs;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_20

    :goto_f
    return v2

    .line 428
    :cond_20
    invoke-virtual {p0}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_10

    :cond_21
    invoke-virtual {p1}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    :goto_10
    return v2

    .line 431
    :cond_22
    invoke-virtual {p0}, Lo/Qs;->C()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/Qs;->C()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_23

    return v2

    :cond_23
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 439
    invoke-super {p0}, Lo/Qu;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 440
    iget-object v1, p0, Lo/Qs;->a:Lo/AEADBadTagException;

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

    .line 441
    iget-object v1, p0, Lo/Qs;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    iget-object v1, p0, Lo/Qs;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 443
    iget-object v1, p0, Lo/Qs;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    invoke-virtual {p0}, Lo/Qs;->h()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    invoke-virtual {p0}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 446
    invoke-virtual {p0}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    invoke-virtual {p0}, Lo/Qs;->l()Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/Qs;->l()Lo/Tf;

    move-result-object v1

    invoke-virtual {v1}, Lo/Tf;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 448
    invoke-virtual {p0}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 449
    invoke-virtual {p0}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 450
    invoke-virtual {p0}, Lo/Qs;->p()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_9

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 451
    invoke-virtual {p0}, Lo/Qs;->I()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 452
    invoke-virtual {p0}, Lo/Qs;->F()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 453
    iget-object v1, p0, Lo/Qs;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lo/Qs;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 454
    invoke-virtual {p0}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 455
    invoke-virtual {p0}, Lo/Qs;->C()J

    move-result-wide v1

    invoke-virtual {p0}, Lo/Qs;->C()J

    move-result-wide v3

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lo/Qs;->t()Lo/Qu$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .line 232
    invoke-super {p0}, Lo/Qu;->I()Z

    move-result v0

    return v0
.end method

.method protected t()Lo/Qu$StateListAnimator;
    .locals 1

    .line 349
    new-instance v0, Lo/Qu$StateListAnimator;

    invoke-direct {v0}, Lo/Qu$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedContentModel_{expandedOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lo/Qs;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", episodeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p0}, Lo/Qs;->o()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfoHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lo/Qs;->m()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Lo/Qs;->l()Lo/Tf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Lo/Qs;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p0}, Lo/Qs;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {p0}, Lo/Qs;->p()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {p0}, Lo/Qs;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-virtual {p0}, Lo/Qs;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qs;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boxShotUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    invoke-virtual {p0}, Lo/Qs;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p0}, Lo/Qs;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-super {p0}, Lo/Qu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
