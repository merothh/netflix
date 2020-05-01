.class public final Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;
.super Lo/cq;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->c(Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;Ljava/util/ArrayList;Ljava/lang/String;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;)Lo/FillResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

.field final synthetic b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

.field final synthetic e:Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->e:Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->a:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    .line 109
    invoke-direct {p0}, Lo/cq;-><init>()V

    return-void
.end method


# virtual methods
.method public e(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    const-string p1, "res"

    invoke-static {p2, p1}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object p1, Lo/Ws;->a:Lo/Ws$ActionBar;

    check-cast p1, Lo/MessagePdu;

    .line 112
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    invoke-static {p1}, Lo/Ws;->b(Lo/Ws;)Lo/KeyChainProtectionParams;

    move-result-object p1

    .line 113
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lo/KeyChainProtectionParams;

    invoke-static {p2, v1}, Lo/Ws;->e(Lo/Ws;Lo/KeyChainProtectionParams;)V

    if-eqz p1, :cond_0

    .line 115
    sget-object p2, Lo/Ws;->a:Lo/Ws$ActionBar;

    check-cast p2, Lo/MessagePdu;

    .line 116
    iget-object p2, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    iget-object p2, p2, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    invoke-static {p2}, Lo/Ws;->c(Lo/Ws;)Lo/Zx;

    move-result-object p2

    invoke-virtual {p2}, Lo/Zx;->f()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/hW;

    if-eqz p2, :cond_0

    .line 117
    check-cast p1, Lo/SettingsValidators;

    .line 118
    new-instance v1, Lo/Ws$Application;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->e:Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->a:Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;

    invoke-direct {v1, v2, v3, v4}, Lo/Ws$Application;-><init>(Lo/Ws;Lcom/netflix/model/leafs/originals/interactive/condition/Snapshots;Lcom/netflix/model/leafs/originals/interactive/condition/StateHistory;)V

    check-cast v1, Lo/ci;

    .line 116
    invoke-interface {p2, p1, v1}, Lo/hW;->d(Lo/SettingsValidators;Lo/ci;)V

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/player/v2/repository/interactive/InteractiveMomentsRepository$logInteractiveImpressionData$2;->a:Lo/Ws;

    check-cast v0, Lo/FillResponse;

    invoke-static {p1, v0}, Lo/Ws;->a(Lo/Ws;Lo/FillResponse;)V

    return-void
.end method
