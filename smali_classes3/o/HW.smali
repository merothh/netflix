.class public Lo/HW;
.super Lo/HN;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/HN;",
        "Lo/IntToLongFunction<",
        "Lo/HN$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/HW;",
            "Lo/HN$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/HW;",
            "Lo/HN$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/HW;",
            "Lo/HN$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/HW;",
            "Lo/HN$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lo/HN;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HW;->b(I)Lo/HW;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/HW;
    .locals 0

    .line 168
    invoke-super {p0, p1, p2}, Lo/HN;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lo/HN$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/HW;->c(Lo/Consumer;Lo/HN$ActionBar;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Lo/HN;->a(Lo/OfPrimitive;)V

    .line 38
    invoke-virtual {p0, p1}, Lo/HW;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lo/HW;->a(J)Lo/HW;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/HW;
    .locals 0

    .line 205
    invoke-super {p0, p1}, Lo/HN;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/HW;
    .locals 0

    .line 212
    invoke-super {p0, p1}, Lo/HN;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lo/HN$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/HW;->b(ILo/HN$ActionBar;)V

    return-void
.end method

.method public b(ILo/HN$ActionBar;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lo/HW;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Lo/HN;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p1, Lo/HN$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/HW;->d(Lo/HN$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HW;->d(Ljava/lang/CharSequence;)Lo/HW;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 22
    invoke-virtual {p0, p1}, Lo/HW;->b(Lo/BiConsumer$Activity;)Lo/HW;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/HN$ActionBar;)V
    .locals 7

    .line 113
    iget-object v0, p0, Lo/HW;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 114
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 116
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/HN;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p5, Lo/HN$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/HW;->c(FFIILo/HN$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p2, Lo/HN$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/HW;->b(ILo/HN$ActionBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HN$ActionBar;

    invoke-virtual {p0, p1}, Lo/HW;->c(Lo/HN$ActionBar;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/HN$ActionBar;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 44
    invoke-virtual {p0, p1, p3}, Lo/HW;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lo/HN$ActionBar;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lo/HN;->e(Lo/TimeUnit;)V

    .line 71
    iget-object v0, p0, Lo/HW;->i:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/HW;
    .locals 0

    .line 186
    invoke-super {p0, p1}, Lo/HN;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 22
    move-object v5, p5

    check-cast v5, Lo/HN$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/HW;->c(FFIILo/HN$ActionBar;)V

    return-void
.end method

.method public d(Lo/HN$ActionBar;I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lo/HW;->h:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 52
    invoke-virtual {p0, p1, p2}, Lo/HW;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/HW;
    .locals 0

    .line 133
    invoke-virtual {p0}, Lo/HW;->i()V

    .line 134
    invoke-super {p0, p1}, Lo/HN;->b(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 22
    check-cast p1, Lo/HN$ActionBar;

    invoke-virtual {p0, p1}, Lo/HW;->c(Lo/HN$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 252
    :cond_0
    instance-of v1, p1, Lo/HW;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 255
    :cond_1
    invoke-super {p0, p1}, Lo/HN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 258
    :cond_2
    check-cast p1, Lo/HW;

    .line 259
    iget-object v1, p0, Lo/HW;->h:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/HW;->h:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 262
    :cond_5
    iget-object v1, p0, Lo/HW;->i:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/HW;->i:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 265
    :cond_8
    iget-object v1, p0, Lo/HW;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/HW;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 268
    :cond_b
    iget-object v1, p0, Lo/HW;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/HW;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 271
    :cond_e
    invoke-virtual {p0}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 274
    :cond_10
    invoke-virtual {p0}, Lo/HW;->p()I

    move-result v1

    invoke-virtual {p1}, Lo/HW;->p()I

    move-result v3

    if-eq v1, v3, :cond_11

    return v2

    .line 277
    :cond_11
    invoke-virtual {p0}, Lo/HW;->l()I

    move-result v1

    invoke-virtual {p1}, Lo/HW;->l()I

    move-result p1

    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 285
    invoke-super {p0}, Lo/HN;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 286
    iget-object v1, p0, Lo/HW;->h:Lo/AEADBadTagException;

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

    .line 287
    iget-object v1, p0, Lo/HW;->i:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 288
    iget-object v1, p0, Lo/HW;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 289
    iget-object v1, p0, Lo/HW;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 290
    invoke-virtual {p0}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 291
    invoke-virtual {p0}, Lo/HW;->p()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 292
    invoke-virtual {p0}, Lo/HW;->l()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TitleModel_{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lo/HW;->r()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", topMargin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lo/HW;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottomSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lo/HW;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-super {p0}, Lo/HN;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
