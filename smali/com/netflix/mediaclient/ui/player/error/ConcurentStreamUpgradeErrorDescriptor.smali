.class Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;
.super Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;
.source "ConcurentStreamUpgradeErrorDescriptor.java"


# static fields
.field private static final US_LOCALE:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->US_LOCALE:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/error/ActionId3ErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    .line 30
    return-void
.end method

.method static synthetic access$000()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->US_LOCALE:Ljava/util/Locale;

    return-object v0
.end method

.method static build(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 49
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "nf_play_error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Original message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getReasonCode()I

    move-result v0

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    .line 95
    :goto_0
    return-object v6

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/media/NccpActionId;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->extractLink(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;

    move-result-object v1

    .line 61
    if-nez v1, :cond_2

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 63
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v1, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setMaxStreamsReachedDialogId(Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    invoke-direct {v1, p2, v2, v6, v0}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 65
    new-instance v6, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;

    invoke-direct {v6, v1}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    const-string/jumbo v2, "nf_play_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Link found: href="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_3
    iget-object v4, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->text:Ljava/lang/String;

    .line 74
    if-eqz v4, :cond_4

    const-string/jumbo v2, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    :cond_4
    const v2, 0x7f080127

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    :cond_5
    const v2, 0x7f080126

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string/jumbo v2, "nf_play_error"

    const-string/jumbo v3, "Check if link contains NCCP reason code"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    const-string/jumbo v3, "RC:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 81
    const-string/jumbo v2, "nf_play_error"

    const-string/jumbo v3, "NCCP reason code found"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->getErrorDescriptorForConcurrentStreamUpgradeWithNccpReasonCode(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v6, v0

    .line 90
    goto/16 :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "Failed to process upgrade with NCCP reason code, return generic action id 3 message"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    goto :goto_1

    .line 93
    :cond_6
    const-string/jumbo v2, "nf_play_error"

    const-string/jumbo v3, "NCCP reason code NOT found, treat it as path of URL"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setMaxStreamsReachedDialogId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->getErrorDescriptorForConcurrentStreamUpgradeRegular(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;

    move-result-object v6

    goto/16 :goto_0
.end method

.method private static extractLink(Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 241
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    const-string/jumbo v1, "nf_play_error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trimmed message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    sget-object v1, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;->US_LOCALE:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const-string/jumbo v1, "nf_play_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Lower case test message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1
    const-string/jumbo v1, "<a href=\""

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 253
    if-gez v3, :cond_2

    .line 254
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "Not a concurrent stream upgrade message"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-object v0

    .line 258
    :cond_2
    const-string/jumbo v1, "\""

    add-int/lit8 v4, v3, 0xa

    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 259
    if-gez v4, :cond_3

    .line 260
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "Not a concurrent stream upgrade message"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_3
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;

    invoke-direct {v1}, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;-><init>()V

    .line 265
    add-int/lit8 v5, v3, 0x9

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    .line 266
    const-string/jumbo v5, ">"

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 268
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 270
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 271
    const-string/jumbo v6, "nf_play_error"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "HREF extracted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string/jumbo v6, "nf_play_error"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Rest of message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_4
    const-string/jumbo v5, "</a>"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 277
    if-le v3, v2, :cond_5

    .line 278
    const-string/jumbo v1, "nf_play_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Closing </a> found before <a>!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " < "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :cond_5
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->text:Ljava/lang/String;

    .line 283
    add-int/lit8 v0, v2, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_9

    .line 284
    const-string/jumbo v0, ""

    .line 289
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    const-string/jumbo v2, "nf_play_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "TEXT extracted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const-string/jumbo v2, "nf_play_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rest of message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 297
    const-string/jumbo v2, "nf_play_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User message (part before link): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_7
    const-string/jumbo v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 302
    const-string/jumbo v0, "nf_play_error"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User message (part after link): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v0, v1

    .line 305
    goto/16 :goto_0

    .line 286
    :cond_9
    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private static getErrorDescriptorForConcurrentStreamUpgradeRegular(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;
    .locals 7

    .prologue
    .line 193
    new-instance v4, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;

    invoke-direct {v4, p1, p0}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$2;-><init>(Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 224
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setMaxStreamsReachedDialogId(Ljava/lang/String;)V

    .line 225
    new-instance v6, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 226
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 227
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    return-object v1
.end method

.method private static getErrorDescriptorForConcurrentStreamUpgradeWithNccpReasonCode(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string/jumbo v2, "nf_play_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Link found: href="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v2, p1, Lcom/netflix/mediaclient/ui/player/error/PlaybackErrorDescriptor$LinkTag;->href:Ljava/lang/String;

    const-string/jumbo v3, ";"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/StringUtils;->extractTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 119
    array-length v4, v2

    if-eq v4, v8, :cond_1

    .line 120
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "Problem with RC format! ; is missing!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    return-object v0

    .line 124
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    const-string/jumbo v4, "nf_play_error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HREF token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    aget-object v4, v2, v1

    const-string/jumbo v5, ":"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/util/StringUtils;->extractTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 130
    array-length v5, v4

    if-eq v5, v8, :cond_3

    .line 131
    const-string/jumbo v1, "nf_play_error"

    const-string/jumbo v2, "Problem with RC format!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    :cond_3
    const-string/jumbo v5, "RC"

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 135
    const-string/jumbo v2, "nf_play_error"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RC is NOT first element, but: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v1, v4, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    :cond_4
    const-string/jumbo v0, "RC"

    aget-object v4, v4, v7

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    aget-object v0, v2, v7

    .line 143
    const-string/jumbo v2, "&"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/StringUtils;->extractTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    const-string/jumbo v0, "nf_play_error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "# of parameters found in NCCP reason code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v0, v1

    .line 148
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_8

    .line 149
    aget-object v4, v2, v0

    const-string/jumbo v5, "="

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/util/StringUtils;->extractTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 150
    array-length v5, v4

    if-ne v5, v8, :cond_7

    .line 151
    aget-object v5, v4, v1

    aget-object v4, v4, v7

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_7
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 154
    const-string/jumbo v4, "nf_play_error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Parameter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " does not have proper format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Skipping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 160
    :cond_8
    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 161
    const-string/jumbo v0, "nf_play_error"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "JSON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_9
    new-instance v4, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;

    invoke-direct {v4, p0, v3}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor$1;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lorg/json/JSONObject;)V

    .line 174
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->maxStreamsReached:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->setMaxStreamsReachedDialogId(Ljava/lang/String;)V

    .line 175
    new-instance v6, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/netflix/mediaclient/service/error/action/ExitPlayerAction;-><init>(Landroid/app/Activity;)V

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$TwoButtonAlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 177
    new-instance v1, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/ui/player/error/ConcurentStreamUpgradeErrorDescriptor;-><init>(Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)V

    move-object v0, v1

    goto/16 :goto_0
.end method
