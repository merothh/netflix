.class public final Lo/EW$StateListAnimator;
.super Lo/EW;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/EW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;


# direct methods
.method public constructor <init>(Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;)V
    .locals 1

    const-string v0, "selectedTrack"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lo/EW;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/EW$StateListAnimator;->b:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;
    .locals 1

    .line 8
    iget-object v0, p0, Lo/EW$StateListAnimator;->b:Lcom/netflix/model/leafs/SupportedMediaTracks$Properties;

    return-object v0
.end method
