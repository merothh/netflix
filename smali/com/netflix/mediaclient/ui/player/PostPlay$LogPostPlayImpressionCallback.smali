.class Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "PostPlay.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 1

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$LogPostPlayImpressionCallback;->this$0:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const-string/jumbo v0, "nf_postplay"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onPostPlayImpressionLogged(ZLcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
