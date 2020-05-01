.class public Lo/acq;
.super Lo/acp;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aco;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/acp;",
        "Lo/IntToLongFunction<",
        "Lo/DoubleStream;",
        ">;",
        "Lo/aco;"
    }
.end annotation


# instance fields
.field private a:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/acq;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/acq;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/acq;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/acq;",
            "Lo/DoubleStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lo/BiConsumer<",
            "*>;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lo/acp;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/acq;->d(I)Lo/acq;

    move-result-object p1

    return-object p1
.end method

.method public a(J)Lo/acq;
    .locals 0

    .line 129
    invoke-super {p0, p1, p2}, Lo/acp;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public a(FFIILo/DoubleStream;)V
    .locals 7

    .line 108
    iget-object v0, p0, Lo/acq;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 109
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 111
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/acp;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p2, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2, p3}, Lo/acq;->d(Lo/Consumer;Lo/DoubleStream;I)V

    return-void
.end method

.method public a(Lo/DoubleStream;I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lo/acq;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lo/acq;->a(J)Lo/acq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p2, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/acq;->c(ILo/DoubleStream;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 23
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/acq;->a(Lo/DoubleStream;I)V

    return-void
.end method

.method public b(Lo/DoubleStream;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Lo/acp;->b(Lo/DoubleStream;)V

    .line 65
    iget-object v0, p0, Lo/acq;->a:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/acq;->e(Ljava/lang/CharSequence;)Lo/acq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lo/acq;->e(Lo/BiConsumer$Activity;)Lo/acq;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/DoubleStream;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/acq;->a(FFIILo/DoubleStream;)V

    return-void
.end method

.method public c(ILo/DoubleStream;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lo/acq;->g:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 89
    :cond_0
    invoke-super {p0, p1, p2}, Lo/acp;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public bridge synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p2, Lo/DoubleStream;

    invoke-virtual {p0, p1, p2}, Lo/acq;->c(ILo/DoubleStream;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/acq;->b(Lo/DoubleStream;)V

    return-void
.end method

.method public d(I)Lo/acq;
    .locals 0

    .line 166
    invoke-super {p0, p1}, Lo/acp;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 23
    move-object v5, p5

    check-cast v5, Lo/DoubleStream;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/acq;->a(FFIILo/DoubleStream;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/DoubleStream;I)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/acq;
    .locals 0

    .line 147
    invoke-super {p0, p1}, Lo/acp;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public e(Lo/BiConsumer$Activity;)Lo/acq;
    .locals 0

    .line 173
    invoke-super {p0, p1}, Lo/acp;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 23
    check-cast p1, Lo/DoubleStream;

    invoke-virtual {p0, p1}, Lo/acq;->b(Lo/DoubleStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 210
    :cond_0
    instance-of v1, p1, Lo/acq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 213
    :cond_1
    invoke-super {p0, p1}, Lo/acp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 216
    :cond_2
    check-cast p1, Lo/acq;

    .line 217
    iget-object v1, p0, Lo/acq;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/acq;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 220
    :cond_5
    iget-object v1, p0, Lo/acq;->a:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/acq;->a:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 223
    :cond_8
    iget-object v1, p0, Lo/acq;->g:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/acq;->g:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 226
    :cond_b
    iget-object v1, p0, Lo/acq;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object p1, p1, Lo/acq;->f:Lo/EncryptedPrivateKeyInfo;

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

    .line 234
    invoke-super {p0}, Lo/acp;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 235
    iget-object v1, p0, Lo/acq;->c:Lo/AEADBadTagException;

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

    .line 236
    iget-object v1, p0, Lo/acq;->a:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 237
    iget-object v1, p0, Lo/acq;->g:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 238
    iget-object v1, p0, Lo/acq;->f:Lo/EncryptedPrivateKeyInfo;

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

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlanSelectFooterEpoxyModelGroup_{}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-super {p0}, Lo/acp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
