.class Lcom/netflix/msl/msg/MslControl$Dialog;
.super Lcom/netflix/msl/msg/MslControl$VoiceInteractor;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/msl/msg/MslControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Dialog"
.end annotation


# instance fields
.field public final b:Lo/ahO;


# direct methods
.method public constructor <init>(Lo/ahO;Lcom/netflix/msl/msg/MslControl$VoiceInteractor;)V
    .locals 2

    .line 1847
    iget-object v0, p2, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->e:Lo/ahM;

    iget-boolean p2, p2, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;->d:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/netflix/msl/msg/MslControl$VoiceInteractor;-><init>(Lo/ahM;ZLcom/netflix/msl/msg/MslControl$3;)V

    .line 1848
    iput-object p1, p0, Lcom/netflix/msl/msg/MslControl$Dialog;->b:Lo/ahO;

    return-void
.end method
