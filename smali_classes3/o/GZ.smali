.class public Lo/GZ;
.super Lo/GV;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/GV;",
        "Lo/IntToLongFunction<",
        "Lo/GV$TaskDescription;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/GZ;",
            "Lo/GV$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/GZ;",
            "Lo/GV$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/GZ;",
            "Lo/GV$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/GZ;",
            "Lo/GV$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/GV;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/GZ;->c(I)Lo/GZ;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/GZ;
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lo/GV;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/GZ;
    .locals 0

    .line 191
    invoke-super {p0, p1}, Lo/GV;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/GZ;->b(Lo/Consumer;Lo/GV$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/GV;->a(Lo/OfPrimitive;)V

    .line 38
    invoke-virtual {p0, p1}, Lo/GZ;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/GZ;->d(J)Lo/GZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/GZ;->c(ILo/GV$TaskDescription;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/GZ;->d(Lo/GV$TaskDescription;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/GV$TaskDescription;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 44
    invoke-virtual {p0, p1, p3}, Lo/GZ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/GZ;->a(Ljava/lang/CharSequence;)Lo/GZ;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/GZ;->a(Lo/BiConsumer$Activity;)Lo/GZ;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/GZ;
    .locals 0

    .line 185
    invoke-super {p0, p1}, Lo/GV;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/GV$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/GZ;->e(FFIILo/GV$TaskDescription;)V

    return-void
.end method

.method public c(ILo/GV$TaskDescription;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/GZ;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lo/GV;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/GZ;->c(ILo/GV$TaskDescription;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1}, Lo/GZ;->e(Lo/GV$TaskDescription;)V

    return-void
.end method

.method public d(J)Lo/GZ;
    .locals 0

    .line 149
    invoke-super {p0, p1, p2}, Lo/GV;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/GV$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/GZ;->e(FFIILo/GV$TaskDescription;)V

    return-void
.end method

.method public d(Lo/GV$TaskDescription;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/GZ;->h:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/GZ;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(FFIILo/GV$TaskDescription;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lo/GZ;->j:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/GV;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public e(Lo/GV$TaskDescription;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lo/GV;->e(Lo/TimeUnit;)V

    .line 72
    iget-object v0, p0, Lo/GZ;->f:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/GV$TaskDescription;

    invoke-virtual {p0, p1}, Lo/GZ;->e(Lo/GV$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 229
    :cond_0
    instance-of v1, p1, Lo/GZ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 232
    :cond_1
    invoke-super {p0, p1}, Lo/GV;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 235
    :cond_2
    check-cast p1, Lo/GZ;

    .line 236
    iget-object v1, p0, Lo/GZ;->h:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/GZ;->h:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 239
    :cond_5
    iget-object v1, p0, Lo/GZ;->f:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/GZ;->f:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 242
    :cond_8
    iget-object v1, p0, Lo/GZ;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/GZ;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 245
    :cond_b
    iget-object v1, p0, Lo/GZ;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/GZ;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 248
    :cond_e
    invoke-virtual {p0}, Lo/GZ;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/GZ;->l()I

    move-result p1

    if-eq v1, p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 256
    invoke-super {p0}, Lo/GV;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-object v1, p0, Lo/GZ;->h:Lo/AEADBadTagException;

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

    .line 258
    iget-object v1, p0, Lo/GZ;->f:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Lo/GZ;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-object v1, p0, Lo/GZ;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 261
    invoke-virtual {p0}, Lo/GZ;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CtaSpaceModel_{bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p0}, Lo/GZ;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-super {p0}, Lo/GV;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method