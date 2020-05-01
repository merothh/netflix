.class final Lo/Uy$4;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Uy;->c(Lcom/netflix/mediaclient/ui/player/IPlayerFragment;Lcom/netflix/mediaclient/servicemgr/IPlayer$Application;)Lo/hR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/adM;


# direct methods
.method constructor <init>(Lo/adM;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lo/Uy$4;->e:Lo/adM;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iget-object p2, p0, Lo/Uy$4;->e:Lo/adM;

    const-string v0, "https://help.netflix.com/support/14384"

    invoke-static {v0, p1}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/adM;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
