.class public Lo/aaN;
.super Lo/BiConsumer;
.source ""

# interfaces
.implements Lo/IntToLongFunction;
.implements Lo/aaP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/BiConsumer<",
        "Lo/aaL;",
        ">;",
        "Lo/IntToLongFunction<",
        "Lo/aaL;",
        ">;",
        "Lo/aaP;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/BitSet;

.field private b:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/aaN;",
            "Lo/aaL;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/aaN;",
            "Lo/aaL;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaN;",
            "Lo/aaL;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lo/AR;

.field private h:I

.field private i:I

.field private j:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/aaN;",
            "Lo/aaL;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field private l:I

.field private n:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lo/BiConsumer;-><init>()V

    .line 31
    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lo/aaN;->h:I

    .line 47
    iput v0, p0, Lo/aaN;->i:I

    .line 61
    iput v0, p0, Lo/aaN;->l:I

    const/4 v0, 0x0

    .line 65
    check-cast v0, Lio/reactivex/SingleObserver;

    iput-object v0, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->i(I)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/aaN;
    .locals 2

    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 281
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 282
    iput-object p1, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    return-object p0

    .line 278
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "tih cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lo/EncryptedPrivateKeyInfo;)Lo/aaN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/aaN;",
            "Lo/aaL;",
            ">;)",
            "Lo/aaN;"
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 215
    iput-object p1, p0, Lo/aaN;->f:Lo/EncryptedPrivateKeyInfo;

    return-object p0
.end method

