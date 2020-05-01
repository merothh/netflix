.class public final Lo/UW$Fragment;
.super Lo/UW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fragment"
.end annotation


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, v0}, Lo/UW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UW$Fragment;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;
    .locals 1

    .line 152
    iget-object v0, p0, Lo/UW$Fragment;->d:Lcom/netflix/mediaclient/ui/player/v2/uiView/IPlayerSkipCreditsUIView$SkipCreditsType;

    return-object v0
.end method
