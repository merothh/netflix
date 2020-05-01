.class public Lo/JY;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/Kb;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/Kb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/JY;",
            "Lo/Kb;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/JY;",
            "Lo/Kb;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/BitSet;

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/JY;",
            "Lo/Kb;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private j:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/JY;",
            "Lo/Kb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 25
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/JY;->c:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/JY;->b(Landroid/view/ViewGroup;)Lo/Kb;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/JY;->c(I)Lo/JY;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;)Lo/JY;
    .locals 0

    .line 204
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public a(ILo/Kb;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lo/JY;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 126
    :cond_0
    invoke-virtual {p2, p1}, Lo/Kb;->a(I)V

    .line 127
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lo/Kb;

    invoke-virtual {p0, p1, p2, p3}, Lo/JY;->a(Lo/Consumer;Lo/Kb;I)V

    return-void
.end method

.method public a(Lo/Consumer;Lo/Kb;I)V
    .locals 0

    return-void
.end method

.method protected b()I
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout resources are unsupported for views created programmatically."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lo/JY;->c(J)Lo/JY;

    move-result-object p1

    return-object p1
.end method

.method protected b(Landroid/view/ViewGroup;)Lo/Kb;
    .locals 3

    .line 47
    new-instance v0, Lo/Kb;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/Kb;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Lo/Kb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p2, Lo/Kb;

    invoke-virtual {p0, p1, p2}, Lo/JY;->a(ILo/Kb;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p1, Lo/Kb;

    invoke-virtual {p0, p1, p2}, Lo/JY;->e(Lo/Kb;I)V

    return-void
.end method

.method public b(Lo/Kb;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lo/JY;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/JY;->a(Ljava/lang/CharSequence;)Lo/JY;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 24
    invoke-virtual {p0, p1}, Lo/JY;->d(Lo/BiConsumer$Activity;)Lo/JY;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/JY;
    .locals 1

    .line 222
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Layout resources are unsupported with programmatic views."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(J)Lo/JY;
    .locals 0

    .line 186
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)Lo/JY;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter<",
            "**>;)",
            "Lo/JY;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/JY;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 174
    invoke-virtual {p0}, Lo/JY;->i()V

    .line 175
    iput-object p1, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    return-object p0
.end method

.method public c(FFIILo/Kb;)V
    .locals 7

    .line 146
    iget-object v0, p0, Lo/JY;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 147
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 149
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Kb;

    invoke-virtual {p0, p1}, Lo/JY;->b(Lo/Kb;)V

    return-void
.end method

.method public c(Lo/Kb;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {p1, v0}, Lo/Kb;->setBaseListAdapter(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V

    return-void
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/JY;
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 24
    move-object v5, p5

    check-cast v5, Lo/Kb;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/JY;->c(FFIILo/Kb;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Kb;

    invoke-virtual {p0, p1}, Lo/JY;->c(Lo/Kb;)V

    return-void
.end method

.method protected e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(III)I
    .locals 0

    return p1
.end method

.method public bridge synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 24
    check-cast p1, Lo/Kb;

    invoke-virtual {p0, p1, p2}, Lo/JY;->e(Lo/Kb;Lo/BiConsumer;)V

    return-void
.end method

.method public e(Lo/Kb;I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lo/JY;->a:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 82
    :cond_0
    invoke-virtual {p1}, Lo/Kb;->c()V

    return-void
.end method

.method public e(Lo/Kb;Lo/BiConsumer;)V
    .locals 3

    .line 65
    instance-of v0, p2, Lo/JY;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lo/JY;->c(Lo/Kb;)V

    return-void

    .line 69
    :cond_0
    check-cast p2, Lo/JY;

    .line 70
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p2, p2, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eq v0, v1, :cond_3

    .line 73
    iget-object p2, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {p1, p2}, Lo/Kb;->setBaseListAdapter(Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;)V

    :cond_3
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 272
    :cond_0
    instance-of v1, p1, Lo/JY;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 275
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 278
    :cond_2
    check-cast p1, Lo/JY;

    .line 279
    iget-object v1, p0, Lo/JY;->a:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/JY;->a:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 282
    :cond_5
    iget-object v1, p0, Lo/JY;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/JY;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 285
    :cond_8
    iget-object v1, p0, Lo/JY;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/JY;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 288
    :cond_b
    iget-object v1, p0, Lo/JY;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/JY;->j:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 291
    :cond_e
    iget-object v1, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    iget-object p1, p1, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

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

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 299
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 300
    iget-object v1, p0, Lo/JY;->a:Lo/AEADBadTagException;

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

    .line 301
    iget-object v1, p0, Lo/JY;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 302
    iget-object v1, p0, Lo/JY;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 303
    iget-object v1, p0, Lo/JY;->j:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 304
    iget-object v1, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

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

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EpoxyLomoViewModel_{baseListAdapter_BaseListAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/JY;->i:Lcom/netflix/mediaclient/ui/lolomo/BaseListAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
