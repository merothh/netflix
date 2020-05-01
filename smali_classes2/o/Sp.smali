.class public Lo/Sp;
.super Lo/Sr;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Sr;",
        "Lo/IntToLongFunction<",
        "Lo/Sr$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Sp;",
            "Lo/Sr$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Sp;",
            "Lo/Sr$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Sp;",
            "Lo/Sr$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Sp;",
            "Lo/Sr$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lo/Sr;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/Sp;->e(I)Lo/Sp;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/Sp;
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lo/Sr;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Z)Lo/Sp;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lo/Sp;->i()V

    .line 163
    invoke-super {p0, p1}, Lo/Sr;->d(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/Sp;->e(Lo/Consumer;Lo/Sr$ActionBar;I)V

    return-void
.end method

.method public a(Lo/Sr$ActionBar;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/Sr;->e(Lo/TimeUnit;)V

    .line 65
    iget-object v0, p0, Lo/Sp;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/Sp;->d(J)Lo/Sp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Sp;->b(ILo/Sr$ActionBar;)V

    return-void
.end method

.method public b(ILo/Sr$ActionBar;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lo/Sp;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 88
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Sr;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Sp;->e(Lo/Sr$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/Sp;->a(Ljava/lang/CharSequence;)Lo/Sp;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/Sp;->d(Lo/BiConsumer$Activity;)Lo/Sp;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lo/Sp;
    .locals 0

    .line 140
    invoke-virtual {p0}, Lo/Sp;->i()V

    .line 141
    invoke-super {p0, p1}, Lo/Sr;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public c(FFIILo/Sr$ActionBar;)V
    .locals 7

    .line 109
    iget-object v0, p0, Lo/Sp;->f:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/Sr;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p5, Lo/Sr$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/Sp;->c(FFIILo/Sr$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/Sp;->b(ILo/Sr$ActionBar;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sp;->a(Lo/Sr$ActionBar;)V

    return-void
.end method

.method public d(J)Lo/Sp;
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Lo/Sr;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/Sp;
    .locals 0

    .line 242
    invoke-super {p0, p1}, Lo/Sr;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/LongStream;)Lo/Sp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LongStream<",
            "Lo/Sp;",
            "Lo/Sr$ActionBar;",
            ">;)",
            "Lo/Sp;"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lo/Sp;->i()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 177
    invoke-super {p0, p1}, Lo/Sr;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Lo/ExemptionMechanismException;

    invoke-direct {v0, p1}, Lo/ExemptionMechanismException;-><init>(Lo/LongStream;)V

    invoke-super {p0, v0}, Lo/Sr;->a(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/Sr$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Sp;->c(FFIILo/Sr$ActionBar;)V

    return-void
.end method

.method public e(I)Lo/Sp;
    .locals 0

    .line 235
    invoke-super {p0, p1}, Lo/Sr;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lo/Sp;
    .locals 0

    .line 129
    invoke-virtual {p0}, Lo/Sp;->i()V

    .line 130
    invoke-super {p0, p1}, Lo/Sr;->b(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/Sr$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public e(Lo/Sr$ActionBar;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/Sp;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/Sr$ActionBar;

    invoke-virtual {p0, p1}, Lo/Sp;->a(Lo/Sr$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 289
    :cond_0
    instance-of v1, p1, Lo/Sp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 292
    :cond_1
    invoke-super {p0, p1}, Lo/Sr;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 295
    :cond_2
    check-cast p1, Lo/Sp;

    .line 296
    iget-object v1, p0, Lo/Sp;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Sp;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 299
    :cond_5
    iget-object v1, p0, Lo/Sp;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Sp;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 302
    :cond_8
    iget-object v1, p0, Lo/Sp;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Sp;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 305
    :cond_b
    iget-object v1, p0, Lo/Sp;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Sp;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 308
    :cond_e
    invoke-virtual {p0}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 311
    :cond_10
    invoke-virtual {p0}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 314
    :cond_12
    invoke-virtual {p0}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 317
    :cond_14
    invoke-virtual {p0}, Lo/Sp;->o()Z

    move-result v1

    invoke-virtual {p1}, Lo/Sp;->o()Z

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    .line 320
    :cond_15
    invoke-virtual {p0}, Lo/Sp;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Lo/Sp;->k()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_17

    const/4 p1, 0x1

    goto :goto_c

    :cond_17
    const/4 p1, 0x0

    :goto_c
    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public f(Ljava/lang/String;)Lo/Sp;
    .locals 0

    .line 151
    invoke-virtual {p0}, Lo/Sp;->i()V

    .line 152
    invoke-super {p0, p1}, Lo/Sr;->a(Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 328
    invoke-super {p0}, Lo/Sr;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 329
    iget-object v1, p0, Lo/Sp;->a:Lo/AEADBadTagException;

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

    .line 330
    iget-object v1, p0, Lo/Sp;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 331
    iget-object v1, p0, Lo/Sp;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 332
    iget-object v1, p0, Lo/Sp;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 333
    invoke-virtual {p0}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    invoke-virtual {p0}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    invoke-virtual {p0}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    invoke-virtual {p0}, Lo/Sp;->o()Z

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    invoke-virtual {p0}, Lo/Sp;->k()Landroid/view/View$OnClickListener;

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
    invoke-virtual {p0}, Lo/Sp;->t()Lo/Sr$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method protected t()Lo/Sr$ActionBar;
    .locals 1

    .line 266
    new-instance v0, Lo/Sr$ActionBar;

    invoke-direct {v0}, Lo/Sr$ActionBar;-><init>()V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedForYouMerchView_{videoUrl1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p0}, Lo/Sp;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {p0}, Lo/Sp;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p0}, Lo/Sp;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", empty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {p0}, Lo/Sp;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", setupListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0}, Lo/Sp;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-super {p0}, Lo/Sr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
