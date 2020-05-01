.class public Lo/CT$StateListAnimator;
.super Landroid/widget/BaseAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/media/Language;

.field private final e:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/media/Language;Landroid/app/Activity;)V
    .locals 0

    .line 274
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 275
    iput-object p1, p0, Lo/CT$StateListAnimator;->d:Lcom/netflix/mediaclient/media/Language;

    .line 276
    iput-object p2, p0, Lo/CT$StateListAnimator;->e:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 1

    .line 286
    iget-object v0, p0, Lo/CT$StateListAnimator;->d:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 281
    iget-object v0, p0, Lo/CT$StateListAnimator;->d:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getAltAudios()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 269
    invoke-virtual {p0, p1}, Lo/CT$StateListAnimator;->a(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 299
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio create row "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "nf_language_selector"

    invoke-static {v0, p2}, Lo/ChooserTargetService;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->ck:I

    .line 301
    iget-object v0, p0, Lo/CT$StateListAnimator;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 302
    new-instance p3, Lo/CT$Activity;

    invoke-direct {p3, p2}, Lo/CT$Activity;-><init>(Landroid/view/View;)V

    .line 303
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lo/CT$Activity;

    .line 307
    invoke-virtual {p0, p1}, Lo/CT$StateListAnimator;->a(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    .line 308
    iget-object v0, p0, Lo/CT$StateListAnimator;->d:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v0

    .line 309
    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/media/AudioSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 310
    iget-object v1, p3, Lo/CT$Activity;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescriptionDisplayLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object p1, p3, Lo/CT$Activity;->e:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-eqz v0, :cond_1

    .line 316
    iget-object p1, p3, Lo/CT$Activity;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->b(Landroid/widget/TextView;)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object p1, p3, Lo/CT$Activity;->b:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->e(Landroid/widget/TextView;)V

    :goto_0
    return-object p2
.end method