.method public a(ILo/aaL;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/aaN;->j:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p2, Lo/aaL;

    invoke-virtual {p0, p1, p2, p3}, Lo/aaN;->b(Lo/Consumer;Lo/aaL;I)V

    return-void
.end method

.method public a(Lo/OfPrimitive;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lo/BiConsumer;->a(Lo/OfPrimitive;)V

    .line 71
    invoke-virtual {p0, p1}, Lo/aaN;->e(Lo/OfPrimitive;)V

    .line 72
    iget-object p1, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setTih"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "A value is required for setVideo"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lo/aaL;Lo/BiConsumer;)V
    .locals 4

    .line 99
    instance-of v0, p2, Lo/aaN;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lo/aaN;->b(Lo/aaL;)V

    return-void

    .line 103
    :cond_0
    check-cast p2, Lo/aaN;

    .line 104
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 106
    iget v0, p0, Lo/aaN;->l:I

    iget v1, p2, Lo/aaN;->l:I

    if-eq v0, v1, :cond_1

    .line 107
    invoke-virtual {p1, v0}, Lo/aaL;->setRank(I)V

    .line 110
    :cond_1
    iget-object v0, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p2, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eq v0, v3, :cond_4

    .line 111
    iget-object v0, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    invoke-virtual {p1, v0}, Lo/aaL;->setSearchResultViewAssetLoaded(Lio/reactivex/SingleObserver;)V

    .line 114
    :cond_4
    iget-object v0, p0, Lo/aaN;->g:Lo/AR;

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p2, Lo/aaN;->g:Lo/AR;

    if-nez v3, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-eq v0, v3, :cond_7

    .line 115
    iget-object v0, p0, Lo/aaN;->g:Lo/AR;

    invoke-virtual {p1, v0}, Lo/aaL;->setVideo(Lo/AR;)V

    .line 118
    :cond_7
    iget-object v0, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    iget-object v3, p2, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    if-eq v0, v1, :cond_a

    .line 119
    iget-object v0, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p1, v0}, Lo/aaL;->setTih(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 122
    :cond_a
    iget v0, p0, Lo/aaN;->h:I

    iget v1, p2, Lo/aaN;->h:I

    if-eq v0, v1, :cond_b

    .line 123
    invoke-virtual {p1, v0}, Lo/aaL;->setBoxArtWidth(I)V

    .line 126
    :cond_b
    iget v0, p0, Lo/aaN;->i:I

    iget p2, p2, Lo/aaN;->i:I

    if-eq v0, p2, :cond_c

    .line 127
    invoke-virtual {p1, v0}, Lo/aaL;->setBoxArtHeight(I)V

    :cond_c
    return-void
.end method

.method protected b()I
    .locals 1

    .line 397
    sget v0, Lo/aax$TaskDescription;->e:I

    return v0
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lo/aaN;->d(J)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(I)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->g(I)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->e(Ljava/lang/CharSequence;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(Lo/EncryptedPrivateKeyInfo;)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->a(Lo/EncryptedPrivateKeyInfo;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Lo/aaL;

    invoke-virtual {p0, p1, p2}, Lo/aaN;->a(ILo/aaL;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaL;

    invoke-virtual {p0, p1, p2}, Lo/aaN;->d(Lo/aaL;I)V

    return-void
.end method

.method public b(Lo/Consumer;Lo/aaL;I)V
    .locals 0

    const-string p1, "The model was changed between being added to the controller and being bound."

    .line 83
    invoke-virtual {p0, p1, p3}, Lo/aaN;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public b(Lo/aaL;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lo/BiConsumer;->d(Ljava/lang/Object;)V

    .line 89
    iget v0, p0, Lo/aaN;->l:I

    invoke-virtual {p1, v0}, Lo/aaL;->setRank(I)V

    .line 90
    iget-object v0, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    invoke-virtual {p1, v0}, Lo/aaL;->setSearchResultViewAssetLoaded(Lio/reactivex/SingleObserver;)V

    .line 91
    iget-object v0, p0, Lo/aaN;->g:Lo/AR;

    invoke-virtual {p1, v0}, Lo/aaL;->setVideo(Lo/AR;)V

    .line 92
    iget-object v0, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {p1, v0}, Lo/aaL;->setTih(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    .line 93
    iget v0, p0, Lo/aaN;->h:I

    invoke-virtual {p1, v0}, Lo/aaL;->setBoxArtWidth(I)V

    .line 94
    iget v0, p0, Lo/aaN;->i:I

    invoke-virtual {p1, v0}, Lo/aaL;->setBoxArtHeight(I)V

    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->e(Ljava/lang/CharSequence;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->d(Lo/BiConsumer$Activity;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/aaN;
    .locals 2

    .line 225
    iget-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 226
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 227
    iput p1, p0, Lo/aaN;->h:I

    return-object p0
.end method

.method public c(Lio/reactivex/SingleObserver;)Lo/aaN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
            "Lcom/netflix/android/imageloader/api/ShowImageRequest$Activity;",
            ">;)",
            "Lo/aaN;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 315
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 316
    iput-object p1, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    return-object p0
.end method

.method public c(Lo/AR;)Lo/aaN;
    .locals 2

    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 261
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 262
    iput-object p1, p0, Lo/aaN;->g:Lo/AR;

    return-object p0

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "video cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaL;

    invoke-virtual {p0, p1}, Lo/aaN;->d(Lo/aaL;)V

    return-void
.end method

.method public d(J)Lo/aaN;
    .locals 0

    .line 327
    invoke-super {p0, p1, p2}, Lo/BiConsumer;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public d(Lo/BiConsumer$Activity;)Lo/aaN;
    .locals 0

    .line 372
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic d(I)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->c(I)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(Lo/AR;)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->c(Lo/AR;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 30
    move-object v5, p5

    check-cast v5, Lo/aaL;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/aaN;->e(FFIILo/aaL;)V

    return-void
.end method

.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaL;

    invoke-virtual {p0, p1}, Lo/aaN;->b(Lo/aaL;)V

    return-void
.end method

.method public d(Lo/aaL;)V
    .locals 1

    .line 156
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lo/aaN;->b:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Lo/aaL;I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lo/aaN;->c:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    const-string v0, "The model was changed during the bind call."

    .line 136
    invoke-virtual {p0, v0, p2}, Lo/aaN;->d(Ljava/lang/String;I)V

    .line 137
    invoke-virtual {p1}, Lo/aaL;->p()V

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lo/aaN;
    .locals 0

    .line 345
    invoke-super {p0, p1}, Lo/BiConsumer;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic e(I)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->h(I)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public synthetic e(Lio/reactivex/SingleObserver;)Lo/aaP;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lo/aaN;->c(Lio/reactivex/SingleObserver;)Lo/aaN;

    move-result-object p1

    return-object p1
.end method

.method public e(FFIILo/aaL;)V
    .locals 7

    .line 200
    iget-object v0, p0, Lo/aaN;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 201
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 203
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/BiConsumer;->d(FFIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic e(Ljava/lang/Object;Lo/BiConsumer;)V
    .locals 0

    .line 30
    check-cast p1, Lo/aaL;

    invoke-virtual {p0, p1, p2}, Lo/aaN;->a(Lo/aaL;Lo/BiConsumer;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 422
    :cond_0
    instance-of v1, p1, Lo/aaN;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 425
    :cond_1
    invoke-super {p0, p1}, Lo/BiConsumer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 428
    :cond_2
    check-cast p1, Lo/aaN;

    .line 429
    iget-object v1, p0, Lo/aaN;->c:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/aaN;->c:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 432
    :cond_5
    iget-object v1, p0, Lo/aaN;->b:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/aaN;->b:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 435
    :cond_8
    iget-object v1, p0, Lo/aaN;->j:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/aaN;->j:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 438
    :cond_b
    iget-object v1, p0, Lo/aaN;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/aaN;->f:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 441
    :cond_e
    iget-object v1, p0, Lo/aaN;->g:Lo/AR;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_8

    :cond_f
    const/4 v1, 0x0

    :goto_8
    iget-object v3, p1, Lo/aaN;->g:Lo/AR;

    if-nez v3, :cond_10

    const/4 v3, 0x1

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    :goto_9
    if-eq v1, v3, :cond_11

    return v2

    .line 444
    :cond_11
    iget-object v1, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_a

    :cond_12
    const/4 v1, 0x0

    :goto_a
    iget-object v3, p1, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_b

    :cond_13
    const/4 v3, 0x0

    :goto_b
    if-eq v1, v3, :cond_14

    return v2

    .line 447
    :cond_14
    iget-object v1, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_c

    :cond_15
    const/4 v1, 0x0

    :goto_c
    iget-object p1, p1, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_d

    :cond_16
    const/4 p1, 0x0

    :goto_d
    if-eq v1, p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public g(I)Lo/aaN;
    .locals 2

    .line 297
    iget-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 298
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 299
    iput p1, p0, Lo/aaN;->l:I

    return-object p0
.end method

.method public h()Lo/AR;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/aaN;->g:Lo/AR;

    return-object v0
.end method

.method public h(I)Lo/aaN;
    .locals 2

    .line 241
    iget-object v0, p0, Lo/aaN;->a:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 242
    invoke-virtual {p0}, Lo/aaN;->i()V

    .line 243
    iput p1, p0, Lo/aaN;->i:I

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 455
    invoke-super {p0}, Lo/BiConsumer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 456
    iget-object v1, p0, Lo/aaN;->c:Lo/AEADBadTagException;

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

    .line 457
    iget-object v1, p0, Lo/aaN;->b:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 458
    iget-object v1, p0, Lo/aaN;->j:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 459
    iget-object v1, p0, Lo/aaN;->f:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 460
    iget-object v1, p0, Lo/aaN;->g:Lo/AR;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 461
    iget-object v1, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 462
    iget-object v1, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public i(I)Lo/aaN;
    .locals 0

    .line 365
    invoke-super {p0, p1}, Lo/BiConsumer;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public m()I
    .locals 1

    .line 304
    iget v0, p0, Lo/aaN;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchTitleResultViewModel_{boxArtWidth_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/aaN;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxArtHeight_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/aaN;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_Video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaN;->g:Lo/AR;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tih_TrackingInfoHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaN;->k:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rank_Int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/aaN;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchResultViewAssetLoaded_SingleObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/aaN;->n:Lio/reactivex/SingleObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-super {p0}, Lo/BiConsumer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
