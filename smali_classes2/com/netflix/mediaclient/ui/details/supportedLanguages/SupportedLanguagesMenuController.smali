.class public final Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;
.super Lcom/netflix/android/widgetry/widget/menu/MenuController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Application;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/widget/menu/MenuController<",
        "Lo/EW;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Application;

.field private static final NO_SELECTION:Ljava/lang/String; = ""


# instance fields
.field private selectedAudioTrackId:Ljava/lang/String;

.field private selectedSubtitleTrackId:Ljava/lang/String;

.field private final supportedMediaTracks:Lcom/netflix/model/leafs/SupportedMediaTracks;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Application;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Application;-><init>(Lo/amc;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->Companion:Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Application;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/model/leafs/SupportedMediaTracks;)V
    .locals 2

    const-string v0, "supportedMediaTracks"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 12
    invoke-direct {p0, v0, v1, v0}, Lcom/netflix/android/widgetry/widget/menu/MenuController;-><init>(Ljava/lang/CharSequence;ILo/amc;)V

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->supportedMediaTracks:Lcom/netflix/model/leafs/SupportedMediaTracks;

    const-string p1, ""

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedAudioTrackId:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedSubtitleTrackId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getSelectedAudioTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedAudioTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSelectedSubtitleTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)Ljava/lang/String;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedSubtitleTrackId:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setSelectedAudioTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedAudioTrackId:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSelectedSubtitleTrackId$p(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedSubtitleTrackId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFooters()V
    .locals 0

    return-void
.end method

.method public addHeaders()V
    .locals 0

    return-void
.end method

.method public addItems()V
    .locals 7

    .line 92
    new-instance v0, Lo/EY;

    invoke-direct {v0}, Lo/EY;-><init>()V

    .line 96
    move-object v1, v0

    check-cast v1, Lo/Fa;

    const-string v2, "audio_subheader"

    .line 27
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Fa;->b(Ljava/lang/CharSequence;)Lo/Fa;

    .line 28
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 97
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 28
    sget v4, Lcom/netflix/mediaclient/ui/R$AssistContent;->el:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Fa;->e(Ljava/lang/CharSequence;)Lo/Fa;

    const/4 v2, 0x1

    .line 29
    invoke-interface {v1, v2}, Lo/Fa;->a(Z)Lo/Fa;

    .line 30
    new-instance v2, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$ActionBar;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$ActionBar;-><init>(Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-interface {v1, v2}, Lo/Fa;->b(Landroid/view/View$OnClickListener;)Lo/Fa;

    .line 95
    invoke-virtual {v0, p0}, Lo/EY;->a(Lo/OfPrimitive;)V

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->supportedMediaTracks:Lcom/netflix/model/leafs/SupportedMediaTracks;

    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getAudioTracks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    .line 36
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getId()Ljava/lang/String;

    move-result-object v2

    .line 102
    new-instance v4, Lo/EU;

    invoke-direct {v4}, Lo/EU;-><init>()V

    .line 106
    move-object v5, v4

    check-cast v5, Lo/EV;

    .line 38
    move-object v6, v2

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lo/EV;->a(Ljava/lang/CharSequence;)Lo/EV;

    .line 39
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getLanguageName()Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v5, v6}, Lo/EV;->d(Ljava/lang/CharSequence;)Lo/EV;

    .line 40
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v6

    invoke-interface {v5, v6}, Lo/EV;->a(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)Lo/EV;

    .line 41
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedAudioTrackId:Ljava/lang/String;

    invoke-static {v2, v6}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v5, v6}, Lo/EV;->b(Z)Lo/EV;

    .line 42
    new-instance v6, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Activity;

    invoke-direct {v6, v2, v1, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$Activity;-><init>(Ljava/lang/String;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)V

    check-cast v6, Landroid/view/View$OnClickListener;

    invoke-interface {v5, v6}, Lo/EV;->d(Landroid/view/View$OnClickListener;)Lo/EV;

    .line 105
    invoke-virtual {v4, p0}, Lo/EU;->a(Lo/OfPrimitive;)V

    goto :goto_1

    .line 111
    :cond_1
    new-instance v0, Lo/EY;

    invoke-direct {v0}, Lo/EY;-><init>()V

    .line 115
    move-object v1, v0

    check-cast v1, Lo/Fa;

    const-string v2, "subtitles_subheader"

    .line 59
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Lo/Fa;->b(Ljava/lang/CharSequence;)Lo/Fa;

    .line 60
    sget-object v2, Lo/TextViewMetrics;->e:Lo/TextViewMetrics;

    .line 116
    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lo/TextViewMetrics;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 60
    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->kh:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v1, v3}, Lo/Fa;->e(Ljava/lang/CharSequence;)Lo/Fa;

    .line 114
    invoke-virtual {v0, p0}, Lo/EY;->a(Lo/OfPrimitive;)V

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->supportedMediaTracks:Lcom/netflix/model/leafs/SupportedMediaTracks;

    invoke-interface {v0}, Lcom/netflix/model/leafs/SupportedMediaTracks;->getSubtitleTracks()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 120
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    .line 63
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getId()Ljava/lang/String;

    move-result-object v2

    .line 121
    new-instance v3, Lo/EU;

    invoke-direct {v3}, Lo/EU;-><init>()V

    .line 125
    move-object v4, v3

    check-cast v4, Lo/EV;

    .line 65
    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/EV;->a(Ljava/lang/CharSequence;)Lo/EV;

    .line 66
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getLanguageName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lo/EV;->d(Ljava/lang/CharSequence;)Lo/EV;

    .line 67
    invoke-interface {v1}, Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;->getType()Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;

    move-result-object v5

    invoke-interface {v4, v5}, Lo/EV;->a(Lcom/netflix/model/leafs/SupportedMediaTracks$SupportedMediaTracksType;)Lo/EV;

    .line 68
    iget-object v5, p0, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;->selectedSubtitleTrackId:Ljava/lang/String;

    invoke-static {v2, v5}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v4, v5}, Lo/EV;->b(Z)Lo/EV;

    .line 69
    new-instance v5, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;

    invoke-direct {v5, v2, v1, p0}, Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController$StateListAnimator;-><init>(Ljava/lang/String;Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;Lcom/netflix/mediaclient/ui/details/supportedLanguages/SupportedLanguagesMenuController;)V

    check-cast v5, Landroid/view/View$OnClickListener;

    invoke-interface {v4, v5}, Lo/EV;->d(Landroid/view/View$OnClickListener;)Lo/EV;

    .line 124
    invoke-virtual {v3, p0}, Lo/EU;->a(Lo/OfPrimitive;)V

    goto :goto_2

    :cond_3
    return-void
.end method
