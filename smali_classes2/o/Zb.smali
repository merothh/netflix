.class public Lo/Zb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Application;


# instance fields
.field private final d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Zb;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;

    return-void
.end method


# virtual methods
.method public d(Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V
    .locals 1

    iget-object v0, p0, Lo/Zb;->d:Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;

    invoke-static {v0, p1, p2}, Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;->c(Lcom/netflix/mediaclient/ui/profiles/ProfileSelectionActivity$8;Lcom/netflix/mediaclient/servicemgr/InteractiveTrackerInterface$Reason;Ljava/util/Collection;)V

    return-void
.end method
