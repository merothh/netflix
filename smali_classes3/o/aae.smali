.class public Lo/aae;
.super Lo/aab;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aaf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aab;",
        "Lo/IntToLongFunction<",
        "Lo/aab$Activity;",
        ">;",
        "Lo/aaf;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aae;",
            "Lo/aab$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aae;",
            "Lo/aab$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aae;",
            "Lo/aab$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aae;",
            "Lo/aab$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lo/aab;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/aae;->c(I)Lo/aae;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/aae;
    .locals 0

    .line 136
    invoke-super {p0, p1, p2}, Lo/aab;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(Lo/BiConsumer$Activity;)Lo/aae;
    .locals 0

    .line 179
    invoke-super {p0, p1}, Lo/aab;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(FFIILo/aab$Activity;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lo/aae;->j:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/aab;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p2, Lo/aab$Activity;

    invoke-virtual {p0, p1, p2, p3}, Lo/aae;->e(Lo/Consumer;Lo/aab$Activity;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lo/aab;->a(Lo/OfPrimitive;)V

    .line 37
    invoke-virtual {p0, p1}, Lo/aae;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public a(Lo/aab$Activity;I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lo/aae;->b:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 51
    invoke-virtual {p0, p1, p2}, Lo/aae;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lo/aae;->a(J)Lo/aae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/aaf;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/aae;->e(Ljava/lang/CharSequence;)Lo/aae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p2, Lo/aab$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aae;->d(ILo/aab$Activity;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 21
    check-cast p1, Lo/aab$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aae;->a(Lo/aab$Activity;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/aae;->e(Ljava/lang/CharSequence;)Lo/aae;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/aae;->a(Lo/BiConsumer$Activity;)Lo/aae;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/aae;
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lo/aab;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lo/AEADBadTagException;)Lo/aae;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AEADBadTagException<",
            "Lo/aae;",
            "Lo/aab$Activity;",
            ">;)",
            "Lo/aae;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lo/aae;->i()V

    .line 64
    iput-object p1, p0, Lo/aae;->b:Lo/AEADBadTagException;

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 21
    move-object v5, p5

    check-cast v5, Lo/aab$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aae;->a(FFIILo/aab$Activity;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p2, Lo/aab$Activity;

    invoke-virtual {p0, p1, p2}, Lo/aae;->d(ILo/aab$Activity;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p1, Lo/aab$Activity;

    invoke-virtual {p0, p1}, Lo/aae;->e(Lo/aab$Activity;)V

    return-void
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 21
    move-object v5, p5

    check-cast v5, Lo/aab$Activity;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aae;->a(FFIILo/aab$Activity;)V

    return-void
.end method

.method public d(ILo/aab$Activity;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/aae;->a:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lo/aab;->d(ILo/aab$Activity;)V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/aae;
    .locals 0

    .line 154
    invoke-super {p0, p1}, Lo/aab;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/AEADBadTagException;)Lo/aaf;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lo/aae;->c(Lo/AEADBadTagException;)Lo/aae;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/Consumer;Lo/aab$Activity;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 43
    invoke-virtual {p0, p1, p3}, Lo/aae;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 21
    check-cast p1, Lo/aab$Activity;

    invoke-virtual {p0, p1}, Lo/aae;->e(Lo/aab$Activity;)V

    return-void
.end method

.method public e(Lo/aab$Activity;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lo/aab;->e(Lo/TimeUnit;)V

    .line 71
    iget-object v0, p0, Lo/aae;->c:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 72
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 216
    :cond_0
    instance-of v1, p1, Lo/aae;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 219
    :cond_1
    invoke-super {p0, p1}, Lo/aab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 222
    :cond_2
    check-cast p1, Lo/aae;

    .line 223
    iget-object v1, p0, Lo/aae;->b:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aae;->b:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 226
    :cond_5
    iget-object v1, p0, Lo/aae;->c:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aae;->c:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 229
    :cond_8
    iget-object v1, p0, Lo/aae;->a:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aae;->a:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 232
    :cond_b
    iget-object v1, p0, Lo/aae;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object p1, p1, Lo/aae;->j:Lo/EncryptedPrivateKeyInfo;

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

.method public hashCode()I
    .locals 4

    .line 240
    invoke-super {p0}, Lo/aab;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 241
    iget-object v1, p0, Lo/aae;->b:Lo/AEADBadTagException;

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

    .line 242
    iget-object v1, p0, Lo/aae;->c:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 243
    iget-object v1, p0, Lo/aae;->a:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 244
    iget-object v1, p0, Lo/aae;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadingShimmeringModel_{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-super {p0}, Lo/aab;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
