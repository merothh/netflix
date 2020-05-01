.class public Lo/Qv;
.super Lo/Qt;
.source ""

# interfaces
.implements Lo/IntToLongFunction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Qt;",
        "Lo/IntToLongFunction<",
        "Lo/Qt$StateListAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Lo/AEADBadTagException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/AEADBadTagException<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lo/CipherSpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherSpi<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lo/CipherInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/CipherInputStream<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lo/EncryptedPrivateKeyInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EncryptedPrivateKeyInfo<",
            "Lo/Qv;",
            "Lo/Qt$StateListAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lo/Qt;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(I)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/Qv;->h(I)Lo/Qv;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View$OnClickListener;)Lo/Qv;
    .locals 0

    .line 322
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 323
    invoke-super {p0, p1}, Lo/Qt;->c(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public a(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/Qv;
    .locals 0

    .line 214
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 215
    invoke-super {p0, p1}, Lo/Qt;->d(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V

    return-object p0
.end method

.method public a(FFIILo/Qt$StateListAnimator;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lo/Qv;->m:Lo/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 118
    invoke-interface/range {v0 .. v6}, Lo/EncryptedPrivateKeyInfo;->a(Lo/BiConsumer;Ljava/lang/Object;FFII)V

    .line 120
    :cond_0
    invoke-super/range {p0 .. p5}, Lo/Qt;->c(FFIILo/TimeUnit;)V

    return-void
.end method

.method public synthetic a(Lo/Consumer;Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2, p3}, Lo/Qv;->d(Lo/Consumer;Lo/Qt$StateListAnimator;I)V

    return-void
.end method

.method public synthetic b(J)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lo/Qv;->c(J)Lo/Qv;

    move-result-object p1

    return-object p1
.end method

.method public b(I)Lo/Qv;
    .locals 0

    .line 235
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 236
    invoke-super {p0, p1}, Lo/Qt;->d(I)V

    return-object p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Lo/Qv;
    .locals 0

    .line 270
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 271
    invoke-super {p0, p1}, Lo/Qt;->e(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lo/Qv;
    .locals 0

    .line 408
    invoke-super {p0, p1}, Lo/Qt;->c(Ljava/lang/CharSequence;)Lo/BiConsumer;

    return-object p0
.end method

.method public b(Ljava/lang/Integer;)Lo/Qv;
    .locals 0

    .line 148
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 149
    invoke-super {p0, p1}, Lo/Qt;->d(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public b(Lo/BiConsumer$Activity;)Lo/Qv;
    .locals 0

    .line 434
    invoke-super {p0, p1}, Lo/Qt;->c(Lo/BiConsumer$Activity;)Lo/BiConsumer;

    return-object p0
.end method

.method public synthetic b(ILjava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qv;->e(ILo/Qt$StateListAnimator;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p1, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qv;->e(Lo/Qt$StateListAnimator;I)V

    return-void
.end method

.method public b(Lo/Qt$StateListAnimator;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lo/Qt;->e(Lo/TimeUnit;)V

    .line 73
    iget-object v0, p0, Lo/Qv;->j:Lo/CipherInputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0, p1}, Lo/CipherInputStream;->c(Lo/BiConsumer;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public synthetic c(Ljava/lang/CharSequence;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/Qv;->b(Ljava/lang/CharSequence;)Lo/Qv;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Lo/BiConsumer$Activity;)Lo/BiConsumer;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lo/Qv;->b(Lo/BiConsumer$Activity;)Lo/Qv;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lo/Qv;
    .locals 0

    .line 191
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 192
    invoke-super {p0, p1}, Lo/Qt;->e(I)V

    return-object p0
.end method

.method public c(J)Lo/Qv;
    .locals 0

    .line 390
    invoke-super {p0, p1, p2}, Lo/Qt;->b(J)Lo/BiConsumer;

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Lo/Qv;
    .locals 0

    .line 180
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 181
    invoke-super {p0, p1}, Lo/Qt;->b(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V

    return-object p0
.end method

.method public c(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;)Lo/Qv;
    .locals 0

    .line 202
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 203
    iput-object p1, p0, Lo/Qt;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    return-object p0
.end method

.method public c(Lo/Tf;)Lo/Qv;
    .locals 0

    .line 245
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 246
    invoke-super {p0, p1}, Lo/Qt;->d(Lo/Tf;)V

    return-object p0
.end method

.method public synthetic c(FFIILo/TimeUnit;)V
    .locals 6

    .line 31
    move-object v5, p5

    check-cast v5, Lo/Qt$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Qv;->a(FFIILo/Qt$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(ILo/TimeUnit;)V
    .locals 0

    .line 31
    check-cast p2, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1, p2}, Lo/Qv;->e(ILo/Qt$StateListAnimator;)V

    return-void
.end method

.method public synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qv;->b(Lo/Qt$StateListAnimator;)V

    return-void
.end method

.method public d(J)Lo/Qv;
    .locals 0

    .line 379
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 380
    invoke-super {p0, p1, p2}, Lo/Qt;->h(J)V

    return-object p0
.end method

.method public d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Lo/Qv;
    .locals 0

    .line 169
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 170
    iput-object p1, p0, Lo/Qt;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    return-object p0
.end method

.method public synthetic d(FFIILjava/lang/Object;)V
    .locals 6

    .line 31
    move-object v5, p5

    check-cast v5, Lo/Qt$StateListAnimator;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lo/Qv;->a(FFIILo/Qt$StateListAnimator;)V

    return-void
.end method

.method public d(Lo/Consumer;Lo/Qt$StateListAnimator;I)V
    .locals 0

    return-void
.end method

.method public e(J)Lo/Qv;
    .locals 0

    .line 159
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 160
    invoke-super {p0, p1, p2}, Lo/Qt;->a(J)V

    return-object p0
.end method

.method public e(Landroid/view/View$OnLongClickListener;)Lo/Qv;
    .locals 0

    .line 296
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 297
    invoke-super {p0, p1}, Lo/Qt;->d(Landroid/view/View$OnLongClickListener;)V

    return-object p0
.end method

.method public e(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/Qv;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 138
    iput-object p1, p0, Lo/Qt;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    return-object p0
.end method

.method public e(Z)Lo/Qv;
    .locals 0

    .line 225
    invoke-virtual {p0}, Lo/Qv;->i()V

    .line 226
    invoke-super {p0, p1}, Lo/Qt;->b(Z)V

    return-object p0
.end method

.method public e(ILo/Qt$StateListAnimator;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lo/Qv;->h:Lo/CipherSpi;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0, p0, p2, p1}, Lo/CipherSpi;->a(Lo/BiConsumer;Ljava/lang/Object;I)V

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lo/Qt;->c(ILo/TimeUnit;)V

    return-void
.end method

.method public e(Lo/Qt$StateListAnimator;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/Qv;->g:Lo/AEADBadTagException;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p0, p1, p2}, Lo/AEADBadTagException;->c(Lo/BiConsumer;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public synthetic e(Lo/TimeUnit;)V
    .locals 0

    .line 31
    check-cast p1, Lo/Qt$StateListAnimator;

    invoke-virtual {p0, p1}, Lo/Qv;->b(Lo/Qt$StateListAnimator;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 495
    :cond_0
    instance-of v1, p1, Lo/Qv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 498
    :cond_1
    invoke-super {p0, p1}, Lo/Qt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 501
    :cond_2
    check-cast p1, Lo/Qv;

    .line 502
    iget-object v1, p0, Lo/Qv;->g:Lo/AEADBadTagException;

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lo/Qv;->g:Lo/AEADBadTagException;

    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eq v1, v3, :cond_5

    return v2

    .line 505
    :cond_5
    iget-object v1, p0, Lo/Qv;->j:Lo/CipherInputStream;

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p1, Lo/Qv;->j:Lo/CipherInputStream;

    if-nez v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    :goto_3
    if-eq v1, v3, :cond_8

    return v2

    .line 508
    :cond_8
    iget-object v1, p0, Lo/Qv;->h:Lo/CipherSpi;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    :goto_4
    iget-object v3, p1, Lo/Qv;->h:Lo/CipherSpi;

    if-nez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eq v1, v3, :cond_b

    return v2

    .line 511
    :cond_b
    iget-object v1, p0, Lo/Qv;->m:Lo/EncryptedPrivateKeyInfo;

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    iget-object v3, p1, Lo/Qv;->m:Lo/EncryptedPrivateKeyInfo;

    if-nez v3, :cond_d

    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eq v1, v3, :cond_e

    return v2

    .line 514
    :cond_e
    iget-object v1, p0, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    iget-object v3, p1, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_8

    :cond_f
    iget-object v1, p1, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eqz v1, :cond_10

    :goto_8
    return v2

    .line 517
    :cond_10
    invoke-virtual {p0}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_9

    :cond_11
    invoke-virtual {p1}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    :goto_9
    return v2

    .line 520
    :cond_12
    invoke-virtual {p0}, Lo/Qv;->m()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/Qv;->m()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13

    return v2

    .line 523
    :cond_13
    iget-object v1, p0, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    iget-object v3, p1, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_a

    :cond_14
    iget-object v1, p1, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eqz v1, :cond_15

    :goto_a
    return v2

    .line 526
    :cond_15
    invoke-virtual {p0}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_b

    :cond_16
    invoke-virtual {p1}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    if-eqz v1, :cond_17

    :goto_b
    return v2

    .line 529
    :cond_17
    invoke-virtual {p0}, Lo/Qv;->k()I

    move-result v1

    invoke-virtual {p1}, Lo/Qv;->k()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 532
    :cond_18
    iget-object v1, p0, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    iget-object v3, p1, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_c

    :cond_19
    iget-object v1, p1, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eqz v1, :cond_1a

    :goto_c
    return v2

    .line 535
    :cond_1a
    invoke-virtual {p0}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_d

    :cond_1b
    invoke-virtual {p1}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    if-eqz v1, :cond_1c

    :goto_d
    return v2

    .line 538
    :cond_1c
    invoke-virtual {p0}, Lo/Qv;->t()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qv;->t()Z

    move-result v3

    if-eq v1, v3, :cond_1d

    return v2

    .line 541
    :cond_1d
    invoke-virtual {p0}, Lo/Qv;->s()I

    move-result v1

    invoke-virtual {p1}, Lo/Qv;->s()I

    move-result v3

    if-eq v1, v3, :cond_1e

    return v2

    .line 544
    :cond_1e
    invoke-virtual {p0}, Lo/Qv;->r()Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lo/Qv;->r()Lo/Tf;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qv;->r()Lo/Tf;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/Tf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_e

    :cond_1f
    invoke-virtual {p1}, Lo/Qv;->r()Lo/Tf;

    move-result-object v1

    if-eqz v1, :cond_20

    :goto_e
    return v2

    .line 547
    :cond_20
    invoke-virtual {p0}, Lo/Qv;->q()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_f

    :cond_21
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {p1}, Lo/Qv;->q()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_22

    const/4 v3, 0x1

    goto :goto_10

    :cond_22
    const/4 v3, 0x0

    :goto_10
    if-eq v1, v3, :cond_23

    return v2

    .line 550
    :cond_23
    invoke-virtual {p0}, Lo/Qv;->p()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    if-nez v1, :cond_24

    const/4 v1, 0x1

    goto :goto_11

    :cond_24
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {p1}, Lo/Qv;->p()Landroid/view/View$OnLongClickListener;

    move-result-object v3

    if-nez v3, :cond_25

    const/4 v3, 0x1

    goto :goto_12

    :cond_25
    const/4 v3, 0x0

    :goto_12
    if-eq v1, v3, :cond_26

    return v2

    .line 553
    :cond_26
    invoke-virtual {p0}, Lo/Qv;->w()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-nez v1, :cond_27

    const/4 v1, 0x1

    goto :goto_13

    :cond_27
    const/4 v1, 0x0

    :goto_13
    invoke-virtual {p1}, Lo/Qv;->w()Landroid/view/View$OnClickListener;

    move-result-object v3

    if-nez v3, :cond_28

    const/4 v3, 0x1

    goto :goto_14

    :cond_28
    const/4 v3, 0x0

    :goto_14
    if-eq v1, v3, :cond_29

    return v2

    .line 556
    :cond_29
    invoke-virtual {p0}, Lo/Qv;->I()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qv;->I()Z

    move-result v3

    if-eq v1, v3, :cond_2a

    return v2

    .line 559
    :cond_2a
    invoke-virtual {p0}, Lo/Qv;->F()Z

    move-result v1

    invoke-virtual {p1}, Lo/Qv;->F()Z

    move-result v3

    if-eq v1, v3, :cond_2b

    return v2

    .line 562
    :cond_2b
    iget-object v1, p0, Lo/Qv;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lo/Qv;->i:Ljava/lang/CharSequence;

    iget-object v3, p1, Lo/Qv;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_15

    :cond_2c
    iget-object v1, p1, Lo/Qv;->i:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2d

    :goto_15
    return v2

    .line 565
    :cond_2d
    invoke-virtual {p0}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_16

    :cond_2e
    invoke-virtual {p1}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    :goto_16
    return v2

    .line 568
    :cond_2f
    invoke-virtual {p0}, Lo/Qv;->C()J

    move-result-wide v3

    invoke-virtual {p1}, Lo/Qv;->C()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public h(I)Lo/Qv;
    .locals 0

    .line 427
    invoke-super {p0, p1}, Lo/Qt;->a(I)Lo/BiConsumer;

    return-object p0
.end method

.method public hashCode()I
    .locals 8

    .line 576
    invoke-super {p0}, Lo/Qt;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 577
    iget-object v1, p0, Lo/Qv;->g:Lo/AEADBadTagException;

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

    .line 578
    iget-object v1, p0, Lo/Qv;->j:Lo/CipherInputStream;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 579
    iget-object v1, p0, Lo/Qv;->h:Lo/CipherSpi;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 580
    iget-object v1, p0, Lo/Qv;->m:Lo/EncryptedPrivateKeyInfo;

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 581
    iget-object v1, p0, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 582
    invoke-virtual {p0}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 583
    invoke-virtual {p0}, Lo/Qv;->m()J

    move-result-wide v4

    invoke-virtual {p0}, Lo/Qv;->m()J

    move-result-wide v6

    const/16 v1, 0x20

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    long-to-int v5, v4

    add-int/2addr v0, v5

    mul-int/lit8 v0, v0, 0x1f

    .line 584
    iget-object v4, p0, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->hashCode()I

    move-result v4

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    :goto_6
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 585
    invoke-virtual {p0}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->hashCode()I

    move-result v4

    goto :goto_7

    :cond_7
    const/4 v4, 0x0

    :goto_7
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 586
    invoke-virtual {p0}, Lo/Qv;->k()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 587
    iget-object v4, p0, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->hashCode()I

    move-result v4

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 588
    invoke-virtual {p0}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->hashCode()I

    move-result v4

    goto :goto_9

    :cond_9
    const/4 v4, 0x0

    :goto_9
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 589
    invoke-virtual {p0}, Lo/Qv;->t()Z

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 590
    invoke-virtual {p0}, Lo/Qv;->s()I

    move-result v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 591
    invoke-virtual {p0}, Lo/Qv;->r()Lo/Tf;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lo/Qv;->r()Lo/Tf;

    move-result-object v4

    invoke-virtual {v4}, Lo/Tf;->hashCode()I

    move-result v4

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 592
    invoke-virtual {p0}, Lo/Qv;->q()Landroid/view/View$OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    goto :goto_b

    :cond_b
    const/4 v4, 0x0

    :goto_b
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 593
    invoke-virtual {p0}, Lo/Qv;->p()Landroid/view/View$OnLongClickListener;

    move-result-object v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    goto :goto_c

    :cond_c
    const/4 v4, 0x0

    :goto_c
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    .line 594
    invoke-virtual {p0}, Lo/Qv;->w()Landroid/view/View$OnClickListener;

    move-result-object v4

    if-eqz v4, :cond_d

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 595
    invoke-virtual {p0}, Lo/Qv;->I()Z

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 596
    invoke-virtual {p0}, Lo/Qv;->F()Z

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 597
    iget-object v2, p0, Lo/Qv;->i:Ljava/lang/CharSequence;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lo/Qv;->i:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 598
    invoke-virtual {p0}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_f
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    .line 599
    invoke-virtual {p0}, Lo/Qv;->C()J

    move-result-wide v2

    invoke-virtual {p0}, Lo/Qv;->C()J

    move-result-wide v4

    ushr-long/2addr v4, v1

    xor-long v1, v2, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method protected synthetic n()Lo/TimeUnit;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lo/Qv;->v()Lo/Qt$StateListAnimator;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadedEpisodeModel_{watchState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qv;->a:Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", watchProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p0}, Lo/Qv;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiringInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {p0}, Lo/Qv;->m()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qv;->b:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {p0}, Lo/Qv;->o()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {p0}, Lo/Qv;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadButtonState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qv;->c:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingInfoHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {p0}, Lo/Qv;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {p0}, Lo/Qv;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", episodeCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    invoke-virtual {p0}, Lo/Qv;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {p0}, Lo/Qv;->r()Lo/Tf;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {p0}, Lo/Qv;->q()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    invoke-virtual {p0}, Lo/Qv;->p()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expandClickListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {p0}, Lo/Qv;->w()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {p0}, Lo/Qv;->I()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {p0}, Lo/Qv;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Qv;->i:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boxShotUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {p0}, Lo/Qv;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {p0}, Lo/Qv;->C()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-super {p0}, Lo/Qt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected v()Lo/Qt$StateListAnimator;
    .locals 1

    .line 458
    new-instance v0, Lo/Qt$StateListAnimator;

    invoke-direct {v0}, Lo/Qt$StateListAnimator;-><init>()V

    return-object v0
.end method

.method public x()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;
    .locals 1

    .line 221
    invoke-super {p0}, Lo/Qt;->l()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 1

    .line 341
    invoke-super {p0}, Lo/Qt;->I()Z

    move-result v0

    return v0
.end method
