.class public Lo/SI;
.super Lo/SL;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SL;",
        "Lo/IntToLongFunction<",
        "Lo/SL$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SI;",
            "Lo/SL$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SI;",
            "Lo/SL$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SI;",
            "Lo/SL$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SI;",
            "Lo/SL$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/SL;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/SI;->e(I)Lo/SI;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/SI;
    .locals 0

    .line 145
    invoke-super {p0, p1}, Lo/SL;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lo/SL$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/SI;->e(Lo/Consumer;Lo/SL$StateListAnimator;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/SI;->d(J)Lo/SI;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/SL$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/SI;->b(ILo/SL$StateListAnimator;)V

    return-void
.end method

.method public b(ILo/SL$StateListAnimator;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/SI;->c:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SL;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/SL$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/SI;->e(Lo/SL$StateListAnimator;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/SI;->a(Ljava/lang/CharSequence;)Lo/SI;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/SI;->d(Lo/BiConsumer$Activity;)Lo/SI;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/SL$StateListAnimator;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lo/SI;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 107
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 109
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/SL;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p5, Lo/SL$StateListAnimator;

    invoke-virtual/range {p0 .. p5}, Lo/SI;->c(FFIILo/SL$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p2, Lo/SL$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/SI;->b(ILo/SL$StateListAnimator;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/SL$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/SI;->c(Lo/SL$StateListAnimator;)V

    return-void
.end method

.method public c(Lo/SL$StateListAnimator;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lo/SL;->e(Lo/TimeUnit;)V

    .line 62
    iget-object v0, p0, Lo/SI;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(J)Lo/SI;
    .locals 0

    .line 127
    invoke-super {p0, p1, p2}, Lo/SL;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/SI;
    .locals 0

    .line 171
    invoke-super {p0, p1}, Lo/SL;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/SL$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SI;->c(FFIILo/SL$StateListAnimator;)V

    return-void
.end method

.method public e(I)Lo/SI;
    .locals 0

    .line 164
    invoke-super {p0, p1}, Lo/SL;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/Consumer;Lo/SL$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public e(Lo/SL$StateListAnimator;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/SI;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/SL$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/SI;->c(Lo/SL$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 213
    :cond_0
    instance-of v1, p1, Lo/SI;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 216
    :cond_1
    invoke-super {p0, p1}, Lo/SL;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 219
    :cond_2
    check-cast p1, Lo/SI;

    .line 220
    iget-object v1, p0, Lo/SI;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SI;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 223
    :cond_5
    iget-object v1, p0, Lo/SI;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SI;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 226
    :cond_8
    iget-object v1, p0, Lo/SI;->c:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SI;->c:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 229
    :cond_b
    iget-object v1, p0, Lo/SI;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object p1, p1, Lo/SI;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_7

    :cond_d
    const/4 p1, 0x0

    :goto_7
    if-eq v1, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method protected h()Lo/SL$StateListAnimator;
    .locals 1

    .line 195
    new-instance v0, Lo/SL$StateListAnimator;

    invoke-direct {v0}, Lo/SL$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 237
    invoke-super {p0}, Lo/SL;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-object v1, p0, Lo/SI;->b:Lo/AEADBadTagException;

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

    .line 239
    iget-object v1, p0, Lo/SI;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-object v1, p0, Lo/SI;->c:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-object v1, p0, Lo/SI;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/SI;->h()Lo/SL$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedEpisodesHeaderModel_{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-super {p0}, Lo/SL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
