.class public Lo/FZ;
.super Lo/FT;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/FX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FT;",
        "Lo/IntToLongFunction<",
        "Lo/FT$TaskDescription;",
        ">;",
        "Lo/FX;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/FZ;",
            "Lo/FT$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/FZ;",
            "Lo/FT$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/FZ;",
            "Lo/FT$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/FZ;",
            "Lo/FT$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lo/FT;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->e(I)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Lo/FX;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->e(Ljava/lang/CharSequence;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Ljava/lang/String;)Lo/FX;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->f(Ljava/lang/String;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/FZ;->b(Lo/Consumer;Lo/FT$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lo/FT;->a(Lo/OfPrimitive;)V

    .line 40
    invoke-virtual {p0, p1}, Lo/FZ;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic a_(Ljava/lang/String;)Lo/FX;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->g(Ljava/lang/String;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/FZ;->e(J)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lo/FZ;
    .locals 0

    .line 135
    invoke-virtual {p0}, Lo/FZ;->i()V

    .line 136
    invoke-super {p0, p1}, Lo/FT;->b_(Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/FZ;->c(ILo/FT$TaskDescription;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/FZ;->d(Lo/FT$TaskDescription;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/FT$TaskDescription;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 46
    invoke-virtual {p0, p1, p3}, Lo/FZ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->e(Ljava/lang/CharSequence;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->e(Lo/BiConsumer$Activity;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/String;)Lo/FX;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->b(Ljava/lang/String;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/view/View$OnClickListener;)Lo/FZ;
    .locals 0

    .line 182
    invoke-virtual {p0}, Lo/FZ;->i()V

    .line 183
    invoke-super {p0, p1}, Lo/FT;->a(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/FT$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/FZ;->d(FFIILo/FT$TaskDescription;)V

    return-void
.end method

.method public c(ILo/FT$TaskDescription;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/FZ;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lo/FT;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p2, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/FZ;->c(ILo/FT$TaskDescription;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1}, Lo/FZ;->c(Lo/FT$TaskDescription;)V

    return-void
.end method

.method public c(Lo/FT$TaskDescription;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lo/FT;->e(Lo/TimeUnit;)V

    .line 73
    iget-object v0, p0, Lo/FZ;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic d(FFIILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p5, Lo/FT$TaskDescription;

    invoke-virtual/range {p0 .. p5}, Lo/FZ;->d(FFIILo/FT$TaskDescription;)V

    return-void
.end method

.method public d(FFIILo/FT$TaskDescription;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lo/FZ;->h:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/FT;->d(FFIILo/FT$TaskDescription;)V

    return-void
.end method

.method public d(Lo/FT$TaskDescription;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/FZ;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 54
    invoke-virtual {p0, p1, p2}, Lo/FZ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Landroid/view/View$OnClickListener;)Lo/FX;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/FZ;->c(Landroid/view/View$OnClickListener;)Lo/FZ;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lo/FZ;
    .locals 0

    .line 231
    invoke-super {p0, p1}, Lo/FT;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(J)Lo/FZ;
    .locals 0

    .line 194
    invoke-super {p0, p1, p2}, Lo/FT;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lo/FZ;
    .locals 0

    .line 212
    invoke-super {p0, p1}, Lo/FT;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/FZ;
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lo/FT;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 24
    check-cast p1, Lo/FT$TaskDescription;

    invoke-virtual {p0, p1}, Lo/FZ;->c(Lo/FT$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 279
    :cond_0
    instance-of v1, p1, Lo/FZ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 282
    :cond_1
    invoke-super {p0, p1}, Lo/FT;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 285
    :cond_2
    check-cast p1, Lo/FZ;

    .line 286
    iget-object v1, p0, Lo/FZ;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/FZ;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 289
    :cond_5
    iget-object v1, p0, Lo/FZ;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/FZ;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 292
    :cond_8
    iget-object v1, p0, Lo/FZ;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/FZ;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 295
    :cond_b
    iget-object v1, p0, Lo/FZ;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/FZ;->h:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 298
    :cond_e
    invoke-virtual {p0}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 301
    :cond_10
    invoke-virtual {p0}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 304
    :cond_12
    invoke-virtual {p0}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_a

    :cond_13
    invoke-virtual {p1}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    :goto_a
    return v2

    .line 307
    :cond_14
    invoke-virtual {p0}, Lo/FZ;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {p1}, Lo/FZ;->k()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_c

    :cond_16
    const/4 p1, 0x0

    :goto_c
    if-eq v1, p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public f(Ljava/lang/String;)Lo/FZ;
    .locals 0

    .line 157
    invoke-virtual {p0}, Lo/FZ;->i()V

    .line 158
    invoke-super {p0, p1}, Lo/FT;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lo/FZ;
    .locals 0

    .line 146
    invoke-virtual {p0}, Lo/FZ;->i()V

    .line 147
    invoke-super {p0, p1}, Lo/FT;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 315
    invoke-super {p0}, Lo/FT;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 316
    iget-object v1, p0, Lo/FZ;->a:Lo/AEADBadTagException;

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

    .line 317
    iget-object v1, p0, Lo/FZ;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 318
    iget-object v1, p0, Lo/FZ;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 319
    iget-object v1, p0, Lo/FZ;->h:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 320
    invoke-virtual {p0}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 321
    invoke-virtual {p0}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 322
    invoke-virtual {p0}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 323
    invoke-virtual {p0}, Lo/FZ;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoxArtModel_{videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Lo/FZ;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p0}, Lo/FZ;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", boxshotUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Lo/FZ;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {p0}, Lo/FZ;->k()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-super {p0}, Lo/FT;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
