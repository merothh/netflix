.class public Lo/afA$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/afA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Language;)V
    .locals 2

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/afA$Activity;->a:J

    .line 387
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    .line 390
    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/AudioSource;->getTrackType()I

    move-result v0

    iput v0, p0, Lo/afA$Activity;->e:I

    goto :goto_0

    .line 392
    :cond_0
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v0

    const-string v1, "LanguageUtils: Selected audio is null."

    invoke-interface {v0, v1}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    .line 395
    :goto_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 397
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageCodeBcp47()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    .line 398
    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getTrackType()I

    move-result p1

    iput p1, p0, Lo/afA$Activity;->b:I

    goto :goto_1

    .line 400
    :cond_1
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object p1

    const-string v0, "LanguageUtils: Selected subtitle is null."

    invoke-interface {p1, v0}, Lo/SpinnerAdapter;->b(Ljava/lang/String;)V

    :goto_1
    return-void

    .line 382
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Selected language is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-static {p1}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Audio or subtitle must be selected!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 372
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/afA$Activity;->a:J

    .line 373
    iput-object p1, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    .line 374
    iput p2, p0, Lo/afA$Activity;->e:I

    .line 375
    iput-object p3, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    .line 376
    iput p4, p0, Lo/afA$Activity;->b:I

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "audioLanguageCodeBcp47"

    .line 410
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    const-string v0, "audioTrackType"

    .line 411
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/afA$Activity;->e:I

    const/4 v0, 0x0

    const-string v1, "subtitleLanguageCodeBcp47"

    .line 412
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "subtitleTrackType"

    .line 413
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lo/afA$Activity;->b:I

    const-string v0, "timestamp"

    .line 414
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/afA$Activity;->a:J

    return-void

    .line 407
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "JSON is null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public b()Lorg/json/JSONObject;
    .locals 4

    .line 430
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 432
    iget-wide v1, p0, Lo/afA$Activity;->a:J

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 433
    iget-object v1, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    const-string v2, "audioLanguageCodeBcp47"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 434
    iget v1, p0, Lo/afA$Activity;->e:I

    const-string v2, "audioTrackType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 436
    iget-object v1, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    invoke-static {v1}, Lo/aev;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    const-string v2, "subtitleLanguageCodeBcp47"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 438
    iget v1, p0, Lo/afA$Activity;->b:I

    const-string v2, "subtitleTrackType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method

.method b(Ljava/lang/String;I)V
    .locals 0

    .line 450
    iput-object p1, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    .line 451
    iput p2, p0, Lo/afA$Activity;->b:I

    return-void
.end method

.method c(Ljava/lang/String;I)V
    .locals 0

    .line 445
    iput-object p1, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    .line 446
    iput p2, p0, Lo/afA$Activity;->e:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectedLanguage{timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/afA$Activity;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", audioLanguageCodeIso639_1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/afA$Activity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioTrackType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lo/afA$Activity;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subtitleLanguageCodeIso639_1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lo/afA$Activity;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", subtitleTrackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/afA$Activity;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
