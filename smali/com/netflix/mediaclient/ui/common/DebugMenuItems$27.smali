.class Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;
.super Ljava/lang/Object;
.source "DebugMenuItems.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)V
    .locals 0

    iput-object p1, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5

    const v4, 0x7f040013

    const/high16 v3, 0x40400000    # 3.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/model/leafs/advisory/ProductPlacementAdvisory;

    invoke-direct {v1}, Lcom/netflix/model/leafs/advisory/ProductPlacementAdvisory;-><init>()V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->make(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    const-string/jumbo v1, "This is the main message!"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    const-string/jumbo v1, "This is the secondary message!!!"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withSecondaryMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withDelay(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->forDuration(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withAnimation(I)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->show()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;

    invoke-direct {v1}, Lcom/netflix/model/leafs/advisory/ExpiringContentAdvisory;-><init>()V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->make(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    const-string/jumbo v1, "This is the main message2! This is the main message2!"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    const-string/jumbo v1, "This is the secondary message2!!! This is the secondary message2!!! "

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withSecondaryMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withDelay(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->forDuration(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withAnimation(I)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->show()V

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/common/DebugMenuItems$27;->this$0:Lcom/netflix/mediaclient/ui/common/DebugMenuItems;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/common/DebugMenuItems;->access$000(Lcom/netflix/mediaclient/ui/common/DebugMenuItems;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    new-instance v1, Lcom/netflix/model/leafs/advisory/ContentAdvisory;

    invoke-direct {v1}, Lcom/netflix/model/leafs/advisory/ContentAdvisory;-><init>()V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->make(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/model/leafs/advisory/Advisory;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    const-string/jumbo v1, "This is the main message3!"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    const-string/jumbo v1, "This is the secondary message3!!!"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withSecondaryMessage(Ljava/lang/String;)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withDelay(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->forDuration(F)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->withAnimation(I)Lcom/netflix/mediaclient/android/widget/advisor/Advisor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/advisor/Advisor;->show()V

    const/4 v0, 0x1

    return v0
.end method
