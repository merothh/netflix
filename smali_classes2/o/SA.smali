.class public Lo/SA;
.super Lo/St;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Ss;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/St;",
        "Lo/IntToLongFunction<",
        "Lo/St$StateListAnimator;",
        ">;",
        "Lo/Ss;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SA;",
            "Lo/St$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SA;",
            "Lo/St$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SA;",
            "Lo/St$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SA;",
            "Lo/St$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/St;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->e(I)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/SA;
    .locals 0

    .line 164
    invoke-virtual {p0}, Lo/SA;->i()V

    .line 165
    invoke-super {p0, p1}, Lo/St;->e(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lo/SA;
    .locals 0

    .line 220
    invoke-super {p0, p1}, Lo/St;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Z)Lo/SA;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/SA;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/St;->e(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/SA;->e(Lo/Consumer;Lo/St$StateListAnimator;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/SA;->d(J)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/SA;
    .locals 0

    .line 190
    invoke-virtual {p0}, Lo/SA;->i()V

    .line 191
    invoke-super {p0, p1}, Lo/St;->a_(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/SA;
    .locals 0

    .line 247
    invoke-super {p0, p1}, Lo/St;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(Z)Lo/Ss;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->c(Z)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public b(FFIILo/St$StateListAnimator;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/SA;->i:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/St;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/SA;->c(ILo/St$StateListAnimator;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/SA;->b(Lo/St$StateListAnimator;I)V

    return-void
.end method

.method public b(Lo/St$StateListAnimator;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/SA;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->a(Ljava/lang/CharSequence;)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->b(Lo/BiConsumer$Activity;)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)Lo/SA;
    .locals 0

    .line 139
    invoke-virtual {p0}, Lo/SA;->i()V

    .line 140
    invoke-super {p0, p1}, Lo/St;->c_(Z)V

    return-object p0
.end method

.method public synthetic c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/Ss;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->b(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/St$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SA;->b(FFIILo/St$StateListAnimator;)V

    return-void
.end method

.method public c(ILo/St$StateListAnimator;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/SA;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/St;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/SA;->c(ILo/St$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/SA;->d(Lo/St$StateListAnimator;)V

    return-void
.end method

.method public d(J)Lo/SA;
    .locals 0

    .line 202
    invoke-super {p0, p1, p2}, Lo/St;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/Ss;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Z)Lo/Ss;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->a(Z)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/St$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SA;->b(FFIILo/St$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/St$StateListAnimator;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/St;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/SA;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e(I)Lo/SA;
    .locals 0

    .line 240
    invoke-super {p0, p1}, Lo/St;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/Ss;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/SA;->a(Ljava/lang/CharSequence;)Lo/SA;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/Consumer;Lo/St$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/St$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/SA;->d(Lo/St$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 293
    :cond_0
    instance-of v1, p1, Lo/SA;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 296
    :cond_1
    invoke-super {p0, p1}, Lo/St;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 299
    :cond_2
    check-cast p1, Lo/SA;

    .line 300
    iget-object v1, p0, Lo/SA;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SA;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 303
    :cond_5
    iget-object v1, p0, Lo/SA;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SA;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 306
    :cond_8
    iget-object v1, p0, Lo/SA;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SA;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 309
    :cond_b
    iget-object v1, p0, Lo/SA;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SA;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 312
    :cond_e
    invoke-virtual {p0}, Lo/SA;->h()Z

    move-result v1

    invoke-virtual {p1}, Lo/SA;->h()Z

    move-result v3

    if-eq v1, v3, :cond_f

    return v2

    .line 315
    :cond_f
    invoke-virtual {p0}, Lo/SA;->m()Z

    move-result v1

    invoke-virtual {p1}, Lo/SA;->m()Z

    move-result v3

    if-eq v1, v3, :cond_10

    return v2

    .line 318
    :cond_10
    invoke-virtual {p0}, Lo/SA;->l()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_8

    :cond_11
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/SA;->l()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    if-nez v3, :cond_12

    const/4 v3, 0x1

    goto :goto_9

    :cond_12
    const/4 v3, 0x0

    :goto_9
    if-eq v1, v3, :cond_13

    return v2

    .line 321
    :cond_13
    invoke-virtual {p0}, Lo/SA;->o()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_a

    :cond_14
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Lo/SA;->o()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_b

    :cond_15
    const/4 p1, 0x0

    :goto_b
    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 329
    invoke-super {p0}, Lo/St;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 330
    iget-object v1, p0, Lo/SA;->a:Lo/AEADBadTagException;

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

    .line 331
    iget-object v1, p0, Lo/SA;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget-object v1, p0, Lo/SA;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    iget-object v1, p0, Lo/SA;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    invoke-virtual {p0}, Lo/SA;->h()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    invoke-virtual {p0}, Lo/SA;->m()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    invoke-virtual {p0}, Lo/SA;->l()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    invoke-virtual {p0}, Lo/SA;->o()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method protected k()Lo/St$StateListAnimator;
    .locals 1

    .line 271
    new-instance v0, Lo/St$StateListAnimator;

    invoke-direct {v0}, Lo/St$StateListAnimator;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lo/SA;->k()Lo/St$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedForYouSettingsTop_{nextEpisodeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lo/SA;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downloadedForYouEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Lo/SA;->m()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nextEpisodeListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lo/SA;->l()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadedForYouListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p0}, Lo/SA;->o()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-super {p0}, Lo/St;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
