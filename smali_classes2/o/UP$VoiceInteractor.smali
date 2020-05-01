.class public final Lo/UP$VoiceInteractor;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceInteractor"
.end annotation


# instance fields
.field private final a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;)V
    .locals 1

    const-string v0, "currentPlaylistTimestamp"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$VoiceInteractor;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    return-void
.end method


# virtual methods
.method public final b()Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;
    .locals 1

    .line 173
    iget-object v0, p0, Lo/UP$VoiceInteractor;->a:Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistTimestamp;

    return-object v0
.end method
