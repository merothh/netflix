.class public Lo/Qx;
.super Lo/Qy;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Qy;",
        "Lo/IntToLongFunction<",
        "Lo/Qy$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/Qy;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/Qx;->d(I)Lo/Qx;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/Qx;
    .locals 0

    .line 274
    invoke-super {p0, p1, p2}, Lo/Qy;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lo/Qx;
    .locals 0

    .line 143
    invoke-virtual {p0}, Lo/Qx;->i()V

    .line 144
    iput-object p1, p0, Lo/Qy;->b:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/Qx;->b(Lo/Consumer;Lo/Qy$StateListAnimator;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/Qx;->a(J)Lo/Qx;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/Qx;
    .locals 0

    .line 292
    invoke-super {p0, p1}, Lo/Qy;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lo/Qx;
    .locals 0

    .line 252
    invoke-virtual {p0}, Lo/Qx;->i()V

    .line 253
    invoke-super {p0, p1}, Lo/Qy;->c(Ljava/lang/String;)V

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/Qx;
    .locals 0

    .line 318
    invoke-super {p0, p1}, Lo/Qy;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/Stream;)Lo/Qx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Stream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;)",
            "Lo/Qx;"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lo/Qx;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 196
    invoke-super {p0, p1}, Lo/Qy;->b(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/Stream;)V

    invoke-super {p0, v0}, Lo/Qy;->b(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-object p0
.end method

.method public b(FFIILo/Qy$StateListAnimator;)V
    .locals 7

    .line 112
    iget-object v0, p0, Lo/Qx;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 113
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 115
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Qy;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qx;->d(ILo/Qy$StateListAnimator;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qx;->b(Lo/Qy$StateListAnimator;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/Qy$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public b(Lo/Qy$StateListAnimator;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/Qx;->g:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/Qx;->b(Ljava/lang/CharSequence;)Lo/Qx;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/Qx;->b(Lo/BiConsumer$Activity;)Lo/Qx;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/Qx;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lo/Qx;->i()V

    .line 264
    invoke-super {p0, p1, p2}, Lo/Qy;->h(J)V

    return-object p0
.end method

.method public c(Ljava/util/List;)Lo/Qx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/Qy$ActionBar;",
            ">;)",
            "Lo/Qx;"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lo/Qx;->i()V

    .line 156
    iput-object p1, p0, Lo/Qy;->c:Ljava/util/List;

    return-object p0
.end method

.method public c(Lo/LongStream;)Lo/Qx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/Qx;",
            "Lo/Qy$StateListAnimator;",
            ">;)",
            "Lo/Qx;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lo/Qx;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 171
    invoke-super {p0, p1}, Lo/Qy;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/Qy;->a(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/Qy$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Qx;->b(FFIILo/Qy$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p2, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qx;->d(ILo/Qy$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qx;->e(Lo/Qy$StateListAnimator;)V

    return-void
.end method

.method public d(I)Lo/Qx;
    .locals 0

    .line 311
    invoke-super {p0, p1}, Lo/Qy;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Qx;
    .locals 0

    .line 241
    invoke-virtual {p0}, Lo/Qx;->i()V

    .line 242
    iput-object p1, p0, Lo/Qy;->i:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/Qy$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Qx;->b(FFIILo/Qy$StateListAnimator;)V

    return-void
.end method

.method public d(ILo/Qy$StateListAnimator;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/Qx;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Qy;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public e(Ljava/lang/String;)Lo/Qx;
    .locals 0

    .line 132
    invoke-virtual {p0}, Lo/Qx;->i()V

    .line 133
    iput-object p1, p0, Lo/Qy;->a:Ljava/lang/String;

    return-object p0
.end method

.method public e(Lo/Qy$StateListAnimator;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lo/Qy;->e(Lo/TimeUnit;)V

    .line 68
    iget-object v0, p0, Lo/Qx;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p1, Lo/Qy$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qx;->e(Lo/Qy$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 370
    :cond_0
    instance-of v1, p1, Lo/Qx;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 373
    :cond_1
    invoke-super {p0, p1}, Lo/Qy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 376
    :cond_2
    check-cast p1, Lo/Qx;

    .line 377
    iget-object v1, p0, Lo/Qx;->g:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Qx;->g:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 380
    :cond_5
    iget-object v1, p0, Lo/Qx;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Qx;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 383
    :cond_8
    iget-object v1, p0, Lo/Qx;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Qx;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 386
    :cond_b
    iget-object v1, p0, Lo/Qx;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Qx;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 389
    :cond_e
    iget-object v1, p0, Lo/Qx;->a:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/Qx;->a:Ljava/lang/String;

    iget-object v3, p1, Lo/Qx;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/Qx;->a:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 392
    :cond_10
    iget-object v1, p0, Lo/Qx;->b:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lo/Qx;->b:Ljava/lang/String;

    iget-object v3, p1, Lo/Qx;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/Qx;->b:Ljava/lang/String;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 395
    :cond_12
    iget-object v1, p0, Lo/Qx;->c:Ljava/util/List;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lo/Qx;->c:Ljava/util/List;

    iget-object v3, p1, Lo/Qx;->c:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    iget-object v1, p1, Lo/Qx;->c:Ljava/util/List;

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 398
    :cond_14
    invoke-virtual {p0}, Lo/Qx;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Lo/Qx;->l()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_16

    const/4 v3, 0x1

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    :goto_c
    if-eq v1, v3, :cond_17

    return v2

    .line 401
    :cond_17
    invoke-virtual {p0}, Lo/Qx;->o()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_d

    :cond_18
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1}, Lo/Qx;->o()Landroid/view/View$OnLongClickListener;

    move-result-object v3

    if-nez v3, :cond_19

    const/4 v3, 0x1

    goto :goto_e

    :cond_19
    const/4 v3, 0x0

    :goto_e
    if-eq v1, v3, :cond_1a

    return v2

    .line 404
    :cond_1a
    invoke-virtual {p0}, Lo/Qx;->I()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qx;->I()Z

    move-result v3

    if-eq v1, v3, :cond_1b

    return v2

    .line 407
    :cond_1b
    invoke-virtual {p0}, Lo/Qx;->F()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qx;->F()Z

    move-result v3

    if-eq v1, v3, :cond_1c

    return v2

    .line 410
    :cond_1c
    iget-object v1, p0, Lo/Qx;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lo/Qx;->i:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/Qx;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_f

    :cond_1d
    iget-object v1, p1, Lo/Qx;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1e

    :goto_f
    return v2

    .line 413
    :cond_1e
    invoke-virtual {p0}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_10

    :cond_1f
    invoke-virtual {p1}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    :goto_10
    return v2

    .line 416
    :cond_20
    invoke-virtual {p0}, Lo/Qx;->C()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/Qx;->C()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_21

    return v2

    :cond_21
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 424
    invoke-super {p0}, Lo/Qy;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 425
    iget-object v1, p0, Lo/Qx;->g:Lo/AEADBadTagException;

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

    .line 426
    iget-object v1, p0, Lo/Qx;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 427
    iget-object v1, p0, Lo/Qx;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 428
    iget-object v1, p0, Lo/Qx;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 429
    iget-object v1, p0, Lo/Qx;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/Qx;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 430
    iget-object v1, p0, Lo/Qx;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/Qx;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 431
    iget-object v1, p0, Lo/Qx;->c:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/Qx;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 432
    invoke-virtual {p0}, Lo/Qx;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 433
    invoke-virtual {p0}, Lo/Qx;->o()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 434
    invoke-virtual {p0}, Lo/Qx;->I()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 435
    invoke-virtual {p0}, Lo/Qx;->F()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 436
    iget-object v1, p0, Lo/Qx;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lo/Qx;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 437
    invoke-virtual {p0}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_a
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 438
    invoke-virtual {p0}, Lo/Qx;->C()J

    move-result-wide v1

    invoke-virtual {p0}, Lo/Qx;->C()J

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

    .line 26
    invoke-virtual {p0}, Lo/Qx;->q()Lo/Qy$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected q()Lo/Qy$StateListAnimator;
    .locals 1

    .line 342
    new-instance v0, Lo/Qy$StateListAnimator;

    invoke-direct {v0}, Lo/Qy$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedShowModel_{showId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qx;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", episodeInfos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qx;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {p0}, Lo/Qx;->l()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {p0}, Lo/Qx;->o()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0}, Lo/Qx;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {p0}, Lo/Qx;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qx;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boxShotUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lo/Qx;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {p0}, Lo/Qx;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-super {p0}, Lo/Qy;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
