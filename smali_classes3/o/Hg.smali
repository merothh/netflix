.class public Lo/Hg;
.super Lo/He;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/Hh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/He;",
        "Lo/IntToLongFunction<",
        "Lo/He$TaskDescription;",
        ">;",
        "Lo/Hh;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Hg;",
            "Lo/He$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Hg;",
            "Lo/He$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Hg;",
            "Lo/He$TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Hg;",
            "Lo/He$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lo/He;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hg;->b(I)Lo/Hg;

    move-result-object p1

    return-object p1
.end method

.method public a(Lo/alA;)Lo/Hg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/alA<",
            "-",
            "Landroid/view/View;",
            "Lo/akj;",
            ">;)",
            "Lo/Hg;"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lo/Hg;->i()V

    .line 137
    iput-object p1, p0, Lo/He;->c:Lo/alA;

    return-object p0
.end method

.method public a(FFIILo/He$TaskDescription;)V
    .locals 7

    .line 116
    iget-object v0, p0, Lo/Hg;->g:Lo/EncryptedPrivateKeyInfo;

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
    invoke-super/range {p0 .. p5}, Lo/He;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p2, Lo/He$TaskDescription;

    invoke-virtual {p0, p1, p2, p3}, Lo/Hg;->e(Lo/Consumer;Lo/He$TaskDescription;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lo/He;->a(Lo/OfPrimitive;)V

    .line 41
    invoke-virtual {p0, p1}, Lo/Hg;->e(Lo/OfPrimitive;)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lo/Hg;->e(J)Lo/Hg;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Hg;
    .locals 0

    .line 184
    invoke-super {p0, p1}, Lo/He;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(Lo/alA;)Lo/Hh;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hg;->a(Lo/alA;)Lo/Hg;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lo/He$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hg;->b(ILo/He$TaskDescription;)V

    return-void
.end method

.method public b(ILo/He$TaskDescription;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lo/Hg;->f:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Lo/He;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 25
    check-cast p1, Lo/He$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hg;->d(Lo/He$TaskDescription;I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hg;->d(Ljava/lang/CharSequence;)Lo/Hg;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hg;->e(Lo/BiConsumer$Activity;)Lo/Hg;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/He$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hg;->a(FFIILo/He$TaskDescription;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p2, Lo/He$TaskDescription;

    invoke-virtual {p0, p1, p2}, Lo/Hg;->b(ILo/He$TaskDescription;)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Lo/He$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Hg;->c(Lo/He$TaskDescription;)V

    return-void
.end method

.method public c(Lo/He$TaskDescription;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lo/He;->e(Lo/TimeUnit;)V

    .line 74
    iget-object v0, p0, Lo/Hg;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)Lo/Hg;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lo/He;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 25
    move-object v5, p5

    check-cast v5, Lo/He$TaskDescription;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Hg;->a(FFIILo/He$TaskDescription;)V

    return-void
.end method

.method public d(Lo/He$TaskDescription;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lo/Hg;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string p1, "The model was changed during the bind call."

    .line 55
    invoke-virtual {p0, p1, p2}, Lo/Hg;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public e(J)Lo/Hg;
    .locals 0

    .line 148
    invoke-super {p0, p1, p2}, Lo/He;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/Hg;
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lo/He;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Ljava/lang/CharSequence;)Lo/Hh;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lo/Hg;->d(Ljava/lang/CharSequence;)Lo/Hg;

    move-result-object p1

    return-object p1
.end method

.method public e(Lo/Consumer;Lo/He$TaskDescription;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 47
    invoke-virtual {p0, p1, p3}, Lo/Hg;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 25
    check-cast p1, Lo/He$TaskDescription;

    invoke-virtual {p0, p1}, Lo/Hg;->c(Lo/He$TaskDescription;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 228
    :cond_0
    instance-of v1, p1, Lo/Hg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 231
    :cond_1
    invoke-super {p0, p1}, Lo/He;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 234
    :cond_2
    check-cast p1, Lo/Hg;

    .line 235
    iget-object v1, p0, Lo/Hg;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Hg;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 238
    :cond_5
    iget-object v1, p0, Lo/Hg;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Hg;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 241
    :cond_8
    iget-object v1, p0, Lo/Hg;->f:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Hg;->f:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 244
    :cond_b
    iget-object v1, p0, Lo/Hg;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Hg;->g:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 247
    :cond_e
    iget-object v1, p0, Lo/Hg;->c:Lo/alA;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    iget-object p1, p1, Lo/Hg;->c:Lo/alA;

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_9

    :cond_10
    const/4 p1, 0x0

    :goto_9
    if-eq v1, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 255
    invoke-super {p0}, Lo/He;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 256
    iget-object v1, p0, Lo/Hg;->a:Lo/AEADBadTagException;

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

    .line 257
    iget-object v1, p0, Lo/Hg;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 258
    iget-object v1, p0, Lo/Hg;->f:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 259
    iget-object v1, p0, Lo/Hg;->g:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 260
    iget-object v1, p0, Lo/Hg;->c:Lo/alA;

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorModel_{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-super {p0}, Lo/He;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
