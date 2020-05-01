.class public Lo/Jh;
.super Lo/Ja;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Jf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Ja;",
        "Lo/IntToLongFunction<",
        "Lo/Ja$Application;",
        ">;",
        "Lo/Jf;"
    }
.end annotation


# instance fields
.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Jh;",
            "Lo/Ja$Application;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Jh;",
            "Lo/Ja$Application;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Jh;",
            "Lo/Ja$Application;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Jh;",
            "Lo/Ja$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Ja;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->d(I)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Landroid/view/View$OnClickListener;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->d(Landroid/view/View$OnClickListener;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/Jh;
    .locals 0

    .line 319
    invoke-super {p0, p1}, Lo/Ja;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/Ja$Application;

    invoke-virtual {p0, p1, p2, p3}, Lo/Jh;->a(Lo/Consumer;Lo/Ja$Application;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/Ja$Application;I)V
    .locals 0

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/Jh;->e(J)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lo/BiConsumer$Activity;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->a(Lo/BiConsumer$Activity;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/Jh;
    .locals 0

    .line 293
    invoke-super {p0, p1}, Lo/Ja;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(FFIILo/Ja$Application;)V
    .locals 7

    .line 110
    iget-object v0, p0, Lo/Jh;->h:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Ja;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Ja$Application;

    invoke-virtual {p0, p1, p2}, Lo/Jh;->b(ILo/Ja$Application;)V

    return-void
.end method

.method public b(ILo/Ja$Application;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/Jh;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 91
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Ja;->b(ILo/Ja$Application;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/Ja$Application;

    invoke-virtual {p0, p1, p2}, Lo/Jh;->c(Lo/Ja$Application;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->b(Ljava/lang/CharSequence;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->a(Lo/BiConsumer$Activity;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->l(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Ja$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Jh;->b(FFIILo/Ja$Application;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Ja$Application;

    invoke-virtual {p0, p1, p2}, Lo/Jh;->b(ILo/Ja$Application;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Ja$Application;

    invoke-virtual {p0, p1}, Lo/Jh;->d(Lo/Ja$Application;)V

    return-void
.end method

.method public c(Lo/Ja$Application;I)V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/Jh;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c_(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->o(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Lo/Jh;
    .locals 0

    .line 312
    invoke-super {p0, p1}, Lo/Ja;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Landroid/view/View$OnClickListener;)Lo/Jh;
    .locals 0

    .line 263
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 264
    invoke-super {p0, p1}, Lo/Ja;->e(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Ja$Application;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Jh;->b(FFIILo/Ja$Application;)V

    return-void
.end method

.method public d(Lo/Ja$Application;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lo/Ja;->e(Lo/TimeUnit;)V

    .line 66
    iget-object v0, p0, Lo/Jh;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic d_(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->m(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->b(Ljava/lang/CharSequence;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public e(J)Lo/Jh;
    .locals 0

    .line 275
    invoke-super {p0, p1, p2}, Lo/Ja;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Ja$Application;

    invoke-virtual {p0, p1}, Lo/Jh;->d(Lo/Ja$Application;)V

    return-void
.end method

.method public synthetic e_(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->g(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 373
    :cond_0
    instance-of v1, p1, Lo/Jh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 376
    :cond_1
    invoke-super {p0, p1}, Lo/Ja;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 379
    :cond_2
    check-cast p1, Lo/Jh;

    .line 380
    iget-object v1, p0, Lo/Jh;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Jh;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 383
    :cond_5
    iget-object v1, p0, Lo/Jh;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Jh;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 386
    :cond_8
    iget-object v1, p0, Lo/Jh;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Jh;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 389
    :cond_b
    iget-object v1, p0, Lo/Jh;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Jh;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 392
    :cond_e
    iget-object v1, p0, Lo/Jh;->c:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/Jh;->c:Ljava/lang/String;

    iget-object v3, p1, Lo/Jh;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/Jh;->c:Ljava/lang/String;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 395
    :cond_10
    iget-object v1, p0, Lo/Jh;->a:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lo/Jh;->a:Ljava/lang/String;

    iget-object v3, p1, Lo/Jh;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    iget-object v1, p1, Lo/Jh;->a:Ljava/lang/String;

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 398
    :cond_12
    invoke-virtual {p0}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 401
    :cond_14
    invoke-virtual {p0}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_b

    :cond_15
    invoke-virtual {p1}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16

    :goto_b
    return v2

    .line 404
    :cond_16
    invoke-virtual {p0}, Lo/Jh;->o()I

    move-result v1

    invoke-virtual {p1}, Lo/Jh;->o()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 407
    :cond_17
    invoke-virtual {p0}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_c

    :cond_18
    invoke-virtual {p1}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    :goto_c
    return v2

    .line 410
    :cond_19
    invoke-virtual {p0}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {p0}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_d

    :cond_1a
    invoke-virtual {p1}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    :goto_d
    return v2

    .line 413
    :cond_1b
    invoke-virtual {p0}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-virtual {p0}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_e

    :cond_1c
    invoke-virtual {p1}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    :goto_e
    return v2

    .line 416
    :cond_1d
    invoke-virtual {p0}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_f

    :cond_1e
    invoke-virtual {p1}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    :goto_f
    return v2

    .line 419
    :cond_1f
    invoke-virtual {p0}, Lo/Jh;->t()I

    move-result v1

    invoke-virtual {p1}, Lo/Jh;->t()I

    move-result v3

    if-eq v1, v3, :cond_20

    return v2

    .line 422
    :cond_20
    invoke-virtual {p0}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_10

    :cond_21
    invoke-virtual {p1}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    :goto_10
    return v2

    .line 425
    :cond_22
    invoke-virtual {p0}, Lo/Jh;->r()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_23

    const/4 v1, 0x1

    goto :goto_11

    :cond_23
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p1}, Lo/Jh;->r()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_24

    const/4 p1, 0x1

    goto :goto_12

    :cond_24
    const/4 p1, 0x0

    :goto_12
    if-eq v1, p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public synthetic f(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->t(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f_(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->j(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 141
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 142
    iput-object p1, p0, Lo/Ja;->a:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic h(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->n(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 433
    invoke-super {p0}, Lo/Ja;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 434
    iget-object v1, p0, Lo/Jh;->b:Lo/AEADBadTagException;

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

    .line 435
    iget-object v1, p0, Lo/Jh;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 436
    iget-object v1, p0, Lo/Jh;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 437
    iget-object v1, p0, Lo/Jh;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 438
    iget-object v1, p0, Lo/Jh;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/Jh;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 439
    iget-object v1, p0, Lo/Jh;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lo/Jh;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 440
    invoke-virtual {p0}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 441
    invoke-virtual {p0}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    invoke-virtual {p0}, Lo/Jh;->o()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 443
    invoke-virtual {p0}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x0

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 444
    invoke-virtual {p0}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 445
    invoke-virtual {p0}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 446
    invoke-virtual {p0}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 447
    invoke-virtual {p0}, Lo/Jh;->t()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 448
    invoke-virtual {p0}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    const/4 v1, 0x0

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 449
    invoke-virtual {p0}, Lo/Jh;->r()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_d

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    return v0
.end method

.method public synthetic i(Ljava/lang/String;)Lo/Jf;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Jh;->k(Ljava/lang/String;)Lo/Jh;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 130
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 131
    iput-object p1, p0, Lo/Ja;->c:Ljava/lang/String;

    return-object p0
.end method

.method public k(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 206
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 207
    invoke-super {p0, p1}, Lo/Ja;->g_(Ljava/lang/String;)V

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 184
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 185
    invoke-super {p0, p1}, Lo/Ja;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 152
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 153
    invoke-super {p0, p1}, Lo/Ja;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 195
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 196
    invoke-super {p0, p1}, Lo/Ja;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lo/Jh;->x()Lo/Ja$Application;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 164
    invoke-super {p0, p1}, Lo/Ja;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lo/Jh;
    .locals 0

    .line 238
    invoke-virtual {p0}, Lo/Jh;->i()V

    .line 239
    invoke-super {p0, p1}, Lo/Ja;->h_(Ljava/lang/String;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KidsCharacterModel_{videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Jh;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Jh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storyImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {p0}, Lo/Jh;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleImageUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {p0}, Lo/Jh;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", runtime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Lo/Jh;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", certification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Lo/Jh;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", playableTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {p0}, Lo/Jh;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supplementalInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p0}, Lo/Jh;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p0}, Lo/Jh;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {p0}, Lo/Jh;->t()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxartId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {p0}, Lo/Jh;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p0}, Lo/Jh;->r()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-super {p0}, Lo/Ja;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected x()Lo/Ja$Application;
    .locals 1

    .line 343
    new-instance v0, Lo/Ja$Application;

    invoke-direct {v0}, Lo/Ja$Application;-><init>()V

    return-object v0
.end method
