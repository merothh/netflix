.class Lo/za$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/cV;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/za;->d(Lo/cV;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/cV;

.field final synthetic b:Lo/za;


# direct methods
.method constructor <init>(Lo/za;Lo/cV;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lo/za$2;->b:Lo/za;

    iput-object p2, p0, Lo/za$2;->a:Lo/cV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lo/za$2;->a:Lo/cV;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1, p2}, Lo/cV;->c(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;Lcom/netflix/mediaclient/android/app/Status;)V

    :cond_0
    return-void
.end method
