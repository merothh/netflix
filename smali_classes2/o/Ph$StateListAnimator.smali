.class public final Lo/Ph$StateListAnimator;
.super Lo/Ph;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final e:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;)V
    .locals 1

    const-string v0, "summary"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lo/Ph;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/Ph$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    return-void
.end method


# virtual methods
.method public final c()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/Ph$StateListAnimator;->e:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    return-object v0
.end method
