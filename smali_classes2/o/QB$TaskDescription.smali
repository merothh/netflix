.class public final Lo/QB$TaskDescription;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/QB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskDescription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "DownloadedVideoModel"

    .line 48
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lo/QB$TaskDescription;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;JLcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;I)Ljava/lang/CharSequence;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadState"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "watchState"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->p:I

    .line 114
    sget-object v1, Lo/QC;->e:[I

    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 175
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    .line 176
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Wrong DownloadState (="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    return-object v3

    .line 169
    :pswitch_0
    invoke-static {p1}, Lo/RL;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 126
    :pswitch_1
    sget-object p2, Lo/QC;->c:[I

    invoke-virtual {p3}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_2

    .line 162
    :pswitch_2
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    .line 163
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nE:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    .line 157
    :pswitch_3
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nF:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 158
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    goto/16 :goto_3

    :pswitch_4
    const-wide/16 p2, 0x0

    cmp-long p6, p4, p2

    if-lez p6, :cond_4

    .line 131
    sget-object p2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p6, 0x1

    invoke-virtual {p2, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    cmp-long v0, p4, p2

    if-lez v0, :cond_0

    .line 132
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nD:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 133
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p2, p4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 134
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 136
    :cond_0
    sget-object p2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p6, p7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    cmp-long p6, p4, p2

    if-lez p6, :cond_1

    .line 137
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nC:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 138
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide p3

    long-to-int p4, p3

    invoke-virtual {p2, p4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 139
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 142
    :cond_1
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nB:I

    invoke-static {p2}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p2

    .line 144
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide p3

    long-to-int p4, p3

    .line 143
    invoke-virtual {p2, p4}, Lo/VideoView2;->b(I)Lo/VideoView2;

    move-result-object p2

    .line 148
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 151
    :goto_0
    sget v0, Lcom/netflix/mediaclient/ui/R$Application;->A:I

    goto :goto_3

    :pswitch_5
    const/4 p2, 0x1

    if-eqz p6, :cond_2

    .line 117
    invoke-virtual {p6}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->d()Z

    move-result p3

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_4

    if-lez p7, :cond_3

    .line 121
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nH:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 122
    :cond_3
    invoke-static {p1}, Lo/RL;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    :goto_2
    :pswitch_6
    const-string p2, ""

    goto :goto_3

    .line 115
    :pswitch_7
    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->nz:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_5

    .line 182
    new-instance p3, Landroid/text/SpannableString;

    move-object p4, p2

    check-cast p4, Ljava/lang/CharSequence;

    invoke-direct {p3, p4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 184
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p1, v0}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {p4, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 186
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x21

    .line 183
    invoke-virtual {p3, p4, v2, p1, p2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 189
    move-object v3, p3

    check-cast v3, Ljava/lang/CharSequence;

    :cond_5
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public final d(Ljava/lang/String;Lo/Bi;Lo/Tf;Ljava/lang/Integer;Lo/Yf;)Lo/QD;
    .locals 10

    const-string v0, "modelId"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineViewData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "video"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presentationTracking"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lo/QD;

    invoke-direct {v0}, Lo/QD;-><init>()V

    .line 62
    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object v1

    const-string v2, "video.playable"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lo/QD;->b(Ljava/lang/CharSequence;)Lo/QD;

    .line 65
    invoke-virtual {p3}, Lo/Tf;->as()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->a(Ljava/lang/String;)Lo/QD;

    .line 66
    invoke-interface {v1}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->d(Ljava/lang/String;)Lo/QD;

    .line 67
    invoke-virtual {p3}, Lo/Tf;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->e(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Lo/QD;

    .line 68
    invoke-virtual {p3}, Lo/Tf;->getTitle()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lo/QD;->a(Ljava/lang/CharSequence;)Lo/QD;

    .line 69
    invoke-interface {v1}, Lo/AK;->S()I

    move-result v3

    invoke-virtual {v0, v3}, Lo/QD;->i(I)Lo/QD;

    .line 70
    invoke-virtual {p3}, Lo/Tf;->aQ()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lo/QD;->d(Ljava/lang/CharSequence;)Lo/QD;

    .line 71
    invoke-virtual {p3}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 72
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "realmHorzDispUrl for video movie? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object v5

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lo/AK;->Q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object v6

    invoke-static {v6, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lo/AK;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lo/SpinnerAdapter;->a(Ljava/lang/String;)V

    .line 74
    :cond_0
    invoke-virtual {p3}, Lo/Tf;->at()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->b(Ljava/lang/String;)Lo/QD;

    .line 76
    invoke-interface {p2}, Lo/Bi;->s()Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/WatchState;)Lo/QD;

    .line 77
    invoke-virtual {v0, p4}, Lo/QD;->a(Ljava/lang/Integer;)Lo/QD;

    .line 78
    invoke-interface {p2}, Lo/Bi;->z()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lo/QD;->d(J)Lo/QD;

    .line 79
    invoke-interface {p2}, Lo/Bi;->v()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->c(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;)Lo/QD;

    .line 80
    invoke-interface {p2}, Lo/Bi;->y()Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/QD;->d(Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)Lo/QD;

    .line 81
    invoke-interface {p2}, Lo/Bi;->p()I

    move-result v3

    invoke-virtual {v0, v3}, Lo/QD;->h(I)Lo/QD;

    .line 83
    new-instance v3, Lo/QB$TaskDescription$TaskDescription;

    move-object v4, v3

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lo/QB$TaskDescription$TaskDescription;-><init>(Lo/Tf;Ljava/lang/String;Lo/Bi;Ljava/lang/Integer;Lo/Yf;)V

    check-cast v3, Lo/EncryptedPrivateKeyInfo;

    invoke-virtual {v0, v3}, Lo/QD;->c(Lo/EncryptedPrivateKeyInfo;)Lo/QD;

    .line 90
    check-cast v1, Lo/As;

    invoke-static {p2, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->b(Lo/Bi;Lo/As;)Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    move-result-object p1

    .line 89
    invoke-virtual {v0, p1}, Lo/QD;->c(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;)Lo/QD;

    .line 92
    invoke-interface {p2}, Lo/Bi;->x()J

    move-result-wide p4

    invoke-virtual {v0, p4, p5}, Lo/QD;->e(J)Lo/QD;

    .line 93
    invoke-virtual {v0}, Lo/QD;->w()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object p1

    sget-object p4, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne p1, p4, :cond_1

    .line 94
    invoke-virtual {p3}, Lo/Tf;->bb()Lo/AK;

    move-result-object p1

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lo/AK;->X()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/QD;->j(I)Lo/QD;

    .line 95
    invoke-virtual {p3}, Lo/Tf;->V()I

    move-result p1

    invoke-virtual {v0, p1}, Lo/QD;->f(I)Lo/QD;

    .line 96
    invoke-virtual {p3}, Lo/Tf;->ai()Z

    move-result p1

    invoke-virtual {v0, p1}, Lo/QD;->a(Z)Lo/QD;

    .line 98
    :cond_1
    invoke-static {p2}, Lo/RL;->b(Lo/Bi;)I

    move-result p1

    .line 99
    invoke-virtual {v0}, Lo/QD;->s()Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p2, p3, p1}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->e(Lo/Bi;Lo/Tf;Ljava/lang/Integer;)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/QD;->e(Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)Lo/QD;

    return-object v0
.end method
