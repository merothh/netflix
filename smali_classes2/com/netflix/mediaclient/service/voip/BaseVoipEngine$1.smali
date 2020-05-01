.class Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$1;->b:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method
