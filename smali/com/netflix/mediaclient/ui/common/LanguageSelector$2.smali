.class Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;
.super Ljava/lang/Object;
.source "LanguageSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field final synthetic val$language:Lcom/netflix/mediaclient/media/Language;

.field final synthetic val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/LanguageSelector;Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->this$0:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->getItem(I)Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/Log;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "nf_language_selector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Subtitle selected on position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v1

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "nf_language_selector"

    const-string/jumbo v2, "Subtitle is changed, refresh subtitle list view"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$language:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/Subtitle;)Lcom/netflix/mediaclient/media/Subtitle;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/LanguageSelector$2;->val$subtitleAdapter:Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector$SubtitleAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "nf_language_selector"

    const-string/jumbo v1, "Subtitle is not changed, do not refresh"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
