.class Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;
.super Ljava/lang/Object;
.source "RatingDialogFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/details/NetflixRatingBar$RatingBarDataProvider;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyed()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->access$300(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Z

    move-result v0

    return v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->access$200(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->access$000(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag$1;->this$0:Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;->access$100(Lcom/netflix/mediaclient/ui/common/RatingDialogFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    return-object v0
.end method
