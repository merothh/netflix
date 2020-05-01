.class public Lo/HE;
.super Lo/HB;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HB;",
        "Lo/IntToLongFunction<",
        "Lo/HB$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HE;",
            "Lo/HB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HE;",
            "Lo/HB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HE;",
            "Lo/HB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HE;",
            "Lo/HB$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/HB;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HE;->g(I)Lo/HE;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/HE;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lo/HE;->i()V

    .line 137
    invoke-super {p0, p1}, Lo/HB;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public a(FFIILo/HB$TaskDescription;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/HE;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 117
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 119
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HB;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public a(ILo/HB$TaskDescription;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/HE;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HB;->a(ILo/HB$TaskDescription;)V

    return-void
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/HE;->a(Lo/Consumer;Lo/HB$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/HB$TaskDescription;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 44
    invoke-virtual {p0, p1, p3}, Lo/HE;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/HB;->a(Lo/OfPrimitive;)V

    .line 38
    invoke-virtual {p0, p1}, Lo/HE;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/HE;->e(J)Lo/HE;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/HE;
    .locals 0

    .line 199
    invoke-super {p0, p1}, Lo/HB;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HE;->a(ILo/HB$TaskDescription;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HE;->d(Lo/HB$TaskDescription;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HE;->b(Ljava/lang/CharSequence;)Lo/HE;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HE;->d(Lo/BiConsumer$Activity;)Lo/HE;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/HB$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HE;->a(FFIILo/HB$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/HE;->a(ILo/HB$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HE;->d(Lo/HB$TaskDescription;)V

    return-void
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/HE;
    .locals 0

    .line 225
    invoke-super {p0, p1}, Lo/HB;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/HB$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HE;->a(FFIILo/HB$TaskDescription;)V

    return-void
.end method

.method public d(Lo/HB$TaskDescription;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lo/HB;->e(Lo/TimeUnit;)V

    .line 72
    iget-object v0, p0, Lo/HE;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lo/HB$TaskDescription;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/HE;->j:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/HE;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(J)Lo/HE;
    .locals 0

    .line 181
    invoke-super {p0, p1, p2}, Lo/HB;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HB$TaskDescription;

    invoke-virtual {p0, p1}, Lo/HE;->d(Lo/HB$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 266
    :cond_0
    instance-of v1, p1, Lo/HE;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 269
    :cond_1
    invoke-super {p0, p1}, Lo/HB;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 272
    :cond_2
    check-cast p1, Lo/HE;

    .line 273
    iget-object v1, p0, Lo/HE;->j:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HE;->j:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 276
    :cond_5
    iget-object v1, p0, Lo/HE;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HE;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 279
    :cond_8
    iget-object v1, p0, Lo/HE;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HE;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 282
    :cond_b
    iget-object v1, p0, Lo/HE;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HE;->i:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 285
    :cond_e
    invoke-virtual {p0}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 288
    :cond_10
    invoke-virtual {p0}, Lo/HE;->r()I

    move-result v1

    invoke-virtual {p1}, Lo/HE;->r()I

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 291
    :cond_11
    invoke-virtual {p0}, Lo/HE;->u()I

    move-result v1

    invoke-virtual {p1}, Lo/HE;->u()I

    move-result v3

    if-eq v1, v3, :cond_12

    return v2

    .line 294
    :cond_12
    invoke-virtual {p0}, Lo/HE;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HE;->l()I

    move-result p1

    if-eq v1, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public f(I)Lo/HE;
    .locals 0

    .line 147
    invoke-virtual {p0}, Lo/HE;->i()V

    .line 148
    invoke-super {p0, p1}, Lo/HB;->c(I)V

    return-object p0
.end method

.method public g(I)Lo/HE;
    .locals 0

    .line 218
    invoke-super {p0, p1}, Lo/HB;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public h(I)Lo/HE;
    .locals 0

    .line 157
    invoke-virtual {p0}, Lo/HE;->i()V

    .line 158
    invoke-super {p0, p1}, Lo/HB;->b(I)V

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 302
    invoke-super {p0}, Lo/HB;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    iget-object v1, p0, Lo/HE;->j:Lo/AEADBadTagException;

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

    .line 304
    iget-object v1, p0, Lo/HE;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 305
    iget-object v1, p0, Lo/HE;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 306
    iget-object v1, p0, Lo/HE;->i:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 307
    invoke-virtual {p0}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 308
    invoke-virtual {p0}, Lo/HE;->r()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 309
    invoke-virtual {p0}, Lo/HE;->u()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 310
    invoke-virtual {p0}, Lo/HE;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationToolbarModel_{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Lo/HE;->q()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {p0}, Lo/HE;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unreadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p0}, Lo/HE;->u()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Lo/HE;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-super {p0}, Lo/HB;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
