.class Lo/uO$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/uO;->b(Lcom/netflix/mediaclient/servicemgr/interface_/player/playlist/PlaylistMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/uO$TaskDescription;

.field final synthetic b:Lo/uO;


# direct methods
.method constructor <init>(Lo/uO;Lo/uO$TaskDescription;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lo/uO$4;->b:Lo/uO;

    iput-object p2, p0, Lo/uO$4;->a:Lo/uO$TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 1

    .line 332
    iget-object p2, p0, Lo/uO$4;->b:Lo/uO;

    iget-object v0, p0, Lo/uO$4;->a:Lo/uO$TaskDescription;

    invoke-static {p2, v0, p1}, Lo/uO;->e(Lo/uO;Lo/uO$TaskDescription;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
