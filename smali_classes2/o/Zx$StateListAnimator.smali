.class public final Lo/Zx$StateListAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Zx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StateListAnimator"
.end annotation


# instance fields
.field private final b:Lcom/netflix/mediaclient/android/app/Status;

.field private d:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/Zx$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    iput-object p2, p0, Lo/Zx$StateListAnimator;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-void
.end method


# virtual methods
.method public final a()Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Zx$StateListAnimator;->d:Lcom/netflix/mediaclient/servicemgr/interface_/NotificationSummaryItem;

    return-object v0
.end method

.method public final b()Lcom/netflix/mediaclient/android/app/Status;
    .locals 1

    .line 31
    iget-object v0, p0, Lo/Zx$StateListAnimator;->b:Lcom/netflix/mediaclient/android/app/Status;

    return-object v0
.end method
