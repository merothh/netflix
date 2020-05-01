.class public Lo/SW;
.super Lo/Ta;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Ta;",
        "Lo/IntToLongFunction<",
        "Lo/Ta$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SW;",
            "Lo/Ta$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SW;",
            "Lo/Ta$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SW;",
            "Lo/Ta$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SW;",
            "Lo/Ta$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/Ta;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SW;->h(I)Lo/SW;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/SW;
    .locals 0

    .line 149
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 150
    invoke-super {p0, p1}, Lo/Ta;->d(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/SW;->b(Lo/Consumer;Lo/Ta$ActionBar;I)V

    return-void
.end method

.method public a(Lo/Ta$ActionBar;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/Ta;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/SW;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/SW;->c(J)Lo/SW;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/SW;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 140
    invoke-super {p0, p1}, Lo/Ta;->e(I)V

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/SW;
    .locals 0

    .line 211
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 212
    invoke-super {p0, p1}, Lo/Ta;->c(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SW;->b(ILo/Ta$ActionBar;)V

    return-void
.end method

.method public b(ILo/Ta$ActionBar;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/SW;->c:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Ta;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SW;->d(Lo/Ta$ActionBar;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/Ta$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SW;->e(Ljava/lang/CharSequence;)Lo/SW;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SW;->e(Lo/BiConsumer$Activity;)Lo/SW;

    move-result-object p1

    return-object p1
.end method

.method public c(J)Lo/SW;
    .locals 0

    .line 249
    invoke-super {p0, p1, p2}, Lo/Ta;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Ta$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SW;->e(FFIILo/Ta$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SW;->b(ILo/Ta$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1}, Lo/SW;->a(Lo/Ta$ActionBar;)V

    return-void
.end method

.method public d(I)Lo/SW;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/Ta;->c(I)V

    return-object p0
.end method

.method public d(Landroid/view/View$OnClickListener;)Lo/SW;
    .locals 0

    .line 185
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 186
    invoke-super {p0, p1}, Lo/Ta;->e(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Ta$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SW;->e(FFIILo/Ta$ActionBar;)V

    return-void
.end method

.method public d(Lo/Ta$ActionBar;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/SW;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/SW;
    .locals 0

    .line 267
    invoke-super {p0, p1}, Lo/Ta;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/SW;
    .locals 0

    .line 294
    invoke-super {p0, p1}, Lo/Ta;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Z)Lo/SW;
    .locals 0

    .line 160
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 161
    invoke-super {p0, p1}, Lo/Ta;->a(Z)V

    return-object p0
.end method

.method public e(FFIILo/Ta$ActionBar;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/SW;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 110
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 112
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Ta;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Ta$ActionBar;

    invoke-virtual {p0, p1}, Lo/SW;->a(Lo/Ta$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 343
    :cond_0
    instance-of v1, p1, Lo/SW;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 346
    :cond_1
    invoke-super {p0, p1}, Lo/Ta;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 349
    :cond_2
    check-cast p1, Lo/SW;

    .line 350
    iget-object v1, p0, Lo/SW;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SW;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 353
    :cond_5
    iget-object v1, p0, Lo/SW;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SW;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 356
    :cond_8
    iget-object v1, p0, Lo/SW;->c:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SW;->c:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 359
    :cond_b
    iget-object v1, p0, Lo/SW;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SW;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 362
    :cond_e
    invoke-virtual {p0}, Lo/SW;->h()I

    move-result v1

    invoke-virtual {p1}, Lo/SW;->h()I

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 365
    :cond_f
    invoke-virtual {p0}, Lo/SW;->m()I

    move-result v1

    invoke-virtual {p1}, Lo/SW;->m()I

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 368
    :cond_10
    invoke-virtual {p0}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_8

    :cond_11
    invoke-virtual {p1}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_8
    return v2

    .line 371
    :cond_12
    invoke-virtual {p0}, Lo/SW;->l()Z

    move-result v1

    invoke-virtual {p1}, Lo/SW;->l()Z

    move-result v3

    if-eq v1, v3, :cond_13

    return v2

    .line 374
    :cond_13
    invoke-virtual {p0}, Lo/SW;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p1}, Lo/SW;->o()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    :goto_a
    if-eq v1, v3, :cond_16

    return v2

    .line 377
    :cond_16
    invoke-virtual {p0}, Lo/SW;->s()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Lo/SW;->s()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_c
    if-eq v1, v3, :cond_19

    return v2

    .line 380
    :cond_19
    invoke-virtual {p0}, Lo/SW;->q()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p1}, Lo/SW;->q()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_e

    :cond_1b
    const/4 p1, 0x0

    :goto_e
    if-eq v1, p1, :cond_1c

    return v2

    :cond_1c
    return v0
.end method

.method public h(I)Lo/SW;
    .locals 0

    .line 287
    invoke-super {p0, p1}, Lo/Ta;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public h(Landroid/view/View$OnClickListener;)Lo/SW;
    .locals 0

    .line 237
    invoke-virtual {p0}, Lo/SW;->i()V

    .line 238
    invoke-super {p0, p1}, Lo/Ta;->a(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 388
    invoke-super {p0}, Lo/Ta;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 389
    iget-object v1, p0, Lo/SW;->a:Lo/AEADBadTagException;

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

    .line 390
    iget-object v1, p0, Lo/SW;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 391
    iget-object v1, p0, Lo/SW;->c:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 392
    iget-object v1, p0, Lo/SW;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 393
    invoke-virtual {p0}, Lo/SW;->h()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 394
    invoke-virtual {p0}, Lo/SW;->m()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 395
    invoke-virtual {p0}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 396
    invoke-virtual {p0}, Lo/SW;->l()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 397
    invoke-virtual {p0}, Lo/SW;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 398
    invoke-virtual {p0}, Lo/SW;->s()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 399
    invoke-virtual {p0}, Lo/SW;->q()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/SW;->r()Lo/Ta$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected r()Lo/Ta$ActionBar;
    .locals 1

    .line 318
    new-instance v0, Lo/Ta$ActionBar;

    invoke-direct {v0}, Lo/Ta$ActionBar;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadsExpiredSmallModel_{actionableCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {p0}, Lo/SW;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notActionableCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p0}, Lo/SW;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0}, Lo/SW;->k()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {p0}, Lo/SW;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renewClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {p0}, Lo/SW;->o()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deleteClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {p0}, Lo/SW;->s()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reviewClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {p0}, Lo/SW;->q()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-super {p0}, Lo/Ta;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
