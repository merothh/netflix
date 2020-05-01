.class public Lo/LC;
.super Lo/LB;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/LB;",
        "Lo/IntToLongFunction<",
        "Lo/LB$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/LC;",
            "Lo/LB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/LC;",
            "Lo/LB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/LC;",
            "Lo/LB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/LC;",
            "Lo/LB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/LB;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/LC;->e(I)Lo/LC;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Integer;)Lo/LC;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lo/LC;->i()V

    .line 172
    invoke-super {p0, p1}, Lo/LB;->b(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/LC;
    .locals 0

    .line 239
    invoke-super {p0, p1}, Lo/LB;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Z)Lo/LC;
    .locals 0

    .line 183
    invoke-virtual {p0}, Lo/LC;->i()V

    .line 184
    invoke-super {p0, p1}, Lo/LB;->b(Z)V

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p2, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/LC;->c(Lo/Consumer;Lo/LB$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/LB$TaskDescription;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lo/LB;->e(Lo/TimeUnit;)V

    .line 68
    iget-object v0, p0, Lo/LC;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lo/LB$TaskDescription;I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lo/LC;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2}, Lo/LC;->e(J)Lo/LC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/LC;->e(ILo/LB$TaskDescription;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 26
    check-cast p1, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/LC;->a(Lo/LB$TaskDescription;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/LC;->d(Ljava/lang/CharSequence;)Lo/LC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lo/LC;->a(Lo/BiConsumer$Activity;)Lo/LC;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View$OnClickListener;)Lo/LC;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/LC;->i()V

    .line 148
    invoke-super {p0, p1}, Lo/LB;->a(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/LB$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/LC;->e(FFIILo/LB$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p2, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/LC;->e(ILo/LB$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/LC;->a(Lo/LB$TaskDescription;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/LB$TaskDescription;I)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/LC;
    .locals 0

    .line 212
    invoke-super {p0, p1}, Lo/LB;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/Integer;)Lo/LC;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/LC;->i()V

    .line 160
    invoke-super {p0, p1}, Lo/LB;->c(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 26
    move-object v5, p5

    check-cast v5, Lo/LB$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/LC;->e(FFIILo/LB$TaskDescription;)V

    return-void
.end method

.method public e(I)Lo/LC;
    .locals 0

    .line 232
    invoke-super {p0, p1}, Lo/LB;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(J)Lo/LC;
    .locals 0

    .line 194
    invoke-super {p0, p1, p2}, Lo/LB;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(FFIILo/LB$TaskDescription;)V
    .locals 7

    .line 112
    iget-object v0, p0, Lo/LC;->i:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/LB;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public e(ILo/LB$TaskDescription;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lo/LC;->b:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Lo/LB;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 26
    check-cast p1, Lo/LB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/LC;->a(Lo/LB$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 280
    :cond_0
    instance-of v1, p1, Lo/LC;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 283
    :cond_1
    invoke-super {p0, p1}, Lo/LB;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 286
    :cond_2
    check-cast p1, Lo/LC;

    .line 287
    iget-object v1, p0, Lo/LC;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/LC;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 290
    :cond_5
    iget-object v1, p0, Lo/LC;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/LC;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 293
    :cond_8
    iget-object v1, p0, Lo/LC;->b:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/LC;->b:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 296
    :cond_b
    iget-object v1, p0, Lo/LC;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/LC;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 299
    :cond_e
    invoke-virtual {p0}, Lo/LC;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p1}, Lo/LC;->h()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eq v1, v3, :cond_11

    return v2

    .line 302
    :cond_11
    invoke-virtual {p0}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_12
    invoke-virtual {p1}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    :goto_a
    return v2

    .line 305
    :cond_13
    invoke-virtual {p0}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_b

    :cond_14
    invoke-virtual {p1}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    :goto_b
    return v2

    .line 308
    :cond_15
    invoke-virtual {p0}, Lo/LC;->l()Z

    move-result v1

    invoke-virtual {p1}, Lo/LC;->l()Z

    move-result p1

    if-eq v1, p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 316
    invoke-super {p0}, Lo/LB;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 317
    iget-object v1, p0, Lo/LC;->c:Lo/AEADBadTagException;

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

    .line 318
    iget-object v1, p0, Lo/LC;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    iget-object v1, p0, Lo/LC;->b:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    iget-object v1, p0, Lo/LC;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    invoke-virtual {p0}, Lo/LC;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 322
    invoke-virtual {p0}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 323
    invoke-virtual {p0}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_6
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 324
    invoke-virtual {p0}, Lo/LC;->l()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CwDialogGenericItemRowModel_{itemClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lo/LC;->h()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", iconDrawableRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lo/LC;->k()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textStringRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Lo/LC;->o()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalBottomPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0}, Lo/LC;->l()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-super {p0}, Lo/LB;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
