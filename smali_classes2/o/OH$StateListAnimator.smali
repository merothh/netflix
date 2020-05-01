.class final Lo/OH$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/OH;->b(Landroid/view/View;Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/event/session/command/Command;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netflix/cl/model/TrackingInfo;

.field final synthetic b:Z

.field final synthetic e:Lcom/netflix/cl/model/event/session/command/Command;


# direct methods
.method constructor <init>(Lcom/netflix/cl/model/TrackingInfo;Lcom/netflix/cl/model/event/session/command/Command;Z)V
    .locals 0

    iput-object p1, p0, Lo/OH$StateListAnimator;->a:Lcom/netflix/cl/model/TrackingInfo;

    iput-object p2, p0, Lo/OH$StateListAnimator;->e:Lcom/netflix/cl/model/event/session/command/Command;

    iput-boolean p3, p0, Lo/OH$StateListAnimator;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p1, "motionEvent"

    .line 105
    invoke-static {p2, p1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 106
    sget-object p1, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->b:Lcom/netflix/mediaclient/ui/util/CLv2Utils;

    new-instance p2, Lcom/netflix/cl/model/event/session/Focus;

    sget-object v0, Lcom/netflix/cl/model/AppView;->notificationLandingItem:Lcom/netflix/cl/model/AppView;

    iget-object v1, p0, Lo/OH$StateListAnimator;->a:Lcom/netflix/cl/model/TrackingInfo;

    invoke-direct {p2, v0, v1}, Lcom/netflix/cl/model/event/session/Focus;-><init>(Lcom/netflix/cl/model/AppView;Lcom/netflix/cl/model/TrackingInfo;)V

    iget-object v0, p0, Lo/OH$StateListAnimator;->e:Lcom/netflix/cl/model/event/session/command/Command;

    iget-boolean v1, p0, Lo/OH$StateListAnimator;->b:Z

    invoke-virtual {p1, p2, v0, v1}, Lcom/netflix/mediaclient/ui/util/CLv2Utils;->d(Lcom/netflix/cl/model/event/session/Focus;Lcom/netflix/cl/model/event/session/command/Command;Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
