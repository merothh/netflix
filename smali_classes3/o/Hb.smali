.class public Lo/Hb;
.super Lo/Ha;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Ha;",
        "Lo/IntToLongFunction<",
        "Lo/Ha$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Hb;",
            "Lo/Ha$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hb;",
            "Lo/Ha$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hb;",
            "Lo/Ha$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hb;",
            "Lo/Ha$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/Ha;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Hb;->c(I)Lo/Hb;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/Hb;
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lo/Ha;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/Ha$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hb;->e(Lo/Consumer;Lo/Ha$StateListAnimator;I)V

    return-void
.end method

.method public a(Lo/Ha$StateListAnimator;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Hb;->i:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/Hb;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/Ha;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/Hb;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/Hb;->e(J)Lo/Hb;

    move-result-object p1

    return-object p1
.end method

.method public b(FFIILo/Ha$StateListAnimator;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lo/Hb;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 116
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 118
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Ha;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Ha$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Hb;->c(ILo/Ha$StateListAnimator;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/Ha$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Hb;->a(Lo/Ha$StateListAnimator;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Hb;->a(Ljava/lang/CharSequence;)Lo/Hb;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/Hb;->e(Lo/BiConsumer$Activity;)Lo/Hb;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/Hb;
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lo/Ha;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Ha$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hb;->b(FFIILo/Ha$StateListAnimator;)V

    return-void
.end method

.method public c(ILo/Ha$StateListAnimator;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/Hb;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Ha;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Ha$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Hb;->c(ILo/Ha$StateListAnimator;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Ha$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Hb;->c(Lo/Ha$StateListAnimator;)V

    return-void
.end method

.method public c(Lo/Ha$StateListAnimator;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lo/Ha;->e(Lo/TimeUnit;)V

    .line 73
    iget-object v0, p0, Lo/Hb;->g:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Ha$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hb;->b(FFIILo/Ha$StateListAnimator;)V

    return-void
.end method

.method public e(J)Lo/Hb;
    .locals 0

    .line 161
    invoke-super {p0, p1, p2}, Lo/Ha;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/Hb;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lo/Ha;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/Ha$StateListAnimator;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/Hb;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Ha$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Hb;->c(Lo/Ha$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Lo/Hb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 247
    :cond_1
    invoke-super {p0, p1}, Lo/Ha;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 250
    :cond_2
    check-cast p1, Lo/Hb;

    .line 251
    iget-object v1, p0, Lo/Hb;->i:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hb;->i:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 254
    :cond_5
    iget-object v1, p0, Lo/Hb;->g:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hb;->g:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 257
    :cond_8
    iget-object v1, p0, Lo/Hb;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hb;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 260
    :cond_b
    iget-object v1, p0, Lo/Hb;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Hb;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 263
    :cond_e
    invoke-virtual {p0}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 266
    :cond_10
    invoke-virtual {p0}, Lo/Hb;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/Hb;->l()I

    move-result p1

    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 274
    invoke-super {p0}, Lo/Ha;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 275
    iget-object v1, p0, Lo/Hb;->i:Lo/AEADBadTagException;

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

    .line 276
    iget-object v1, p0, Lo/Hb;->g:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 277
    iget-object v1, p0, Lo/Hb;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 278
    iget-object v1, p0, Lo/Hb;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 279
    invoke-virtual {p0}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 280
    invoke-virtual {p0}, Lo/Hb;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugModel_{backgroundResource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Lo/Hb;->p()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Lo/Hb;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-super {p0}, Lo/Ha;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
