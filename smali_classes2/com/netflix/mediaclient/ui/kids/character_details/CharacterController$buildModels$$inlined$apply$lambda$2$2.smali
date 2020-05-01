.class final Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->c(Lo/AU;Lo/Bc;Lo/AR;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;

.field final synthetic c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

.field final synthetic d:Lo/AR;


# direct methods
.method constructor <init>(Lo/AR;ILcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->d:Lo/AR;

    iput p2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->a:I

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 127
    iget-object p1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;

    iget-object p1, p1, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2;->b:Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->c:Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->d:Lo/AR;

    iget v2, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;->b(Lo/AR;I)Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController$buildModels$$inlined$apply$lambda$2$2;->d:Lo/AR;

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;->access$showVideoDetails(Lcom/netflix/mediaclient/ui/kids/character_details/CharacterController;Lcom/netflix/mediaclient/ui/trackinginfo/TrackingInfoHolder;Lo/AR;)V

    return-void
.end method
