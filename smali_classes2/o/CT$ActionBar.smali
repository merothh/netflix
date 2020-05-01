.class public Lo/CT$ActionBar;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private final c:Lcom/netflix/mediaclient/media/Language;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 331
    iput-object p1, p0, Lo/CT$ActionBar;->c:Lcom/netflix/mediaclient/media/Language;

    .line 332
    iput-object p2, p0, Lo/CT$ActionBar;->e:Landroid/app/Activity;

    return-void
.end method

.method private c(Lcom/netflix/mediaclient/media/Language;ILcom/netflix/mediaclient/media/subtitles/Subtitle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    .line 408
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p2

    .line 409
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {v1, p2}, Lcom/netflix/mediaclient/media/AudioSource;->isAllowedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "nf_language_selector"

    const-string p2, "Selected subtitle is allowed"

    .line 412
    invoke-static {p1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 418
    :cond_1
    invoke-virtual {p1, p3}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public e(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;
    .locals 1

    .line 342
    iget-object v0, p0, Lo/CT$ActionBar;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 337
    iget-object v0, p0, Lo/CT$ActionBar;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getUsedSubtitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 325
    invoke-virtual {p0, p1}, Lo/CT$ActionBar;->e(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "nf_language_selector"

    if-nez p2, :cond_0

    .line 355
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtitle create row "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->ck:I

    .line 357
    iget-object v2, p0, Lo/CT$ActionBar;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 358
    new-instance p3, Lo/CT$Activity;

    invoke-direct {p3, p2}, Lo/CT$Activity;-><init>(Landroid/view/View;)V

    .line 359
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 362
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/CT$Activity;

    .line 363
    invoke-virtual {p0, p1}, Lo/CT$ActionBar;->e(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v2

    .line 364
    iget-object v3, p0, Lo/CT$ActionBar;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v3

    .line 365
    iget-object v4, p0, Lo/CT$ActionBar;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-direct {p0, v4, p1, v2}, Lo/CT$ActionBar;->c(Lcom/netflix/mediaclient/media/Language;ILcom/netflix/mediaclient/media/subtitles/Subtitle;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Previously selected subtitle is not allowed anymore, reset to first on list, reload seleted subtitle"

    .line 367
    invoke-static {v1, p1}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object p1, p0, Lo/CT$ActionBar;->c:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object v3

    :cond_1
    if-eqz v2, :cond_4

    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 376
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isCC()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Add CC"

    .line 377
    invoke-static {v1, v0}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lo/CT$ActionBar;->e:Landroid/app/Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->eF:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/aev;->c(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 380
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_3

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->isForcedNarrativeOrNone()Z

    move-result v0

    goto :goto_0

    .line 383
    :cond_4
    iget-object p1, p0, Lo/CT$ActionBar;->e:Landroid/app/Activity;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->hW:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez v3, :cond_5

    const/4 v0, 0x1

    .line 387
    :cond_5
    :goto_0
    iget-object v1, p3, Lo/CT$Activity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object p1, p3, Lo/CT$Activity;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v0, :cond_6

    .line 393
    iget-object p1, p3, Lo/CT$Activity;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/widget/TextView;)V

    goto :goto_1

    .line 396
    :cond_6
    iget-object p1, p3, Lo/CT$Activity;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/widget/TextView;)V

    :goto_1
    return-object p2
.end method
