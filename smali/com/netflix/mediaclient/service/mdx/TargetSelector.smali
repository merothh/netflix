.class public Lcom/netflix/mediaclient/service/mdx/TargetSelector;
.super Ljava/lang/Object;
.source "TargetSelector.java"


# static fields
.field private static final MSG_NEW_TARGET_SELECTED:I = 0x2

.field private static final MSG_STICKINESS_TIMEOUT:I = 0x1

.field private static final MSG_TARGET_LASTSEEN_ACTIVE:I = 0x3

.field private static final MSG_TARGET_UPDATE_SELECTED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "nf_mdxTargetSelector"

.field private static final TARGET_STICKINESS_WINDOW:J = 0xc042c0L


# instance fields
.field private mCallback:Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentTarget:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mTaregtUuid:Ljava/lang/String;

.field private mTargetDialUuid:Ljava/lang/String;

.field private mTargetFriendlyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xc042c0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCallback:Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/mdx/TargetSelector$1;-><init>(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "mdx_target_lastactive"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 79
    sub-long v0, v2, v0

    .line 80
    cmp-long v2, v0, v6

    if-lez v2, :cond_1

    .line 81
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCallback:Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTaregtUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetDialUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetFriendlyName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;->onTargetSelectorLoaded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, "nf_mdxTargetSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetSelector: init complete.  mCurrentTarget is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTaregtUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetDialUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void

    .line 83
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mdx_target_uuid"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mdx_selected_uuid"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTaregtUuid:Ljava/lang/String;

    .line 85
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mdx_selected_dialuuid"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetDialUuid:Ljava/lang/String;

    .line 86
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "mdx_selected_fname"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetFriendlyName:Ljava/lang/String;

    .line 87
    sub-long v0, v6, v0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->startCountDown(J)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCallback:Lcom/netflix/mediaclient/service/mdx/TargetSelector$TargetSelectorInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTaregtUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetDialUuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/mdx/TargetSelector;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method private startCountDown(J)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 126
    const-string/jumbo v0, "nf_mdxTargetSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetSelector: startCountDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    return-void
.end method


# virtual methods
.method public getCurrentTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    return-object v0
.end method

.method public selectNewTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTaregtUuid:Ljava/lang/String;

    .line 97
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetDialUuid:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetFriendlyName:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    const-wide/32 v0, 0xc042c0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->startCountDown(J)V

    goto :goto_0
.end method

.method public targetBecomeActive(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    return-void
.end method

.method public targetBecomeInactive(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 120
    const-wide/32 v0, 0xc042c0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->startCountDown(J)V

    .line 121
    return-void
.end method

.method public updateSelectedTarget(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mCurrentTarget:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTaregtUuid:Ljava/lang/String;

    .line 109
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetDialUuid:Ljava/lang/String;

    .line 110
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mTargetFriendlyName:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/TargetSelector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    return-void
.end method
