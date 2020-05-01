.class Lcom/netflix/mediaclient/ui/player/PostPlay$ActionBar;
.super Lo/zP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/player/PostPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionBar"
.end annotation


# instance fields
.field final synthetic b:Lcom/netflix/mediaclient/ui/player/PostPlay;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PostPlay;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlay$ActionBar;->b:Lcom/netflix/mediaclient/ui/player/PostPlay;

    const-string p1, "nf_postplay"

    .line 250
    invoke-direct {p0, p1}, Lo/zP;-><init>(Ljava/lang/String;)V

    return-void
.end method
