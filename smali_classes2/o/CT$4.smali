.class Lo/CT$4;
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
.field final synthetic b:Lo/CT$StateListAnimator;

.field final synthetic c:Lo/CT$ActionBar;

.field final synthetic d:Lcom/netflix/mediaclient/media/Language;

.field final synthetic e:Lo/CT;


# direct methods
.method constructor <init>(Lo/CT;Lo/CT$StateListAnimator;Lcom/netflix/mediaclient/media/Language;Lo/CT$ActionBar;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lo/CT$4;->e:Lo/CT;

    iput-object p2, p0, Lo/CT$4;->b:Lo/CT$StateListAnimator;

    iput-object p3, p0, Lo/CT$4;->d:Lcom/netflix/mediaclient/media/Language;

    iput-object p4, p0, Lo/CT$4;->c:Lo/CT$ActionBar;

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

    .line 134
    iget-object p1, p0, Lo/CT$4;->b:Lo/CT$StateListAnimator;

    invoke-virtual {p1, p3}, Lo/CT$StateListAnimator;->a(I)Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p1

    .line 138
    iget-object p2, p0, Lo/CT$4;->d:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object p2

    const-string p3, "nf_language_selector"

    if-eq p2, p1, :cond_0

    .line 140
    sget-object p2, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p4, Lcom/netflix/cl/model/event/session/Focus;

    sget-object p5, Lcom/netflix/cl/model/AppView;->audioSelector:Lcom/netflix/cl/model/AppView;

    const/4 v0, 0x0

    invoke-direct {p4, p5, v0}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    new-instance p5, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/AudioSource;->getLanguageDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Lcom/netflix/cl/model/event/session/command/ChangeValueCommand;-><init>(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p4, p5, v0}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    const-string p2, "Audio is changed, refresh both views"

    .line 141
    invoke-static {p3, p2}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p2, p0, Lo/CT$4;->d:Lcom/netflix/mediaclient/media/Language;

    invoke-virtual {p2, p1}, Lcom/netflix/mediaclient/media/Language;->setSelectedAudio(Lcom/netflix/mediaclient/media/AudioSource;)Lcom/netflix/mediaclient/media/AudioSource;

    .line 143
    iget-object p1, p0, Lo/CT$4;->b:Lo/CT$StateListAnimator;

    invoke-virtual {p1}, Lo/CT$StateListAnimator;->notifyDataSetChanged()V

    .line 144
    iget-object p1, p0, Lo/CT$4;->c:Lo/CT$ActionBar;

    invoke-virtual {p1}, Lo/CT$ActionBar;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    const-string p1, "Audio is not changed, do not refresh"

    .line 146
    invoke-static {p3, p1}, Lo/ChooserTargetService;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method