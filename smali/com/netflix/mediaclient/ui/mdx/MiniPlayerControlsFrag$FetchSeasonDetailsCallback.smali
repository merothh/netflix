.class Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$FetchSeasonDetailsCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "MiniPlayerControlsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)V
    .locals 1

    .prologue
    .line 1318
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$FetchSeasonDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    .line 1319
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    .line 1320
    return-void
.end method


# virtual methods
.method public onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1324
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onSeasonDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1325
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 1327
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    :goto_0
    return-void

    .line 1331
    :cond_0
    if-nez p1, :cond_1

    .line 1332
    const-string/jumbo v0, "MdxMiniPlayerFrag"

    const-string/jumbo v1, "Season is null, should NOT happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->isEpisodeReady:Z

    .line 1335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$FetchSeasonDetailsCallback;->this$0:Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$600(Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;)Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;

    move-result-object v0

    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag;->access$2100()Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/netflix/mediaclient/ui/mdx/MiniPlayerControlsFrag$SharedState;->controlsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxMiniPlayerViews;->setControlsEnabled(Z)V

    goto :goto_0

    .line 1334
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
