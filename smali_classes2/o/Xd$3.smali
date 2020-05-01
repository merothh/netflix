.class final Lo/Xd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Xd;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic d:Lo/Xd;


# direct methods
.method constructor <init>(Lo/Xd;)V
    .locals 0

    iput-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 25
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    invoke-static {p1}, Lo/Xd;->c(Lo/Xd;)Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    move-result-object p1

    sget-object v0, Lo/Xh;->e:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    new-instance v1, Lo/UU$IntentSender;

    invoke-static {p1}, Lo/Xd;->d(Lo/Xd;)I

    move-result v2

    invoke-direct {v1, v2}, Lo/UU$IntentSender;-><init>(I)V

    invoke-virtual {p1, v1}, Lo/Xd;->e(Ljava/lang/Object;)V

    .line 38
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    .line 39
    new-instance v1, Lcom/netflix/cl/model/event/session/Focus;

    .line 40
    sget-object v2, Lcom/netflix/cl/model/AppView;->skipContentButton:Lcom/netflix/cl/model/AppView;

    const/4 v3, 0x0

    .line 39
    invoke-direct {v1, v2, v3}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    .line 42
    new-instance v2, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;

    invoke-direct {v2}, Lcom/netflix/cl/model/event/session/command/SkipAheadCommand;-><init>()V

    check-cast v2, Lcom/netflix/cl/model/event/session/command/Command;

    .line 38
    invoke-virtual {p1, v1, v2}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;)V

    .line 44
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    invoke-virtual {p1}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->d(Z)V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    sget-object v1, Lo/UU$AssetManager;->d:Lo/UU$AssetManager;

    invoke-virtual {p1, v1}, Lo/Xd;->e(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    invoke-virtual {p1}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->d(Z)V

    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    sget-object v1, Lo/UU$PackageManager;->d:Lo/UU$PackageManager;

    invoke-virtual {p1, v1}, Lo/Xd;->e(Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lo/Xd$3;->d:Lo/Xd;

    invoke-virtual {p1}, Lo/Xd;->f()Lo/ExpandableListAdapter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/ExpandableListAdapter;->d(Z)V

    :goto_0
    return-void
.end method
