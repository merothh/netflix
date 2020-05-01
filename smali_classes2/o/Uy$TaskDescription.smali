.class Lo/Uy$TaskDescription;
.super Lo/hS;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Uy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TaskDescription"
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/player/IPlayerFragment;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lo/hS;-><init>(Landroid/content/Context;)V

    .line 154
    iput-object p2, p0, Lo/Uy$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 159
    iget-object v0, p0, Lo/Uy$TaskDescription;->d:Lcom/netflix/mediaclient/ui/player/IPlayerFragment;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/player/IPlayerFragment;->B()V

    return-void
.end method
