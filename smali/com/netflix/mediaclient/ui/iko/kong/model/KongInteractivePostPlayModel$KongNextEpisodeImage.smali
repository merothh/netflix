.class public Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;
.super Ljava/lang/Object;
.source "KongInteractivePostPlayModel.java"


# instance fields
.field public interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterestingMomentStill()Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;
    .locals 1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "KongNextEpisodeImage{interestingMomentStill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongNextEpisodeImage;->interestingMomentStill:Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel$KongImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
