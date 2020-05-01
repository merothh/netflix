.class public Lo/SH;
.super Lo/SD;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/SD;",
        "Lo/IntToLongFunction<",
        "Lo/SD$ActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/SH;",
            "Lo/SD$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/SH;",
            "Lo/SD$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/SH;",
            "Lo/SD$ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/SH;",
            "Lo/SD$ActionBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lo/SD;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/SH;->e(I)Lo/SH;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p2, Lo/SD$ActionBar;

    invoke-virtual {p0, p1, p2, p3}, Lo/SH;->c(Lo/Consumer;Lo/SD$ActionBar;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lo/SH;->d(J)Lo/SH;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/CharSequence;)Lo/SH;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lo/SH;->i()V

    .line 127
    invoke-super {p0, p1}, Lo/SD;->e(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lo/SD$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SH;->e(ILo/SD$ActionBar;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 20
    check-cast p1, Lo/SD$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SH;->c(Lo/SD$ActionBar;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/SH;->d(Ljava/lang/CharSequence;)Lo/SH;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lo/SH;->e(Lo/BiConsumer$Activity;)Lo/SH;

    move-result-object p1

    return-object p1
.end method

.method public c(FFIILo/SD$ActionBar;)V
    .locals 7

    .line 106
    iget-object v0, p0, Lo/SH;->j:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/SD;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(FFIILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p5, Lo/SD$ActionBar;

    invoke-virtual/range {p0 .. p5}, Lo/SH;->c(FFIILo/SD$ActionBar;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p2, Lo/SD$ActionBar;

    invoke-virtual {p0, p1, p2}, Lo/SH;->e(ILo/SD$ActionBar;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p1, Lo/SD$ActionBar;

    invoke-virtual {p0, p1}, Lo/SH;->c(Lo/SD$ActionBar;)V

    return-void
.end method

.method public c(Lo/Consumer;Lo/SD$ActionBar;I)V
    .locals 0

    return-void
.end method

.method public c(Lo/SD$ActionBar;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lo/SD;->e(Lo/TimeUnit;)V

    .line 62
    iget-object v0, p0, Lo/SH;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c(Lo/SD$ActionBar;I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lo/SH;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public d(I)Lo/SH;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lo/SH;->i()V

    .line 138
    invoke-super {p0, p1}, Lo/SD;->b(I)V

    return-object p0
.end method

.method public d(J)Lo/SH;
    .locals 0

    .line 148
    invoke-super {p0, p1, p2}, Lo/SD;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lo/SH;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lo/SD;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 20
    move-object v5, p5

    check-cast v5, Lo/SD$ActionBar;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/SH;->c(FFIILo/SD$ActionBar;)V

    return-void
.end method

.method public e(I)Lo/SH;
    .locals 0

    .line 186
    invoke-super {p0, p1}, Lo/SD;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/SH;
    .locals 0

    .line 193
    invoke-super {p0, p1}, Lo/SD;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(ILo/SD$ActionBar;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/SH;->a:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lo/SD;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 20
    check-cast p1, Lo/SD$ActionBar;

    invoke-virtual {p0, p1}, Lo/SH;->c(Lo/SD$ActionBar;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 237
    :cond_0
    instance-of v1, p1, Lo/SH;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 240
    :cond_1
    invoke-super {p0, p1}, Lo/SD;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 243
    :cond_2
    check-cast p1, Lo/SH;

    .line 244
    iget-object v1, p0, Lo/SH;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/SH;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 247
    :cond_5
    iget-object v1, p0, Lo/SH;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/SH;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 250
    :cond_8
    iget-object v1, p0, Lo/SH;->a:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/SH;->a:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 253
    :cond_b
    iget-object v1, p0, Lo/SH;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/SH;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 256
    :cond_e
    invoke-virtual {p0}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    invoke-virtual {p1}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 259
    :cond_10
    invoke-virtual {p0}, Lo/SH;->o()I

    move-result v1

    invoke-virtual {p1}, Lo/SH;->o()I

    move-result p1

    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 267
    invoke-super {p0}, Lo/SD;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget-object v1, p0, Lo/SH;->b:Lo/AEADBadTagException;

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

    .line 269
    iget-object v1, p0, Lo/SH;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget-object v1, p0, Lo/SH;->a:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget-object v1, p0, Lo/SH;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 272
    invoke-virtual {p0}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    invoke-virtual {p0}, Lo/SH;->o()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected l()Lo/SD$ActionBar;
    .locals 1

    .line 217
    new-instance v0, Lo/SD$ActionBar;

    invoke-direct {v0}, Lo/SD$ActionBar;-><init>()V

    return-object v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lo/SH;->l()Lo/SD$ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadablesRowTitleModel_{title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lo/SH;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {p0}, Lo/SH;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-super {p0}, Lo/SD;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
