.class Lo/CT$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CT;->e(Landroid/view/View;Lcom/netflix/mediaclient/media/Language;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/media/Language;

.field final synthetic d:Lo/CT$ActionBar;

.field final synthetic e:Lo/CT;


# direct methods
.method constructor <init>(Lo/CT;Lo/CT$ActionBar;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lo/CT$1;->e:Lo/CT;

    iput-object p2, p0, Lo/CT$1;->d:Lo/CT$ActionBar;

    iput-object p3, p0, Lo/CT$1;->b:Lcom/netflix/mediaclient/media/Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    iget-object p1, p0, Lo/CT$1;->d:Lo/CT$ActionBar;

    invoke-virtual {p1, p3}, Lo/CT$ActionBar;->e(I)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p1

    .line 159
    iget-object p2, p0, Lo/CT$1;->b:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    move-result-object p2

    const-string p3, "nf_language_selector"

    if-eq p2, p1, :cond_0

    .line 161
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p4, Lcom/netflix/cl/model/event/session/Focus;

    sget-object p5, Lcom/netflix/cl/model/AppView;->audioSubtitlesSelector:Lcom/netflix/cl/model/AppView;

    const/4 v0, 0x0

    invoke-direct {p4, p5, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p5, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-interface {p1}, Lcom/netflix/mediaclient/media/subtitles/Subtitle;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p5, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    const-string p2, "Subtitle is changed, refresh subtitle list view"

    .line 162
    invoke-static {p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object p2, p0, Lo/CT$1;->b:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/media/Language;->setSelectedSubtitle(Lcom/netflix/mediaclient/media/subtitles/Subtitle;)Lcom/netflix/mediaclient/media/subtitles/Subtitle;

    .line 164
    iget-object p1, p0, Lo/CT$1;->d:Lo/CT$ActionBar;

    invoke-virtual {p1}, Lo/CT$ActionBar;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const-string p1, "Subtitle is not changed, do not refresh"

    .line 166
    invoke-static {p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
